#!/usr/bin/env bash
# 
# Checks the hashes of all Git-tracked files in the current directory and subdirectories
# against their Git hashes. Supports both regular Git files and Git LFS files.
#

set -euo pipefail

# Colors for output
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
CYAN="\033[0;36m"
RESET="\033[0m"

# Check if inside a Git repository
if [ ! -d ".git" ]; then
    echo -e "${RED}This is not a Git repository. Please run this script inside one.${RESET}"
    exit 1
fi

# Check if Git LFS is installed
if git lfs version >/dev/null 2>&1; then
    git_lfs_installed=true
else
    git_lfs_installed=false
    echo -e "${YELLOW}Git LFS does not appear to be installed or configured in this repository.${RESET}"
fi

# Warn about unstaged changes
if [[ -n "$(git status --porcelain)" ]]; then
    echo -e "${YELLOW}Warning: There are unstaged changes in your repository.${RESET}"
    echo -e "${YELLOW}This might explain hash mismatches for non-LFS files.${RESET}"
    echo "----------------------------------------"
fi

# Function: check if file is an LFS pointer
is_lfs_file() {
    local file="$1"
    if git show "HEAD:$file" 2>/dev/null | grep -q "version https://git-lfs.github.com/spec/v"; then
        return 0
    else
        return 1
    fi
}

# Function: extract LFS pointer info (hash + size)
get_lfs_pointer_info() {
    local file="$1"
    local content
    content="$(git show "HEAD:$file" 2>/dev/null || true)"
    local hash size
    hash="$(echo "$content" | grep -oE 'oid sha256:[a-f0-9]{64}' | cut -d: -f2)"
    size="$(echo "$content" | grep -oE 'size [0-9]+' | awk '{print $2}')"
    echo "$hash $size"
}

# Function: compute Git-style SHA-1 hash
compute_git_hash() {
    local file="$1"
    local size
    size=$(stat -c %s "$file")
    {
        printf "blob %s\0" "$size"
        cat "$file"
    } | sha1sum | awk '{print $1}'
}

# Function: compute SHA-256 hash for LFS
compute_sha256() {
    sha256sum "$1" | awk '{print $1}'
}

# Main execution
files=$(git ls-files)
if [[ -z "$files" ]]; then
    echo "No Git-tracked files found in the current directory."
    exit 0
fi

echo "Checking hashes for Git-tracked files..."
echo "----------------------------------------"

mismatch_count=0
total_files=0
lfs_files=0
regular_files=0

while IFS= read -r file; do
    total_files=$((total_files + 1))
    if is_lfs_file "$file"; then
        lfs_files=$((lfs_files + 1))
        read -r expected_hash expected_size <<<"$(get_lfs_pointer_info "$file")"
        current_hash=$(compute_sha256 "$file" 2>/dev/null || echo "")
        actual_size=$(stat -c %s "$file" 2>/dev/null || echo "0")

        if [[ -z "$current_hash" ]]; then
            mismatch_count=$((mismatch_count + 1))
            echo -e "${YELLOW}[WARNING] LFS File: $file - Could not compute hash${RESET}"
        elif [[ "$current_hash" == "$expected_hash" ]]; then
            if [[ "$actual_size" == "$expected_size" ]]; then
                echo -e "${GREEN}[OK] LFS File: $file - Hash and size match ($expected_hash)${RESET}"
            else
                mismatch_count=$((mismatch_count + 1))
                echo -e "${RED}[ERROR] LFS File: $file - Hash matches but size differs!${RESET}"
                echo -e "${RED}        Expected size: $expected_size, Actual size: $actual_size${RESET}"
            fi
        else
            mismatch_count=$((mismatch_count + 1))
            echo -e "${RED}[ERROR] LFS File: $file - Hash MISMATCH!${RESET}"
            echo -e "${RED}        Expected hash: $expected_hash${RESET}"
            echo -e "${RED}        Current hash: $current_hash${RESET}"
            if [[ "$actual_size" != "$expected_size" ]]; then
                echo -e "${RED}        Expected size: $expected_size, Actual size: $actual_size${RESET}"
            fi
        fi
    else
        regular_files=$((regular_files + 1))
        git_hash_line=$(git ls-files -s "$file")
        if [[ -n "$git_hash_line" ]]; then
            git_hash=$(echo "$git_hash_line" | awk '{print $2}')
            current_hash=$(compute_git_hash "$file" 2>/dev/null || echo "")

            if [[ -z "$current_hash" ]]; then
                mismatch_count=$((mismatch_count + 1))
                echo -e "${YELLOW}[WARNING] File: $file - Could not compute hash${RESET}"
            elif [[ "$current_hash" == "$git_hash" ]]; then
                echo -e "${GREEN}[OK] File: $file - Hash matches Git's hash ($git_hash)${RESET}"
            else
                mismatch_count=$((mismatch_count + 1))
                echo -e "${RED}[ERROR] File: $file - Hash MISMATCH!${RESET}"
                echo -e "${RED}        Git hash: $git_hash${RESET}"
                echo -e "${RED}        Current hash: $current_hash${RESET}"
            fi
        fi
    fi
done <<<"$files"

echo "----------------------------------------"
echo "Checked $total_files files ($regular_files regular, $lfs_files LFS)."
if [[ "$mismatch_count" -eq 0 ]]; then
    echo -e "${GREEN}All file hashes match Git's hashes!${RESET}"
else
    echo -e "${RED}Found $mismatch_count file(s) with hash mismatches.${RESET}"
fi

# Show Git status
echo -e "\n${CYAN}Git status:${RESET}"
git status --short

# Show Git LFS info
if $git_lfs_installed; then
    echo -e "\n${CYAN}Git LFS information:${RESET}"
    git lfs env
fi

# Show Git configuration related to hashing
echo -e "\n${CYAN}Git configuration related to hashing:${RESET}"
git config --get core.repositoryformatversion || true
git config --get extensions.objectformat || true
git config --get hash.function || true

<#
.SYNOPSIS
Checks the hashes of all Git-tracked files in the current directory and subdirectories against their Git hashes.
Supports both regular Git files and Git LFS files.

.DESCRIPTION
This script verifies that the current content of all Git-tracked files matches their stored Git hashes.
For regular files, it computes the Git-style SHA-1 hash and compares to Git's stored hash.
For LFS files, it extracts the expected SHA-256 hash from the pointer file and compares to the actual file's SHA-256 hash.

.EXAMPLE
.\Check-GitFileHashes.ps1
#>

# Function to check if a file is managed by Git LFS
function Is-LFSFile {
    param (
        [string]$filePath
    )

    # Get the content of the file from Git's index (the staged version)
    $gitObjectContent = git show "HEAD:$filePath" 2>$null

    if ($gitObjectContent -match 'version https://git-lfs.github.com/spec/v') {
        return $true
    }
    return $false
}

# Function to extract hash information from LFS pointer file
function Get-LFSPointerInfo {
    param (
        [string]$filePath
    )

    # Get the content of the LFS pointer file from Git's index
    $gitObjectContent = git show "HEAD:$filePath" 2>$null

    $pointerInfo = @{}
    $gitObjectContent -split "`r?`n" | ForEach-Object {
        if ($_ -match 'oid sha256:([a-f0-9]{64})') {
            $pointerInfo['hash'] = $matches[1]
        }
        if ($_ -match 'size (\d+)') {
            $pointerInfo['size'] = $matches[1]
        }
    }

    return $pointerInfo
}

# Function to compute the appropriate hash for a file
function Get-GitFileHash {
    param (
        [string]$filePath,
        [bool]$isLFSFile
    )

    if ($isLFSFile) {
        # For LFS files, we want the SHA-256 hash of the actual file content
        try {
            $fileContent = [System.IO.File]::ReadAllBytes($filePath)
            $sha256 = [System.Security.Cryptography.SHA256]::Create()
            $hashBytes = $sha256.ComputeHash($fileContent)
            $hashString = [System.BitConverter]::ToString($hashBytes).Replace("-", "").ToLower()
            return $hashString
        } catch {
            Write-Warning "Error processing LFS file: $filePath"
            Write-Warning $_.Exception.Message
            return $null
        }
    } else {
        # For regular files, use the original Git-style hash computation
        try {
            $fileContent = [System.IO.File]::ReadAllBytes($filePath)
            $fileSize = $fileContent.Length

            # Create the blob header: "blob <size>\0"
            $blobHeader = "blob $fileSize`0"
            $blobHeaderBytes = [System.Text.Encoding]::ASCII.GetBytes($blobHeader)

            # Combine header and file content
            $blobContent = New-Object byte[] ($blobHeaderBytes.Length + $fileContent.Length)
            [System.Array]::Copy($blobHeaderBytes, 0, $blobContent, 0, $blobHeaderBytes.Length)
            [System.Array]::Copy($fileContent, 0, $blobContent, $blobHeaderBytes.Length, $fileContent.Length)

            # Compute SHA-1 hash (Git's default)
            $sha1 = [System.Security.Cryptography.SHA1]::Create()
            $hashBytes = $sha1.ComputeHash($blobContent)
            $hashString = [System.BitConverter]::ToString($hashBytes).Replace("-", "").ToLower()

            return $hashString
        } catch {
            Write-Warning "Error processing file: $filePath"
            Write-Warning $_.Exception.Message
            return $null
        }
    }
}

# Function to get file size and last modified time for debugging
function Get-FileInfo {
    param (
        [string]$filePath
    )

    $fileInfo = Get-Item $filePath
    return "Size: $($fileInfo.Length) bytes, Last Modified: $($fileInfo.LastWriteTime)"
}

# Main script execution
try {
    # Check if we're in a Git repository
    if (-not (Test-Path ".git" -PathType Container)) {
        Write-Error "This is not a Git repository. Please run this script from within a Git repository."
        exit 1
    }

    # Check if Git LFS is installed
    $gitLFSInstalled = $false
    try {
        git lfs version 2>$null | Out-Null
        $gitLFSInstalled = $true
    } catch {
        Write-Host "Git LFS does not appear to be installed or configured in this repository." -ForegroundColor Yellow
    }

    # Get the status to see if there are unstaged changes
    $gitStatus = git status --porcelain
    if ($gitStatus) {
        Write-Host "Warning: There are unstaged changes in your repository." -ForegroundColor Yellow
        Write-Host "This might explain hash mismatches for non-LFS files." -ForegroundColor Yellow
        Write-Host "----------------------------------------"
    }

    # Get all Git-tracked files
    $gitFiles = git ls-files

    if (-not $gitFiles) {
        Write-Host "No Git-tracked files found in the current directory."
        exit 0
    }

    Write-Host "Checking hashes for Git-tracked files..."
    Write-Host "----------------------------------------"

    $mismatchCount = 0
    $totalFiles = 0
    $lfsFiles = 0
    $regularFiles = 0

    foreach ($file in $gitFiles) {
        $totalFiles++
        # Check if this is an LFS file
        $isLFSFile = Is-LFSFile -filePath $file

        if ($isLFSFile) {
            $lfsFiles++
            # Get the expected hash from the LFS pointer
            $pointerInfo = Get-LFSPointerInfo -filePath $file
            $expectedHash = $pointerInfo['hash']
            $expectedSize = $pointerInfo['size']

            # Compute the actual file's SHA-256 hash
            $currentHash = Get-GitFileHash -filePath $file -isLFSFile $true

            # Get actual file size for verification
            $actualSize = (Get-Item $file).Length

            if ($currentHash -eq $null) {
                $mismatchCount++
                Write-Host "[WARNING] LFS File: $file - Could not compute hash" -ForegroundColor Yellow
            } elseif ($currentHash -eq $expectedHash) {
                if ($actualSize -eq [long]$expectedSize) {
                    Write-Host "[OK] LFS File: $file - Hash and size match ($expectedHash)" -ForegroundColor Green
                } else {
                    $mismatchCount++
                    Write-Host "[ERROR] LFS File: $file - Hash matches but size differs!" -ForegroundColor Red
                    Write-Host "        Expected size: $expectedSize, Actual size: $actualSize" -ForegroundColor Red
                }
            } else {
                $mismatchCount++
                Write-Host "[ERROR] LFS File: $file - Hash MISMATCH!" -ForegroundColor Red
                Write-Host "        Expected hash: $expectedHash" -ForegroundColor Red
                Write-Host "        Current hash: $currentHash" -ForegroundColor Red
                if ($actualSize -ne [long]$expectedSize) {
                    Write-Host "        Expected size: $expectedSize, Actual size: $actualSize" -ForegroundColor Red
                }
            }
        } else {
            $regularFiles++
            # Original handling for non-LFS files
            $gitHashLine = git ls-files -s $file
            if ($gitHashLine) {
                $gitHashParts = $gitHashLine -split '\s+'
                $gitHash = $gitHashParts[1]
                $fileMode = $gitHashParts[0]

                $currentHash = Get-GitFileHash -filePath $file -isLFSFile $false

                if ($currentHash -eq $null) {
                    $mismatchCount++
                    Write-Host "[WARNING] File: $file - Could not compute hash" -ForegroundColor Yellow
                } elseif ($currentHash -eq $gitHash) {
                    Write-Host "[OK] File: $file - Hash matches Git's hash ($gitHash)" -ForegroundColor Green
                } else {
                    $mismatchCount++
                    Write-Host "[ERROR] File: $file - Hash MISMATCH!" -ForegroundColor Red
                    Write-Host "        Git hash: $gitHash" -ForegroundColor Red
                    Write-Host "        Current hash: $currentHash" -ForegroundColor Red
                }
            }
        }
    }

    Write-Host "----------------------------------------"
    Write-Host "Checked $totalFiles files ($regularFiles regular, $lfsFiles LFS)."
    if ($mismatchCount -eq 0) {
        Write-Host "All file hashes match Git's hashes!" -ForegroundColor Green
    } else {
        Write-Host "Found $mismatchCount file(s) with hash mismatches." -ForegroundColor Red
    }

    # Show Git status for reference
    Write-Host "`nGit status:" -ForegroundColor Cyan
    git status --short

    # Show Git LFS info if installed
    if ($gitLFSInstalled) {
        Write-Host "`nGit LFS information:" -ForegroundColor Cyan
        git lfs env
    }

    # Show Git configuration related to hashing
    Write-Host "`nGit configuration related to hashing:" -ForegroundColor Cyan
    git config --get core.repositoryformatversion
    git config --get extensions.objectformat
    git config --get hash.function

} catch {
    Write-Error "An error occurred: $_"
    exit 1
}

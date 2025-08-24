\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
***********************************************************************************************************************************************************

		
						PROJECT RACS 
						READ-ME AND LICENSE




						Author: Wld427
				
				Project RACS Original Partnership between wld427 and FA Dalai-Lamar

**********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Concept:	Originally designed to make the RACS not suck so bad. The theory is as a former spanish colony
		that was also a port for the Royal Navy at some point. The Royal Sahrani Army, Royal Sahrani Airforce, 
		and Royal Sahrani Navy, will be supprted by NATO equipment. Therefore we decided to get permissions 
		for some community made Add-ons and reskin them for the RACS. We also decided to make some modified 
		projects of our own such as missile boats, different helicopter variants, and anything else we were crazy 
		enough to mess with. Some of these addons are ports from Vilas, RHS, UNSUNG, VTE, Falklands MOD, FFAA, 
		FDF, Bushwars, VME, and other MODS. A3 models and mod based on RHS. Please see individual sections for Credits.

Arma1:		Project RACS was an attempt at fleshing out the RACS faction into a complete military. Equipment and missions 
		addressed the Sahrani Army's ability to fight independently of US forces while pooling the equipment to do so 
		from the western world and some eastern influences.  

Arma2:		Project RACS evolved into the most complete, Independent, faction one could have for Arma2 and Operation Arrowhead. 
		We presented as the Sahrani nation shedding the the civil war and modernizing itself into a NATO standardized partner.

Arma3:		This iteration of the mod will be much more of the same with Sahrani still independent yet closely aligned with NATO and
		the United States. Equipment will continue to evolve and modernize.   

*********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Special Features:
		
		PRACS Loadout Script:
		If you park a PRACS vehicle that uses the BIS pylon system next to a PRACS ammo truck and turn off the engine of your vehicle 
		you will get the option to change the loadout of the vehicle while in a mission. There is a 30 second delay between pylon 
		loadout that is changed or reloaded. 

		IF you want to use this script on a non-PRACS vehicle add the following to the INIT-field of that vehicle:
		this addAction ["Loadout", "\PRACS_Core\scripts\loadout\sqf\PRACS_Loadout.sqf", nil, 0.01, false, false, "", "(((player == currentPilot _target) || (player == gunner _target)) && ((count (nearestObjects [(getPos _target), ['PRACS_M250_Ammo', 'PRACS_m548_ammo'], 20]) > 0) && { damage _x < 0.5} foreach (nearestObjects [(getPos _target), ['PRACS_M250_Ammo', 'PRACS_m548_ammo'], 20])) && (!(isEngineOn _target)))", 5, false, "", ""];
		
		NOTE! This script has been tested to work with ONLY PRACS vehicles. Using the script on ANY other vehicles, including BIS 
		vehicles, can result in undesired results.

*********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

	Thanks to: 

		Friends of the MOD:
		===================
		Sekra, RKSL-Rock, Ballistic09, Sabre[Dust], HCPookie, Vilas, UNSUNG Team, SOG:PF Developers 

		Soul Assassin, Gurdy, RichardsD and of course the entire RHS group. 


		Testers and Team Members:
		===================
		Ampersand,Xenith_Zero, Cu3Ball(Dunn or steinbeck), VitasInAddidas, b00ce, M3 Luck3y Charms, Firebird 01 - 6th Elysian Rifles, SMS Graf Zeppelin,
		farsight, LordCaptainDante(Pizetti), Commissar Random, Maddii, sv5000, Viper1Zero, Yama   
		
		
		Former Testers:
		===================
		CannonSong(discount annubis), Georg Ravioli, Sgt Mack, captinbaer, Tankbuster, Iwillkillyou178

*********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

	Special Thank You's go out to 2 of my very closest friends. Without them Project RACS for Arma 3 would not even be possible.

		Sekra- 	He's my battle buddy. For over 15 years now Sekra has been helping me along as international tech support for my computer
			and making missions for Project RACS. He runs everything digital to do with our websites and social media, and keeps
			me sane by being completely insane. He is now even getting his hands dirty with PhysX configs. As well as making us a 
			new flag, roundel, symbols and watermarks. He is an invaluable asset to not only my team but me as well. I can never 
			thank him enough for his friendship, candor, and support all of these years. There are people you can really rely on 
			in life and Sekra is one of the finest. 

 		
	    RKSL-Rock- 	Since the beginning of my modding insanity Rock has been a very close friend and mentor to me. I strive to someday 
			be able to produce content on par with RKSL. He shares his model making knowledge on a daily basis as well as answering 
			my questions all hours of the night. Any night he's also good for a chat Veteran to Veteran. He has provided me with 
			updated knowledge as well as nudging my creativity into new areas and especially to new levels. All of the Mk80 series 
			bombs in PRACS come from Rock. He also made the Bru-57 multiple ejector racks, M117 bomb, and my favorite missile of 
			all time, the delilah. Tris is a true proffesional and gentleman. Thank you for being there buddy and thank you most 
			for your friendship.

**********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

		Social Media:	

			Discord:  https://discord.gg/bUJeNcg

			Twitter:  https://twitter.com/ProjectRacs 

			BI Forums: https://forums.bohemia.net/forums/topic/190172-project-racs/

			email: pracs@dev-hell.net
 
*********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Disclaimer:	Project RACS takes no responsibility as this is unofficial content. If it eats your hard drive, shoots your dog, just makes you unhappy, or
		your girlfriend leaves you because you spend too much time in front of the computer, don't blame ME. This content is the hard work of many 
		people in many different ways. Please respect that. Do not modify, change or molest in any way without permissions from the PROJECT RACS mod. 
		If you would like to modify any of this stuff please contact us on the BI forums, discord, or drop me a message at bigblock52ford@hotmail.com. 
		I would be glad to entertain your requests by putting you in contact with the original model makers. Also be aware this entire project embodies 
		years of learning and knowledge gained. There are some imperfections and mistakes. All addons will forever be a work in progress. Be patient. I will
		continue to update them whenever possible.

		Any portion of this mod either a single file or all inclusive is not to be ported to any other platform. This MOD is for Arma3 and Arma3 only.

		Re-uploads of any portion to Steam Workshop will not be tolerated. 
	 
		THIS MOD IS IN NO WAY ACE COMPATABLE NOR WILL IT BE MADE TO DO SO. ABSOLUTELY NO PERMISSION IS GIVEN TO OPEN, MODIFY, OR CHANGE THE CONFIGS
		IN ANY WAY SHAPE OR FORM. IF YOU HAVE AN ISSUE WITH THIS PLEASE STOP DOWNLOADING AND DELETE ALL PRACS FILES FROM YOUR HARD DRIVE. THIS IS
		OFFICIAL PROJECT RACS POLICY AND IS NON-NEGOTIABLE IN ANY WAY SHAPE OR FORM.

		DISTRIBUTING GAME CONTENT CREATED WITH THE ADDON
		Please note that you DO NOT require permission from wld427 or Project RACS to distribute game content (e.g. missions) created with these 
		addons, although we do ask that you credit the addon(s) in any release documentation. 

		The mod uses signatures from the BI toolset. It is not to be resigned in part or entirety or otherwise molested in any way shape or form.

		THE WORK (AS DEFINED BELOW) IS PROTECTED BY COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE WORK OTHER
		THAN AS AUTHORIZED UNDER THIS LICENCE OR COPYRIGHT LAW IS PROHIBITED. BY EXERCISING ANY RIGHTS TO THE WORK
		PROVIDED HERE, YOU ACCEPT AND AGREE TO BE BOUND BY THE TERMS OF THIS LICENCE. THE LICENSOR GRANTS YOU THE
		RIGHTS CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND CONDITIONS.

		Project RACS hereby grants to You a worldwide, royalty-free, non-exclusive, Licence for Non-Commercial use and for the duration of copyright in
		the Work.

		You may:

				• copy the Work;

				• copy the Work as incorporated in any Collective Work; and publish, distribute, archive, perform or otherwise disseminate 
				  the Work or the Work as incorporated in any Collective Work, to the public in any material form in any media whether now 
				  known or hereafter created.

		You may NOT:

				• impose any terms on the use to be made of the Work, the Work as incorporated in a Collective Work that alter or restrict 
				  the terms of this Licence or any rights granted under it or has the effect or intent of restricting the ability to exercise those rights;

				• impose any digital rights management technology on the Work, the Work as incorporated in a Collective Work that alters or restricts the terms of
				  this Licence or any rights granted under it or has the effect or intent of restricting the ability to exercise those rights;

				• sublicense the Work;

				• incorporate the Work into one or more Collective Works without permission;

				• subject the Work to any derogatory treatment as defined in the Copyright, Designs and Patents Act 1988.

				• The use of this software with VBS4, VBS3, VBS2, VBS1 or any other BIA/BISim software is prohibited.

				• MONETIZATION OF THE CONTENT IN ANY FORM WITHOUT EXPRESSED WRITTEN PERMISSION IS STRICTLY FORBIDDEN.


		You must:

				• make reference to this Licence (by Uniform Resource Identifier (URI), spoken word or as appropriate to the media used) 
				  on all copies of the Work and Collective Works published, distributed, performed or otherwise disseminated or made available 
				  to the public by You;

				• recognise the Licensor's / Original Author's right of attribution in any Work and Collective Work that You publish, 
				  distribute, perform or otherwise disseminate to the public and ensure that You credit the Licensor / Original Author as 
				  appropriate to the media used; and

				• to the extent reasonably practicable, keep intact all notices that refer to this Licence, in particular the URI, 
				  if any, that the Licensor specifies to be associated with the Work, unless such URI does not refer to the copyright 
				  notice or licensing information for the Work.

	
		Most models are set up for the BIS retexture system via hiddenselections. if you wish to reskin the model please make certain your file remains dependent
		on the original PRACS folders. For texture templates and PSD files contact wld427 at one of the above listed sources. 

		IF YOU WISH TO USE ANY LOGOS, PATCHES, MEDIA, OR SYMBOLS IN THIS MOD, PLEASE CONTACT WLD427 @ pracs@dev-hell.net

		PLEASE ASK AND I AM CERTAIN WE CAN WORK SOMETHING OUT.   


		Now with all the legal crap cleared up please see the list below for individual credits for each model.

*********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Aircraft:
		PRACS_A4.pbo

		A-4 Skyhawks
			Original models by foxtrop and the Malvinas MOD. Cockpit, textures, weapons and loadouts by Wld427.
		*******************************************************************************************************************************************
	
		PRACS_A_Heli

		AH-1S
			Orignal model and textures by BIS. Modified to AH-1s Livery by Vilas. Reskinned and re-armed by wld427. 
		RAH-6
			BIS arma1 model and pieces reworked by wld427
		*******************************************************************************************************************************************

		PRACS_C130

		C-130J
			Original Model by BIS. Ported by RHS from Arma2. Akinned and reworked by wld427.	
		*******************************************************************************************************************************************
		
		PRACS_F16

		F-16
			Model originally by Footmunch. Modified by FRL Myke, EddyD, Wld427 and RKSL Rock. 
		*******************************************************************************************************************************************
		
		PRACS_Hawkeye

		E-2 Hawkeye
			From OFrP. Permissions via tigerforce and usage from unsung mod.
		*******************************************************************************************************************************************

		PRACS_Heli

		SA330 Puma
			Bush Wars mod specifically Obmar. Rest in Peace my old friend. Reskinned by Eddyd and wld427. Config work and port to arma3 by wld427
			SOCAT Kit from RKSL Rock and grafted to the model by wld427

		UH-1H
			Thank you to Syko_Crazy for allowing me to make derivatives of his work on the BIS UH-1H model.

		CH-53
			Original version by Rocket. Modified by RHS and skins by wld427
		*******************************************************************************************************************************************

		PRACS_Mirage

		Mirage III/MirageIV
			Original model by foxtrop and the Malvinas MOD. Cockpit, textures, weapons and loadouts by Wld427.	
		*******************************************************************************************************************************************	

		PRACS_Mohawk

		OV-1 Mohawk
			Original Model by Tim "piglet" conrad for FS2004. Adopted version from CheyeanneAH46. Retexture templates provided by EddyD. 
			Weapons and loadouts by Wld427.
		*******************************************************************************************************************************************
		
		PRACS_P3

		P-3C Orion
			Model by JSDF mod from arma2. Ported to A3 and skinned by wld427
		*******************************************************************************************************************************************
		 
		
		Special thank you to Sekra for his tireless work unbreaking my PhysX setups. 

		New afterburner sound modified by Sekra sourced from:

			Original afterburner soundfile edited by Sekra:
			-By StoneyJ (http://www.freesound.org/usersViewSingle.php?id=1786799)
			-Afterburner sound.wav (http://www.freesound.org/samplesViewSingle.php?id=104883) 

***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Vehicles:
		
		PRACS_Car

		BMR-600
			Original model by Lobo of the FFAA MOD team. Heavily modified by wld427. BMR-600A3 with CROWS System by Petr integrated by wld427

		VEC-M1
			Original model by Lobo of the FFAA MOD team. Heavily modified and MGS version by wld427.

		Humvees- Unarmored
			Models by Delta Hawk. Reskinned by wld427 via RHS

		Up-Armored Humvees
			By RichardsD within RHS skinned by wld427

		SIS-SUV
			A2 model ported and worked by wld427
		*******************************************************************************************************************************************

		PRACS_Car_2

		M-1117 Guardian
			Original model by Cleggy. Modified with permissions from RHS and Cleggy. 
		*******************************************************************************************************************************************

		PRACS_Tracked

		M113/M163 Variants
			Models by Gurdy in cooperation with Red Hammer Studios. Modified with resources and permissions directly from Gurdy
		
		MLRS
			Reskined BIS model imported by wld427 using RHS ammunitions

		M88
			Model by Vilas on Ryguyu's M60A3 chassis. Skinned and imported by wld427

		
		M60A3
			Model by ryguyu. Ported forward to Arma2 and Arma3 by wld427. Skins by wld427.

		M60S Pantera
			Model by ryguyu. Continuation of M60A3 model compnents added by wld427.

		M-109A6
			Model by soul asassain with work by noubernou and retextured by wld427. 

		M548
			Original model by Vilas. Modified to combat tractor by wld427.
			Chassis compnents from Gurdy and RHS
		
		M548-MPQ64
			Continuation of M548 Project with the addision of MPQ64 Sentinel Radar made by Sekra 
			and textured by RKSL-Rock 
			
		M48 Chapparal 
			Original model by vilas, ported by wld427 and missile by RKSL-Rock.
			Chassis compnents from Gurdy and RHS
		
		M727 I-HAWK 
			Chapparal tractor model by Vilas with MIM-23 HAWK launcher provided by RKSL
			Chassis compnents from Gurdy and RHS
		
		Scorpion and Scimitar Light Tanks
			Models by Vilas reskined by wld427
		*******************************************************************************************************************************************

		PRACS_Tracked_2

		Pizzarro IFV
			Model by Lobo of the FFAA mod team. Variants and skins by wld427

		M1A1
			RHS with help from Gurdy the original model maker. Textures by wld427 
		*******************************************************************************************************************************************

		PRACS_Truck

		Iveco M-250 Series
			Model by Lobo of the FFAA mod team. Reworked by wld427. New skin by Lennard and wld427
			Variants by wld427

		HEMMTT Fueler
			By RichardsD within RHS skinned by wld427
		*******************************************************************************************************************************************
		

***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Static Weapons:
		PRACS_Static

		M-101
			Model by vilas. Reworked and imported to Arma2 and Arma3 by wld427
		
		M-102
			Model by vilas worked and configged by Sekra by wld427
			
		M-114 
			Model by vilas worked and configged by Sekra by wld427
			
		M198 
			Model by vilas worked and configged by Sekra and wld427

		M-1
			Model by RKSL Rock. Imported to A3 and configured by wld427

		M-115
			Model by RKSL Rock. Imported to A3 and configured by wld427

		Ground weapons Mk19, M2, M252, Stinger pod are all BIS provided MLODs
		*******************************************************************************************************************************************

		PRACS_Static_2

		HAWK
			Model by RKSL Rock. THANK YOU ROCK!!!!!!

		MPQ-64 Sentinel
			Model by Sekra, imported and configured by wld427, textures by RKSL-Rock


***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Troops:
		
		PRACS_Troops

		RTO Backpacks
			TFAR radio open source. https://github.com/michail-nikolaev/task-force-arma-3-radio 

		M10 uniform 
			model by Alexdragutin of RHS:SAF modified with permissions by wld427
			Unitform template provided by Gurdy of RHS
			Sahrani DPM texture base provided by Sander, edited to ASDPM by wld427
			All other textures created by wld47
			Zeealex for glove models added by wld427
		
		CIRAS vest 
			Used with permissions and respurced provided by adacas and Hawaiian retex by wld427
			utilizing pouches from BIS A2 models
		
		HGU55
			Provided by MOE556 Models and resources. Retextured by wld427

		G suit
			Provided by MOE556 Models and resources. Retextured by wld427

		Hard Hats
			Model by Erwin. Retextures by wld427

		Pilot Headset
			BIS A2 peltor model

		Pilot Coveralls
			Model by Cinco downloaded from the now defunct Armaholic
		

		UNIT INSIGNIAS AND RANKS
		All rank and unit insignias as well as patches are created by wld427. If you would like to use them in any content of your 
		own please contact me at pracs@dev-hell.net and I would be happy to provide permission and original high resolution samples.

***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Weapons:

		PRACS_Weapons

		Individual Small Arms

		G-3 Series
			Special thanks to the Turkish Union Mod for permissions to use their lovely models.  

		Galil Series
			Models by Vilas M203 model from BIS textures by wld427. SUIT model from Col Faulkner.

		Galil ACE
			Model by Alec Markarian textures and materials by Karti and wld427. Import to A3 by wld427

		Galil 60rnd mag
			Model by Euan Mitchell "tigg". Textures, import to A3, and materials by wld427.

		FNC
			Model by Vilas

		M60
			Model by Skaven reworked by Vilas and wld427

		Rk62
			Model by Nixo and NIArms collection. For Sekra the beast from the east. 

		HK53
			Made by Krycek, PAC, Toadie from the NIArms source pack via github.

		HK33
  			Made by Krycek, PAC, Toadie from the NIArms source pack via github.

		*******************************************************************************************************************************************
		PRACS Airweapons

		RKSL-Rock 
			Mk80 Series bombs, M117, Harpoon, HARM, Sea Eagle, Exocet, GBU-8, GBU-12, GBU-10, GBU-16, Delilah, AGM142, AGM-65 series,
			500gp, 1000gp, Aim-7, Aim-9, Aim-120, Aim-132, CBU-100/52, Python-3, R-530D, R-550, Spike-ER, Zuni-5, MIM-23, MIM-72G, ATACMS 

			Rails: LAU-10, LAU-118, MER-3, MER-6, BRU-57, LAU-7, LAU-19

			F-16 CFT
		
		FRL_Myke
			GBU-24, GBU-35, GBU-39, JDAM, SD-250

		Footmunch
			R-530, SSM

		Godhammer 
			Sea Skua

		RHS
			ATACMS POD, MLRS Pod
			155 Shells M106, M112
				 
***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Ships:
		LHD
			original model by BIS. Worked over by ATLAS mod and Ex3B(Kerik). PRACS version by wld427

		*******************************************************************************************************************************************
		RHIB and CRCC
		
			BIS models retextured by wld427

***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Objects:

		RACS Hard Shelter, Aircraft shelter, and heavy hardened aircraft shelter:
		Model by EddyD. Conversion, textures, and config by wld427.

		Warfare buildings, ramparts, signs and flagpole are all BIS creations from the LDP MLOD sets retextured by wld427.

************************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Scripts:
		
		Afterburner
		Thanks to Lethal for the afturburner scripts which have been extensively modified by Gnat, Myke, Sabre, RKSL-Rock and Sekra.
		
		PRACS Loadout script
		Made by Sekra. You are NOT allowed to adapt, modify or extract this script to be used without PRACS. Exclusive for PRACS only. 
		
************************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

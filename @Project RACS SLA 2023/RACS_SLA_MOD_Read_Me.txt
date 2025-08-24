\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
***********************************************************************************************************************************************************

		
						PROJECT RACS SLA Faction READ-ME AND LICENSE




								Author: Wld427



**********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Concept:	I have always wanted to do a OPFOR or RED faction. The crappy enviornment provided by BIS in A3 led to us having to make the
		entire game while they only provided an engine (albiet broken one). This really became a passion of mine years ago. After taking 
		a break for the birth of my son (3 years) I started to get back into modding. I guess its like a kid building plastic models. 

RHS:		With the stock game providing absolutely nothing of interenst for nearly every player in this series, I set out to build the RACS 
		once again. Along the way I hooked up with the fabulous RHS team and my ideas began to soar. Using RHS as what should BIS have
		done for the base game I began building the SLA faction from the ashes.

Main Idea:	I often thought the end of the conflict on Sahrani was the RACS pushing the SLA off the parent island and uniting it. While still 
		holding on to minor islands in the archipelego the SLA regrouped, threw out its civilian government, rebuilt, and are preparing
		to return the red tide to the main island. With continued support to NATO operation I would figure the RACS forces would be 
		suffering from mission creep, desertion, erosion of capabilities, and general degredation of quality. 

		These factors would feed the return of the SLA   

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


		Testers:
		===================
		Xenith_Zero, Cu3Ball(Dunn or steinbeck), VitasInAddidas, b00ce, M3 Luck3y Charms, Firebird 01 - 6th Elysian Rifles, SMS Graf Zeppelin,
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

		SU-25: Bohemia Interactive Sample Models

		Su-24: Model by Footmunch. Modified by Wld427

		Su-22: Model by franze. Modified by Wld427

		MiG-21: FSX port by Nightrain. Modified by Wld427

		F-5 TigerII (MiG28): W4lk3n OFRP mod. Modified by Wld427

		Mig-23/27: Models by Citizensnip. Modified by Wld427

		AN-12: Model by Citizensnip and HCPookie. Modified by Wld427

		Mi-17, Mi-28, Mi-24, Ka-50, and Mi-35 reskins of RHS: Armed Forces of the Russian Federation. 

		

		Special thank you to Sekra for his tireless work unbreaking my PhysX setups. 

		Thanks to Lethal for the afturburner scripts wich have been extensively modified by Gnat, Myke, RKSL-Rock, and Sekra.

		New afterburner sound modified by Sekra sourced from :

			Original afterburner soundfile edited by Sekra:
			-By StoneyJ (http://www.freesound.org/usersViewSingle.php?id=1786799)
			-Afterburner sound.wav (http://www.freesound.org/samplesViewSingle.php?id=104883) 

***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Vehicles:

		UAZ, Urals, ZSU, BTR-60, BMPs, BMDs, T-80 and T-72 reskins of RHS: Armed Forces of the Russian Federation. 

		SA-6: Original model by Scars. Modified by Wld427

		1S91 radar set by RKSL Rock, textured by wld427

		MTLB: Models by Vilas, skinned, modified and ported by wld427

		SA9: BRDM Chassis by RHS, turret by wld427

		SA8: Model by Vilas ported upgraded by wld427 Missile by Godhammer

		SA2: Proviided by UNSUNG and HCPookie
		
		SA-19: Tunguska model by BIS

		SA17: Tunguska chassis highly modified by wld427, turret by citizensnip
		
		BTR40: BI MLOD reworked by wld427
	
		PT76: Provided by Thek reworked by wld427



***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Static Weapons:

		S-60 AA Gun: Model by PLA Arma2 team: Modified by Wld427

		Zu-23-2: Bohemia Interactive Sample Models. Modified by Wld427

		D-30: Bohemia Interactive Sample Models. Modified by Wld427

		M46: Model by PLA Arma2 team: Modified by Wld427

		ZPU-4: Model by soldier2320 modified, ported, skinned, and fixed by wld427


***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Troops:

		M88 woodland uniform provided by Alexsdragutin of RHS: Armed Forces of the Russian Federation. Reskinned by Wld427
		trxture template by Gurdy


***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Weapons:

		Infantry weapons provided by RHS: Armed Forces of the Russian Federation

		Aircraft missiles and bombs provided by RKSL-Rock and FRL-Missilebox. 
	
		Airweapons

		From RKSL-Rock
			AA-2, AA-8, AA-10, Kh-25 series, KH-29 Series, Kh-35, Kh-58, R-73, R-77, KAB-500L,  


***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Ships:
	
		Go fast boat ptovided by HC-Pookie and highly modified and expanded by wld427

***********************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

Objects:

	NA

************************************************************************************************************************************************************
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
				
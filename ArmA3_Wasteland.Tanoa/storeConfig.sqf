// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// █████ FOR USE WITH APEX SNEAK PREVIEW BRANCH ONLY! █████

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["PM Pistol", "hgun_Pistol_01_F", 25],
	["P07 Pistol", "hgun_P07_F", 50],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 50],
	["Rook-40 Pistol", "hgun_Rook40_F", 50],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 75],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 75],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 100]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 100],

	["Protector SMG [DLC]", "SMG_05_F", 100],

	["Sting SMG", "SMG_02_F", 125],
	["Vermin SMG", "SMG_01_F", 125]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 100],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 150],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 150],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 200],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 200],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 250],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 250],

	["TRG-20 Carbine", "arifle_TRG20_F", 150],
	["TRG-21 Rifle ", "arifle_TRG21_F", 200],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 250],

	["Katiba Carbine", "arifle_Katiba_C_F", 150],
	["Katiba Rifle", "arifle_Katiba_F", 200],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 250],

	["MX Carbine", "arifle_MXC_F", 150],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 150],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 150, "noDLC"],
	["MX Rifle", "arifle_MX_F", 200],
	["MX Rifle (Black)", "arifle_MX_Black_F", 200],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 200, "noDLC"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 250],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 250],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 250, "noDLC"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 200],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 200],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 200],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 250],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 250],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 250],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 200],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 250],
	["Type 115 Rifle", "arifle_ARX_blk_F", 300],
	["Type 115 Rifle (Hex)", "arifle_ARX_hex_F", 300],
	["Type 115 Rifle (G Hex)", "arifle_ARX_ghex_F", 300],

	["AKS-74U Carbine", "arifle_AKS_F", 150],
	["AKM Rifle", "arifle_AKM_F", 200],
	["AK-12 Rifle", "arifle_AK12_F", 250],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 300],

	// Marksman Rifles
	["MXM Rifle", "arifle_MXM_F", 300],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 300],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 300, "noDLC"],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 375],
	["Mk18 ABR Rifle", "srifle_EBR_F", 450],

	// DLC
	["CMR-76 Rifle", "srifle_DMR_07_blk_F", 400],
	["CMR-76 Rifle (Hex)", "srifle_DMR_07_hex_F", 400],
	["CMR-76 Rifle (G Hex)", "srifle_DMR_07_ghex_F", 400],
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 450],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 450],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 450],

	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 500],
	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 500],
	["Mk-I EMR Rifle", "srifle_DMR_03_F", 500],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 500],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 500],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 500],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 500],
	["MAR-10 Rifle", "srifle_DMR_02_F", 750],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 750],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 750],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 750],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 750],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 750],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_LRPS_F", 1000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_LRPS_F", 1200],
	["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_LRPS_F", 1200],
	["GM6 Lynx Sniper", "srifle_GM6_LRPS_F", 1250],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_LRPS_F", 1500],
	["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_LRPS_F", 1500],

	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 2000],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 2000]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 300],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 325],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 325, "noDLC"],
	["Mk200 LMG", "LMG_Mk200_F", 400],
	["Zafir LMG", "LMG_Zafir_F", 500],

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 300],
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 300],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 300],
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 300],
	["LIM-85 LMG", "LMG_03_F", 350],

	["SPMG MMG (Sand)", "MMG_02_sand_F", 750],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 750],
	["SPMG MMG (Black)", "MMG_02_black_F", 750],
	["Navid MMG (Tan)", "MMG_01_tan_F", 1000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 1000]
];

launcherArray = compileFinal str
[
	["RPG-7 [DLC]", "launch_RPG7_F", 350],

	["RPG-42 Alamut", "launch_RPG32_F", 400],
	["RPG-42 Tropic", "launch_RPG32_ghex_F", 400],
	["PCML", "launch_NLAW_F", 600],
	["Titan AT (Sand)", "launch_Titan_short_F", 500],
	["Titan AT (Coyote)", "launch_O_Titan_short_F", 500],
	["Titan AT (Olive)", "launch_I_Titan_short_F", 500],
	["Titan AT (Tropen)", "launch_B_Titan_short_tna_F", 500],
	["Titan AT (GreenHEX)", "launch_O_Titan_short_ghex_F", 500],
	["Titan AA (Sand)", "launch_Titan_F", 600],
	["Titan AA (Hex)", "launch_O_Titan_F", 600],
	["Titan AA (Digi)", "launch_I_Titan_F", 600],
	["Titan AA (Tropen)", "launch_B_Titan_tna_F", 600],
	["Titan AA (GreenHex)", "launch_O_Titan_ghex_F", 600]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 2500],
	["Static Titan AT 4Rnd", "I_static_AT_F", 2500],
	["Static Titan AA 4Rnd", "B_static_AA_F", 3000],
	["Static Titan AA 4Rnd", "O_static_AA_F", 3000],
	["Static Titan AA 4Rnd", "I_static_AA_F", 3000],
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 2000],
	// ["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// ["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 5000],
	// ["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 3000],
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 5000],
	// ["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 10000],
	//["Mk6 Mortar (NATO)", "B_Mortar_01_F", 50000],
	//["Mk6 Mortar (CSAT)", "O_Mortar_01_F", 50000],
	//["Mk6 Mortar (AAF)", "I_Mortar_01_F", 50000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 6000]
	
];

throwputArray = compileFinal str
[
	["RGN Mini Grenade", "MiniGrenade", 50],
	["RGO Frag Grenade", "HandGrenade", 100],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 200],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 250],
	["APERS Mine", "APERSMine_Range_Mag", 300],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	["AT Mine", "ATMine_Range_Mag", 400],
	["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 500],
	["Smoke Grenade (White)", "SmokeShell", 50],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 50],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 50],
	["Smoke Grenade (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 15],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 20],
	["5.45mm 30Rnd Tracer (Yellow) Mag", "30Rnd_545x39_Mag_Tracer_F", 15],
	["5.45mm 30Rnd Tracer (Green) Mag", "30Rnd_545x39_Mag_Tracer_Green_F", 15],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 100],
	["5.56mm 150Rnd Tracer (Red) Mag", "150Rnd_556x45_Drum_Mag_Tracer_F", 75],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 125],
	["5.56mm 200Rnd Tracer (Yellow) Box", "200Rnd_556x45_Box_Tracer_F", 100],
	["5.56mm 200Rnd Tracer (Red) Box", "200Rnd_556x45_Box_Tracer_Red_F", 100],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 20],
	["5.8mm 30Rnd Tracer (Green) Mag", "30Rnd_580x42_Mag_Tracer_F", 15],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 100],
	["5.8mm 100Rnd Tracer (Green) Mag", "100Rnd_580x42_Mag_Tracer_F", 75],
	["6.5mm 20Rnd Mag", "20Rnd_650x39_Cased_Mag_F", 15],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 15],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	["7.62mm 30Rnd Mag", "30Rnd_762x39_Mag_F", 20],
	["7.62mm 30Rnd Tracer (Yellow) Mag", "30Rnd_762x39_Mag_Tracer_F", 15],
	["7.62mm 30Rnd Tracer (Green) Mag", "30Rnd_762x39_Mag_Tracer_Green_F", 15],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 150],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 125],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 50],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 50],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 60],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 75],
	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 50],
	["PG-7VM HEAT Grenade", "RPG7_F", 200],                   // Direct damage: medium    | Splash damage: low    | Guidance: none
	["RPG-42 Anti-Tank Rocket", "RPG32_F", 250],              // Direct damage: high      | Splash damage: low    | Guidance: none
	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 250],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	["PCML Anti-Tank Missile", "NLAW_F", 400],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 350],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 350],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	["Titan Anti-Air Missile", "Titan_AA", 350],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 100, "item"],

	["Suppressor 5.8mm [DLC]", "muzzle_snds_58_blk_F", 100, "item"],
	["Suppressor 6.5mm [115 ghex]", "muzzle_snds_65_TI_ghex_F", 100, "item"],
	["Suppressor 6.5mm [115 hex]", "muzzle_snds_65_TI_hex_F", 100, "item"],
	["Suppressor 6.5mm [115 blk]", "muzzle_snds_65_TI_blk_F", 100, "item"],

	["Suppressor 6.5mm", "muzzle_snds_H", 100, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item"],
	["Suppressor .338 [DLC]", "muzzle_snds_338_black", 150, "item"],
	["Suppressor .338 (Green) [DLC]", "muzzle_snds_338_green", 150, "item"],
	["Suppressor .338 (Sand) [DLC]", "muzzle_snds_338_sand", 175, "item"],
	["Suppressor 9.3mm [DLC]", "muzzle_snds_93mmg", 175, "item"],
	["Suppressor 9.3mm (Tan) [DLC]", "muzzle_snds_93mmg_tan", 175, "item"],
	["Bipod (NATO)", "bipod_01_F_blk", 100, "item"],
	["Bipod (CSAT)", "bipod_02_F_blk", 100, "item"],
	["Bipod (AAF)", "bipod_03_F_blk", 100, "item"],
	["Bipod (MTP)", "bipod_01_F_mtp", 100, "item"],
	["Bipod (Hex)", "bipod_02_F_hex", 100, "item"],
	["Bipod (Olive)", "bipod_03_F_oli", 100, "item"],
	["Bipod (Sand)", "bipod_01_F_snd", 100, "item"],
	["Bipod (Tan)", "bipod_02_F_tan", 100, "item"],
	["Bipod (Khaki)", "bipod_01_F_khk", 100, "item"],
	["Flashlight", "acc_flashlight", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	["Holosight Khaki [DLC]", "optic_Holosight_khk_F", 75, "item"],
	["Holosight Black [DLC]", "optic_Holosight_blk_F", 75, "item"],
	["Holosight SMG Black [DLC]", "optic_Holosight_smg_blk_F", 75, "item"],
	["MRCO", "optic_MRCO", 100, "item"],

	["ERCO Black [DLC]", "optic_ERCO_blk_F", 100, "item"],
	["ERCO Khaki [DLC]", "optic_ERCO_khk_F", 100, "item"],
	["ERCO Sand [DLC]", "optic_ERCO_snd_F", 100, "item"],

	["ARCO", "optic_Arco", 125, "item"],
	["ARCO GHex [DLC]", "optic_Arco_ghex_F", 125, "item"],
	["RCO", "optic_Hamr", 150, "item"],
	["RCO Khaki [DLC]", "optic_Hamr_khk_F", 150, "item"],
	["MOS", "optic_SOS", 150, "item"],
	["MOS Khaki [DLC]", "optic_SOS_khk_F", 150, "item"],
	["DMS", "optic_DMS", 175, "item"],
	["DMS GHex [DLC]", "optic_DMS_ghex_F", 175, "item"],
	["Kahlia (Sightless) [DLC]", "optic_KHS_old", 200, "item"],
	["AMS [DLC]", "optic_AMS", 250, "item"],
	["AMS (Khaki) [DLC]", "optic_AMS_khk", 250, "item"],
	["AMS (Sand) [DLC]", "optic_AMS_snd", 250, "item"],
	["Kahlia [DLC]", "optic_KHS_blk", 250, "item"],
	["Kahlia (Hex) [DLC]", "optic_KHS_hex", 250, "item"],
	["Kahlia (Tan) [DLC]", "optic_KHS_tan", 250, "item"],
	["LRPS", "optic_LRPS", 300, "item"],
	["LRPS GHex [DLC]", "optic_LRPS_ghex_F", 300, "item"],
	["LRPS Tan [DLC]", "optic_LRPS_tna_F", 300, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Military Cap (Tropic Hex)", "H_MilCap_ghex_F", 25, "hat"],
	["Military Cap (Tropic)", "H_MilCap_tna_F", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandana (Black)", "H_Bandanna_gry", 10, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 10, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 10, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 10, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 10, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 10, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 10, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 10, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 10, "hat"],
	["Booniehat (Tropic)", "H_Booniehat_tna_F", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 10, "hat"],
	["Cap (Police)", "H_Cap_police", 10, "hat"],
	["Cap (Press)", "H_Cap_press", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 10, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Cap (Gendamerie)", "H_MilCap_gen_F", 10, "hat"],
	["Beret (Gendamerie)", "H_Beret_gen_F", 10, "hat"],
	["Shemag (Olive)", "H_Shemag_olive", 25, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 25, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"]
];

uniformArray = compileFinal str
[
	["Gendamerie Uniform [DLC]", "U_B_GEN_Soldier_F", 250, "uni"],
	["Gendamerie Commander [DLC]", "U_B_GEN_Commander_F", 250, "uni"],
	["Gendamerie Tan Pants", "U_BG_Guerilla2_1", 250, "uni"],
	["Gendamerie Wild Life", "U_BG_Guerilla3_1", 250, "uni"],
	["Gendamerie Green Pants", "U_BG_Guerilla2_3", 250, "uni"],
	["Gendamerie Sunday Look", "U_BG_Guerilla2_2", 250, "uni"],
	["Gendamerie Stavrou", "U_I_G_resistanceLeader_F", 250, "uni"],
	["Wetsuit (Gendarmerie)", "U_B_Wetsuit", 500, "uni"],
			
	["Bandit 1 [DLC]", "U_I_C_Soldier_Bandit_1_F", 250, "uni"],
	["Bandit 2 [DLC]", "U_I_C_Soldier_Bandit_2_F", 250, "uni"],
	["Bandit 3 [DLC]", "U_I_C_Soldier_Bandit_3_F", 250, "uni"],
	["Bandit 4 [DLC]", "U_I_C_Soldier_Bandit_4_F", 250, "uni"],
	["Bandit 5 [DLC]", "U_I_C_Soldier_Bandit_5_F", 250, "uni"],
		
	["Paramilitary 1 [DLC]", "U_I_C_Soldier_Para_1_F", 250, "uni"],
	["Paramilitary 2 [DLC]", "U_I_C_Soldier_Para_2_F", 250, "uni"],
	["Paramilitary 3 [DLC]", "U_I_C_Soldier_Para_3_F", 250, "uni"],
	["Paramilitary 4 [DLC]", "U_I_C_Soldier_Para_4_F", 250, "uni"],
	["Paramilitary 5 [DLC]", "U_I_C_Soldier_Para_5_F", 250, "uni"],
	["Paramilitary 6 [DLC]", "U_I_C_Soldier_Camo_F", 250, "uni"],
	
	["Guerilla Altis 1", "U_IG_Guerilla1_1", 250, "uni"],
	["Guerilla Altis 2", "U_IG_Guerrilla_6_1", 250, "uni"],
	["Guerilla Altis 3", "U_IG_leader", 250, "uni"],
	["Wetsuit (Bandits)", "U_I_Wetsuit", 500, "uni"]
	
	
	
	
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", -1, "vest"],

	["Carrier Lite (Tropic) [DLC]", "V_PlateCarrier1_tna_F", -1, "vest"],

	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", -1, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", -1, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", -1, "vest"],

	["Carrier Rig (Tropic) [DLC]", "V_PlateCarrier2_tna_F", -1, "vest"],

	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"],

	["Carrier GL Rig (Tropic) [DLC]", "V_PlateCarrierGL_tna_F", -1, "vest"],

	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"],

	["Carrier Special Rig (Tropic) [DLC]", "V_PlateCarrierSpec_tna_F", -1, "vest"],

	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"],
	["Press Vest", "V_Press_F", -1, "vest"],
	["Gendamerie Vest [DLC]", "V_TacVest_gen_F", -1, "vest"]
	
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 150, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 150, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 150, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 150, "backpack"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],
	["Carryall (Tropic)", "B_Carryall_ghex_F", 500, "backpack"],
	
	["Viper Hex", "B_ViperHarness_ghex_F", 800, "backpack"],
	["Viper Black", "B_ViperHarness_blk_F", 800, "backpack"],
	["Viper Khaki", "B_ViperHarness_khk_F", 800, "backpack"],
	["Viper light Hex", "B_ViperLightHarness_ghex_F", 700, "backpack"],
	["Viper light Black", "B_ViperLightHarness_blk_F", 700, "backpack"],
	["Viper light Khaki", "B_ViperLightHarness_khk_F", 700, "backpack"]
];

genItemArray = compileFinal str
[
	//["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	//["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	//["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	//["Radio Gendarmerie", "tf_anprc152", 50, "item"],
    //["Radio Gendarmerie (Long)", "tf_rt1523g", 100, "backpack"],
	//["Radio Bandits", "tf_anprc148jem", 50, "item"],
    //["Radio Bandits (Long)", "tf_anprc155", 100, "backpack"],
    //["LONG RANGE Funk OPFOR", "tf_mr3000", 100, "backpack"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 500, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 500, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 500, "backpack"],
	["Remote Designator Bag (NATO) [DLC]", "B_Static_Designator_01_weapon_F", 250, "backpack"],
	["Remote Designator Bag (CSAT) [DLC]", "O_Static_Designator_02_weapon_F", 250, "backpack"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["NV Goggles (Brown)", "NVGoggles", 100, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 100, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 100, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 150, "nvg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator (Sand)", "Laserdesignator", 250, "binoc"], // Increase price to 2500 if A3W_disableBuiltInThermal = 0
	["Laser Designator (Hex)", "Laserdesignator_02", 250, "binoc"],
	["Laser Designator (Olive)", "Laserdesignator_03", 250, "binoc"],
	["IR Grenade (NATO)", "B_IR_Grenade", 50, "mag", "WEST"],
	["IR Grenade (CSAT)", "O_IR_Grenade", 50, "mag", "EAST"],
	["IR Grenade (AAF)", "I_IR_Grenade", 50, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],
	["Aviator Glasses", "G_Aviator", 25, "gogg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 100, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 100, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 100, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 100, "gogg"],
	["Bandanna (Aviator)", "G_Bandanna_aviator", 100, "gogg"],
	["Bandanna (Beast)", "G_Bandanna_beast", 100, "gogg"],
	["Bandanna (Black)", "G_Bandanna_blk", 100, "gogg"],
	["Bandanna (Khaki)", "G_Bandanna_khk", 100, "gogg"],
	["Bandanna (Olive)", "G_Bandanna_oli", 100, "gogg"],
	["Bandanna (Shades)", "G_Bandanna_shades", 100, "gogg"],
	["Bandanna (Sport)", "G_Bandanna_sport", 100, "gogg"],
	["Bandanna (Tan)", "G_Bandanna_tan", 100, "gogg"],
	["Combat Goggles", "G_Combat", 100, "gogg"],
	["VR Goggles", "G_Goggles_VR", 100, "gogg"],
	["Ladies Shades (ICE)", "G_Lady_Blue", 100, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 100, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 100, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 100, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 100, "gogg"],
	["Shades (Black)", "G_Shades_Black", 100, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 100, "gogg"],
	["Shades (Green)", "G_Shades_Green", 100, "gogg"],
	["Shades (Red)", "G_Shades_Red", 100, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 100, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 100, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 100, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 100, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 100, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 100, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 100, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 100, "gogg"],
	["Square Spectacles", "G_Squares", 100, "gogg"],
	["Square Shades", "G_Squares_Tinted", 100, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 100, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 100, "gogg"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Flag Gendarmerie", "Flag_Gendarmerie_F", 320, "object"],
	["Flag Bandits", "Flag_Syndikat_F", 320, "object"],
	["Fireplace", "Land_Campfire_F", 100, "object"],
	["Metal Barrel Burning", "MetalBarrel_burning_F", 150, "object"],
	["Wooden Crate 1(Deco)", "Land_WoodenCrate_01_F", 120, "object"],
	["Wooden Crate 2(Deco)", "Land_WoodenCrate_01_stack_x3_F", 150, "object"],
	["Wooden Crate 3(Deco)", "Land_WoodenCrate_01_stack_x5_F", 180, "object"],
	["Wooden Plank 4m", "Land_Plank_01_4m_F", 90, "object"],
	["Wooden Plank 8m", "Land_Plank_01_8m_F", 140, "object"],
	["Wooden Ramp Small", "Land_Obstacle_Ramp_F", 280, "object"],
	["Wooden Pier Long", "Land_Pier_small_F", 350, "object"],
	["Camo Ammo Cache", "Box_FIA_Support_F", 250, "ammocrate"],
	["Wooden Crate Small", "Box_Syndicate_WpsLaunch_F", 200, "ammocrate"],
	["Wooden Crate Medium", "Box_Syndicate_Wps_F", 300, "ammocrate"],
	["Wooden Crate Large", "Box_IED_Exp_F", 400, "ammocrate"],
	["PicNic Table Wood", "Land_PicnicTable_01_F", 200, "object"],
	["Wooden Counter", "Land_WoodenCounter_01_F", 210, "object"],
	["Wooden Bench", "Land_Bench_05_F", 220, "object"],
	["Wooden Bench Luxury", "Land_Bench_03_F", 320, "object"],
	["Shelves Wood Oliv", "Land_ShelvesWooden_khaki_F", 180, "object"],
	["Shelves Wood", "Land_ShelvesWooden_F", 180, "object"],
	["Chair Wood", "Land_ChairWood_F", 80, "object"],
	["Office Table", "OfficeTable_01_old_F", 160, "object"],
	["Camping Chair", "Land_CampingChair_V2_F", 120, "object"],
	["Camping Table Small", "Land_CampingTable_small_F", 200, "object"],
	["Camping Table Big", "Land_CampingTable_F", 250, "object"],
	["Sink", "Land_Sink_F", 250, "object"],
	["Camping Light", "Land_Camping_Light_F", 100, "object"],
	["Watercooler", "Land_WaterCooler_01_old_F", 250, "object"],
	["Fridge", "Fridge_01_closed_F", 350, "object"],
	["Sleeping Bag Khaki", "Land_Sleeping_bag_F", 180, "object"],
	["Sleeping Bag Brown", "Land_Sleeping_bag_brown_F", 180, "object"],
	["Wooden Log", "Land_WoodenLog_F", 160, "object"],
	["Wooden Pile", "Land_WoodPile_F", 210, "object"],
	["Axe", "Land_Axe_F", 260, "object"],
	["Fireaxe", "Land_Axe_fire_F", 290, "object"],
	["Fire Extinguisher", "Land_FireExtinguisher_F", 310, "object"],
	["Tin Container Small", "Land_TinContainer_F", 110, "object"],
	["Canteen", "Land_Canteen_F", 250, "object"],
	["Cloth Shelter Yellow", "Land_ClothShelter_01_F", 200, "object"],
	["Cloth Shelter White", "Land_ClothShelter_02_F", 200, "object"],
	["Cloth Shelter Blue", "Land_cargo_addon02_V2_F", 200, "object"],
	["Wooden Shelter", "Land_WoodenShelter_01_F", 200, "object"],
	["Bamboo Fence Small", "Land_BambooFence_01_s_4m_F", 80, "object"],
	["Bamboo Fence Large", "Land_BambooFence_01_s_8m_F", 160, "object"],
	["Pole Fence Small", "Land_PoleWall_01_3m_F", 80, "object"],
	["Pole Fence Large", "Land_PoleWall_01_6m_F", 200, "object"],
	["Slum Fence Small", "Land_SlumWall_01_s_2m_F", 200, "object"],
	["Slum Fence Large", "Land_SlumWall_01_s_4m_F", 200, "object"],
	["Stone Bunker Rectangle", "Land_PillboxBunker_01_rectangle_F", 5500, "object"],
	["Stone Bunker Hex", "Land_PillboxBunker_01_hex_F", 11000, "object"],
	["Stone Bunker Big", "Land_PillboxBunker_01_big_F", 32000, "object"],
	["Bunker Wall 3m Sharp", "Land_PillboxWall_01_3m_F", 1200, "object"],
	["Bunker Wall 6m Sharp", "Land_PillboxWall_01_6m_F", 1500, "object"],
	["Bunker Wall 3m Round", "Land_PillboxWall_01_3m_round_F", 1200, "object"],
	["Bunker Wall 6m Round", "Land_PillboxWall_01_6m_round_F", 1500, "object"],
	["Bag Bunker Green Small", "Land_BagBunker_01_small_green_F", 1250, "object"],
	["Bag Bunker Green Big", "Land_BagBunker_01_large_green_F", 2500, "object"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Lamp Post (Halogen)", "Land_LampHalogen_F", 300, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (4 blocks)", "Land_HBarrier_Big_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["HBarrier Green (1 block)", "Land_HBarrier_01_line_1_green_F", 150, "object"],
	["HBarrier Green (3 blocks)", "Land_HBarrier_01_line_3_green_F", 200, "object"],
	["HBarrier Green (4 blocks)", "Land_HBarrier_01_big_4_green_F", 230, "object"],
	["HBarrier Green (5 blocks)", "Land_HBarrier_01_line_5_green_F", 250, "object"],
	["HBarrier Wall Green (4 blocks)", "Land_HBarrier_01_wall_4_green_F", 400, "object"],
	["HBarrier Wall Green (6 blocks)", "Land_HBarrier_01_wall_6_green_F", 500, "object"],
	["HBarrier Wall Green (Corner)", "Land_HBarrier_01_wall_corner_green_F", 600, "object"],
	["HBarrier Wall Green (Corridor)", "Land_HBarrier_01_wall_corridor_green_F", 700, "object"],
	
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence Gr (Corner)", "Land_BagFence_01_corner_green_F", 150, "object"],
	["Bag Fence Gr (End)", "Land_BagFence_01_end_green_F", 150, "object"],
	["Bag Fence Gr (Long)", "Land_BagFence_01_long_green_F", 200, "object"],
	["Bag Fence Gr (Round)", "Land_BagFence_01_round_green_F", 150, "object"],
	["Bag Fence Gr (Short)", "Land_BagFence_01_short_green_F", 150, "object"],
	["Bag Bunker Tower Green", "Land_HBarrier_01_tower_green_F", 1000, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 1250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 2500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"],
	["Basalt Wall (Gate)", "Land_BasaltWall_01_gate_F", 1450, "object"],
	["Basalt Wall (8m)", "Land_BasaltWall_01_8m_F", 1200, "object"],
	["Basalt Wall (4m)", "Land_BasaltWall_01_4m_F", 1050, "object"],
	["Basalt Wall (Left)", "Land_BasaltWall_01_d_left_F", 950, "object"],
	["Basalt Wall (Right)", "Land_BasaltWall_01_d_right_F", 950, "object"],
	["Basalt Wall (Piles)", "Land_BasaltKerb_01_pile_F", 450, "object"],
	["Basalt Kerb Platform", "Land_BasaltKerb_01_platform_F", 550, "object"],
	["Basalt Kerb 2m", "Land_BasaltKerb_01_2m_F", 350, "object"],
	["Basalt Kerb 2m broken", "Land_BasaltKerb_01_2m_d_F", 350, "object"],
	["Basalt Kerb 4m", "Land_BasaltKerb_01_4m_F", 450, "object"],
	["Rai Stone Ancient", "Land_RaiStone_01_F", 450, "object"],
		
	["Cargo Post Tropic", "Land_Cargo_Patrol_V4_F", 1800, "object"],
	["Cargo Post Khaki", "Land_Cargo_Patrol_V3_F", 1800, "object"],
	["Cargo Post Green", "Land_Cargo_Patrol_V1_F", 1800, "object"],
	["Cargo Post Rusty", "Land_Cargo_Patrol_V2_F", 1800, "object"],
	
	["Cargo House Tropic", "Land_Cargo_House_V4_F", 2800, "object"],
	["Cargo House Khaki", "Land_Cargo_House_V3_F", 2800, "object"],
	["Cargo House Green", "Land_Cargo_House_V1_F", 2800, "object"],
	["Cargo House Rusty", "Land_Cargo_House_V2_F", 2800, "object"],
	
	["Headquarter Tropic", "Land_Cargo_HQ_V4_F", 3800, "object"],
	["Headquarter Khaki", "Land_Cargo_HQ_V3_F", 3800, "object"],
	["Headquarter Green", "Land_Cargo_HQ_V1_F", 3800, "object"],
	["Headquarter Rusty", "Land_Cargo_HQ_V2_F", 3800, "object"],
	
	["Cargo Tower Tropic", "Land_Cargo_Tower_V4_F", 9800, "object"],
	["Cargo Tower Khaki", "Land_Cargo_Tower_V3_F", 9800, "object"],
	["Cargo Tower Green", "Land_Cargo_Tower_V1_F", 9800, "object"],
	["Cargo Tower Rusty", "Land_Cargo_Tower_V2_F", 9800, "object"],
	
	["Cover Tent Small", "Land_IRMaskingCover_02_F", 900, "object"],
	["Cover Tent Large", "Land_IRMaskingCover_01_F", 1600, "object"],
	["House Native Small", "Land_House_Native_01_F", 65000, "object"],
	["House Native Large", "Land_House_Native_02_F", 78000, "object"],
	["Tanoa Residence Big", "Land_Slum_03_F", 125000, "object"],
	
	["House Yellow", "Land_House_Small_01_F", 95000, "object"],
	["Garage Shelter", "Land_GarageShelter_01_F", 75000, "object"],
	["House Turquoise", "Land_House_Small_03_F", 85000, "object"],
	["Guard Tower", "Land_LifeguardTower_01_F", 3800, "object"],
	
	["Trench Forest", "Land_Trench_01_forest_F", 2900, "object"],
	["Trench Grass", "Land_Trench_01_grass_F", 2900, "object"],
	["Trench Frame", "Land_TrenchFrame_01_F", 1800, "object"],	
	
	["Tanoa Stone House", "Land_House_Small_02_F", 98000, "object"],
	["Ancient Statue Bird (Mission Object)", "Land_AncientStatue_01_F", 4500000, "object"],
	["Ancient Statue Sun (Mission Object)", "Land_AncientStatue_02_F", 4500000, "object"],
	["Ancient Totem (Mission Object)", "Land_PalmTotem_03_F", 3200000, "object"],
	["Ancient Totem Long (Mission Object)", "Land_PalmTotem_01_F", 3200000, "object"],
	["Ancient Totem Short(Mission Object)", "Land_PalmTotem_02_F", 3200000, "object"],
	["Petroglyph Wall 1 (Mission Object)", "Land_PetroglyphWall_01_F", 3800000, "object"],
	["Petroglyph Wall 2 (Mission Object)", "Land_PetroglyphWall_02_F", 3800000, "object"],	
	["Land Grave 1 (Mission Object)", "Land_Grave_07_F", 111800, "object"],
	["Land Grave 2 (Mission Object)", "Land_Grave_04_F", 111800, "object"],
	["Tombstone 1 (Mission Object)", "Land_Tombstone_02_F", 111800, "object"],
	["Tombstone 2 (Mission Object)", "Land_Tombstone_03_F", 111800, "object"],
	["Mausoleum (Mission Object)", "Land_Mausoleum_01_F", 222800, "object"],
	["Pavement 1 (Mission Object)", "Land_GardenPavement_01_F", 111800, "object"],
	["Pavement 2 (Mission Object)", "Land_GardenPavement_02_F", 111800, "object"]

		
	
	
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 500, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],
	["Offroad Gendamerie", "B_GEN_Offroad_01_gen_F", 2500, "vehicle"],
	

	["MB 4WD [DLC]", "C_Offroad_02_unarmed_F", 1500, "vehicle"],
	["MB 4WD light[DLC]", "I_C_Offroad_02_unarmed_F", 1500, "vehicle"],
	
	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck Tanoa [DLC]", "I_C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 15000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 12500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 27500, "vehicle"],

	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 12500, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 27500, "vehicle"],

	["Zamak Transport [DLC]", "C_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Covered [DLC]", "C_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel [DLC]", "C_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Repair [DLC]", "C_Truck_02_box_F", 10000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 25000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Prowler (Doorless) [DLC]", "B_CTRG_LSV_01_light_F", 1500, "vehicle"],
	["Prowler [DLC]", "B_T_LSV_01_unarmed_F", 2000, "vehicle"],
	["Prowler HMG [DLC]", "B_T_LSV_01_armed_F", 6000, "vehicle"],
	["Qilin [DLC]", "O_T_LSV_02_unarmed_F", 2000, "vehicle"],
	["Qilin Minigun [DLC]", "O_T_LSV_02_armed_F", 6000, "vehicle"],
	["Hunter", "B_MRAP_01_F", 6000, "vehicle"],
	//["Hunter HMG", "B_MRAP_01_hmg_F", 25000, "vehicle"],
	//["Hunter GMG", "B_MRAP_01_gmg_F", 27500, "vehicle"],
	["Strider (unarmed)", "I_MRAP_03_F", 6000, "vehicle"],
	//["Strider HMG", "I_MRAP_03_hmg_F", 25000, "vehicle"],
	//["Strider GMG", "I_MRAP_03_gmg_F", 27500, "vehicle"],
	["Ifrit (unarmed)", "O_MRAP_02_F", 6000, "vehicle"],
	//["Ifrit HMG", "O_MRAP_02_hmg_F", 25000, "vehicle"],
	//["Ifrit GMG", "O_MRAP_02_gmg_F",27500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 32500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 37500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 50000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159

	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],

	["UH-80 Ghost Hawk", "B_Heli_Transport_01_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 30000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 30000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 30000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 30000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 35000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 40000, "vehicle"], // Armed AW159
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 125000, "vehicle"], // Mi-28 with gunner
	["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 125000, "vehicle"], // Mi-28 with gunner (black camo)
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 150000, "vehicle"] // RAH-66 with gunner
	
];

planesArray = compileFinal str
[
	["Caesar BTT [DLC]", "C_Plane_Civil_01_F", 3000, "vehicle"],
	["Caesar BTT Race[DLC]", "C_Plane_Civil_01_racing_F", 6000, "vehicle"],
	
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 45000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 60000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 60000, "vehicle"],

	["V-44 X Blackfish (Infantry) [DLC]", "B_T_VTOL_01_infantry_F", 20000, "vehicle"],
	["V-44 X Blackfish (Vehicle) [DLC]", "B_T_VTOL_01_vehicle_F", 20000, "vehicle"],
	["V-44 X Blackfish (Gunship) [DLC]", "B_T_VTOL_01_armed_F", 50000, "vehicle"],
	["Y-32 Xi'an Inf[DLC]", "O_T_VTOL_02_infantry_F", 60000, "vehicle"],
	["Y-32 Xi'an Veh[DLC]", "O_T_VTOL_02_vehicle_F", 60000, "vehicle"],
	
	["MQ4A Greyhawk ATGM UAV", "B_UAV_02_F", 120000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 100000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 120000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 100000, "vehicle"]

	
];

boatsArray = compileFinal str
[
	["Water Scooter [DLC]", "C_Scooter_Transport_01_F", 500, "boat"],

	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_01_police_F", 1100, "boat"],

	["RHIB [DLC]", "I_C_Boat_Transport_02_F", 1250, "boat"],

	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Bumfucker", _texDir + "bumfucker.jpg"],
			["Jackass", _texDir + "jackass.jpg"],
			["Jerk", _texDir + "jerk.jpg"],
			["Muttonhead", _texDir + "muttonhead.jpg"],
			["Bitch", _texDir + "bitch.jpg"],
			["Scumbag", _texDir + "scumbag.jpg"],
			["Slowcoach", _texDir + "slowcoach.jpg"],
			["Wanker", _texDir + "wanker.jpg"]
			
			
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Black (Kajman)", [
				[0, "\A3\air_f_beta\Heli_Attack_02\Data\heli_attack_02_body1_black_co.paa"],
				[1, "\A3\air_f_beta\Heli_Attack_02\Data\heli_attack_02_body2_black_co.paa"]
			]],
			["Rusty (Kajman)", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy (Kajman)", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Ghost Hawk camo 
		"Heli_Transport_01_base_F",
		[
			["Olive (Ghost Hawk)", [
				[0, "\A3\air_f_beta\Heli_Transport_01\Data\heli_transport_01_ext01_blufor_co.paa"],
				[1, "\A3\air_f_beta\Heli_Transport_01\Data\heli_transport_01_ext02_blufor_co.paa"]
			]]
		]
	],
	[ // Strider NATO color
		"MRAP_03_base_F",
		[
			["NATO Tan (Strider)", [
				[0, "\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_co.paa"],
				[1, "\A3\data_f\vehicles\turret_co.paa"]
			]]
		]
	],
	[ // Gorgon NATO color
		"APC_Wheeled_03_base_F",
		[
			["NATO Tan (Gorgon)", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty (Hatchback)", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500],
	
	["LSD", "lsd", localize "STR_WL_ShopDescriptions_LSD", "client\icons\lsd.paa", 500, 200],
	["Marijuana", "marijuana", localize "STR_WL_ShopDescriptions_Marijuana", "client\icons\marijuana.paa", 500, 200],
	["Cocaine", "cocaine", localize "STR_WL_ShopDescriptions_Cocaine", "client\icons\cocaine.paa", 500, 200],
	["Heroin", "heroin", localize "STR_WL_ShopDescriptions_Heroin", "client\icons\heroin.paa", 500, 200],
	["Crack", "crack", localize "STR_WL_ShopDescriptions_Crack", "client\icons\crack.paa", 500, 200],
	["Crystal Meth", "meth", localize "STR_WL_ShopDescriptions_Meth", "client\icons\meth.paa", 500, 200]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
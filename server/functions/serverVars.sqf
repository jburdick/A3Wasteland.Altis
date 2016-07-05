// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, [GoT] JoSchaap, MercyfulFate, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

if (!isServer && hasInterface) exitWith {};

diag_log "WASTELAND SERVER - Initializing Server Vars";

if (isServer) then
{
	#include "setupServerPVars.sqf"
};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
	"C_Quadbike_01_F",
	"C_Kart_01_F",
	"C_Hatchback_01_F",
	"C_Hatchback_01_sport_F",
	"C_SUV_01_F",
	"C_Offroad_01_F",
	"I_G_Offroad_01_F",
	"B_GEN_Offroad_01_gen_F",
	"I_C_Offroad_02_unarmed_F",
	"C_Offroad_02_unarmed_F",
	"C_Van_01_box_F",
	"C_Van_01_transport_F"
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
	"B_Quadbike_01_F",
	"O_Quadbike_01_F",
	"I_Quadbike_01_F",
	"I_G_Quadbike_01_F",
	"O_Truck_02_covered_F",
	"I_Truck_02_covered_F",
	"O_Truck_02_transport_F",
	"I_Truck_02_transport_F",
	"B_T_LSV_01_unarmed_F",
	"O_T_LSV_02_unarmed_F",
	"I_G_Offroad_01_armed_F"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
	"I_Truck_02_Fuel_F",
	"O_Truck_02_Fuel_F",
	"I_Truck_02_medical_F",
	"O_Truck_02_medical_F",
	"B_MRAP_01_F",
	"O_MRAP_02_F",
	"I_MRAP_03_F"
];

//Water Vehicles - Random Spawns
waterVehicles =
[
	"B_Lifeboat",
	"O_Lifeboat",
	"C_Rubberboat",
	"C_Scooter_Transport_01_F",
	"I_C_Boat_Transport_02_F",
	// "B_SDV_01_F",
	// "O_SDV_01_F",
	// "I_SDV_01_F",
	"B_Boat_Transport_01_F",
	"O_Boat_Transport_01_F",
	"I_Boat_Transport_01_F",
	"I_G_Boat_Transport_01_F",
	// "B_Boat_Armed_01_minigun_F",
	// "O_Boat_Armed_01_hmg_F",
	// "I_Boat_Armed_01_minigun_F",
	"C_Boat_Civil_01_F",
	"C_Boat_Civil_01_police_F",
	"C_Boat_Civil_01_rescue_F"
];

//Essential List - Random Spawns.
essentialsList =
[
	"B_supplyCrate_F",
	"Land_Sacks_goods_F",
	"Land_BarrelWater_F"
];

//Object List - Random Spawns.
objectList =
[
	"CamoNet_INDP_open_F",
	"CamoNet_INDP_open_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagBunker_Tower_F",
	"Land_BarGate_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncShelter_F",
	"Land_CncWall4_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierTower_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrierWall6_F",
	"Land_MetalBarrel_F",
	"Land_Mil_ConcreteWall_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Pipes_large_F",
	"Land_RampConcrete_F",
	"Land_RampConcreteHigh_F",
	"Land_Shoot_House_Wall_F"
];

//Object List - Random Spawns.
staticWeaponsList =
[
	"B_Mortar_01_F",
	"O_Mortar_01_F",
	"I_Mortar_01_F",
	"I_G_Mortar_01_F"
];

//Object List - Random Helis.
staticHeliList =
[
	"C_Heli_Light_01_civil_F",
	"B_Heli_Light_01_F",
	"O_Heli_Light_02_unarmed_F",
	"I_Heli_light_03_unarmed_F"
	// don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
	// "B_Plane_CAS_01_F",
	// "O_Plane_CAS_02_F",
	// "I_Plane_Fighter_03_CAS_F",
	"C_Plane_Civil_01_F",
	"C_Plane_Civil_01_Racing_F"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
	"hgun_PDW2000_F",
	"SMG_05_F", 
	"SMG_02_F",
	"SMG_01_F",
	"arifle_SDAR_F",
	"arifle_Mk20C_plain_F",
	"arifle_Mk20C_F",
	"arifle_Mk20_plain_F",
	"arifle_Mk20_F",
	"arifle_Mk20_GL_plain_F",
	"arifle_Mk20_GL_F",
	"arifle_TRG20_F",
	"arifle_TRG21_F",
	"arifle_TRG21_GL_F",
	"arifle_SPAR_01_blk_F",
	"arifle_SPAR_01_snd_F",
	"arifle_SPAR_01_khk_F",
	"arifle_SPAR_01_GL_snd_F",
	"arifle_SPAR_01_GL_blk_F",
	"arifle_SPAR_01_GL_khk_F",
	"arifle_SPAR_03_snd_F",
	"arifle_SPAR_03_blk_F",
	"arifle_SPAR_03_khk_F",
	"arifle_CTAR_blk_F",
	"arifle_CTAR_GL_blk_F",
	"arifle_ARX_ghex_F",
	"arifle_AKS_F",
	"arifle_AKM_F",
	"arifle_AK12_F",
	"arifle_AK12_GL_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_F",
	"arifle_Katiba_GL_F",
	"arifle_MXC_F",
	"arifle_MXC_Black_F",
	"arifle_MX_F",
	"arifle_MX_khk_F",
	"arifle_MX_Black_F",
	"arifle_MX_GL_F",
	"arifle_MX_GL_Black_F",
	"arifle_MX_GL_khk_F",
	"arifle_MXM_F",
	"arifle_MXM_Black_F",
	"arifle_MXM_khk_F",
	"srifle_DMR_01_F",
	"srifle_EBR_F",
	"srifle_DMR_07_blk_F",
	"srifle_DMR_07_hex_F",
	"srifle_DMR_07_ghex_F",
	"arifle_SPAR_03_blk_F",
	"srifle_DMR_06_camo_F",
	"srifle_DMR_06_olive_F",
	"srifle_DMR_03_F",
	"srifle_DMR_03_multicam_F",
	"srifle_DMR_03_khaki_F",
	"srifle_DMR_03_tan_F",
	"srifle_DMR_03_woodland_F",
	"srifle_DMR_02_F",
	"srifle_DMR_02_camo_F",
	"srifle_DMR_02_sniper_F",
	"srifle_DMR_05_blk_F",
	"srifle_DMR_05_hex_F",
	"srifle_DMR_05_tan_f",
	"srifle_LRR_LRPS_F",
	"srifle_LRR_camo_LRPS_F",
	"srifle_LRR_tna_LRPS_F",
	"srifle_GM6_LRPS_F",
	"srifle_GM6_camo_LRPS_F",
	"srifle_GM6_ghex_LRPS_F",
	"srifle_DMR_04_F",
	"srifle_DMR_04_tan_F",
	"arifle_ARX_blk_F",
	"arifle_ARX_hex_F",
	"arifle_ARX_ghex_F",
	"arifle_MX_SW_F",
	"arifle_MX_SW_Black_F",
	"LMG_Mk200_F",
	"LMG_Zafir_F",
	"arifle_SPAR_02_blk_F",
	"arifle_CTARS_blk_F",
	"LMG_03_F",
	"MMG_02_sand_F",
	"MMG_02_camo_F",
	"MMG_02_black_F",
	"MMG_01_tan_F",
	"MMG_01_hex_F",
	"launch_RPG7_F",
	"launch_RPG32_F",
	"launch_RPG32_ghex_F",
	"launch_NLAW_F",
	"launch_Titan_short_F",
	"launch_O_Titan_short_F",
	"launch_I_Titan_short_F",
	"launch_O_Titan_short_ghex_F",
	"launch_B_Titan_short_tna_F",
	"launch_Titan_F",
	"launch_O_Titan_F",
	"launch_I_Titan_F",
	"launch_B_Titan_tna_F",
	"launch_O_Titan_ghex_F"
];

vehicleAddition =
[
	"MiniGrenade",
	"HandGrenade",
	"APERSTripMine_Wire_Mag",
	"APERSBoundingMine_Range_Mag",
	"APERSMine_Range_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"ATMine_Range_Mag",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"SmokeShell",
	"SmokeShellPurple",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellYellow",
	"SmokeShellOrange",
	"SmokeShellRed",
	"muzzle_snds_L",
	"muzzle_snds_acp",
	"muzzle_snds_M",
	"muzzle_snds_m_khk_F",
	"muzzle_snds_m_snd_F",
	"muzzle_snds_58_blk_F",
	"muzzle_snds_58_wdm_F",
	"muzzle_snds_H",
	"muzzle_snds_H_khk_F",
	"muzzle_snds_H_snd_F",
	"muzzle_snds_H_MG",
	"muzzle_snds_B",
	"muzzle_snds_B_khk_F",
	"muzzle_snds_B_snd_F",
	"muzzle_snds_338_black",
	"muzzle_snds_338_green",
	"muzzle_snds_338_sand",
	"muzzle_snds_93mmg",
	"muzzle_snds_93mmg_tan",
	"muzzle_snds_65_TI_blk_F",
	"muzzle_snds_65_TI_hex_F", 
	"muzzle_snds_65_TI_ghex_F",
	"bipod_01_F_blk",
	"bipod_02_F_blk",
	"bipod_03_F_blk",
	"bipod_01_F_mtp",
	"bipod_02_F_hex",
	"bipod_03_F_oli",
	"bipod_01_F_snd",
	"bipod_02_F_tan",
	"bipod_01_F_khk",
	"acc_flashlight",
	"acc_pointer_IR",
	"optic_Yorris",
	"optic_MRD",
	"optic_aco_smg",
	"optic_Holosight_smg",
	"optic_Aco",
	"optic_Aco_grn",
	"optic_Holosight",
	"optic_Holosight_smg_blk_F",
	"optic_MRCO", 
	"optic_Arco",
	"optic_Arco_blk_F",
	"optic_Arco_ghex_F",
	"optic_Hamr",
	"optic_Hamr_khk_F",
	"optic_ERCO_blk_F",
	"optic_ERCO_khk_F",
	"optic_ERCO_snd_F",
	"optic_SOS",
	"optic_SOS_khk_F",
	"optic_DMS",
	"optic_DMS_ghex_F",
	"optic_AMS",
	"optic_AMS_khk",
	"optic_AMS_snd",
	"optic_KHS_blk",
	"optic_KHS_hex",
	"optic_KHS_tan",
	"optic_KHS_old",
	"optic_LRPS",
	"optic_LRPS_ghex_F",
	"optic_LRPS_tna_F",
	"optic_NVS",
	"optic_tws",
	"optic_tws_mg",
	"optic_Nightstalker"
	
];

vehicleAddition2 =
[
	"Medikit",
	"FirstAidKit",
	"ToolKit",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_yellow",
	"Chemlight_red",
	"B_IR_Grenade",
	"O_IR_Grenade",
	"I_IR_Grenade"
];

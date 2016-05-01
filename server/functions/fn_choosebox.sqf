// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_choosebox"
//	@file Author: BIBMonkey
//	@file Created: 30 APR 16

if (!isServer) exitWith {};

private ["_box", "_boxType"];
_box = _this select 0;
_boxType = _this select 1;

_box setVariable [call vChecksum, true];

_box allowDamage false;
_box setVariable ["A3W_inventoryLockR3F", true, true];

switch (_boxType) do
{

	case "Launchers_Tier_2":
	{
		["CargoNet_01_box_F", "B_supplyCrate_F"] call BIS_fnc_selectRandom;
	};
	case "Diving_Gear":
	{
		["CargoNet_01_box_F", "B_supplyCrate_F"] call BIS_fnc_selectRandom;
	};
	case "General_supplies":
	{
	["Box_IND_Support_F", "Box_NATO_Support_F", "Box_EAST_Support_F"] call BIS_fnc_selectRandom;
	};
	Case "GEVP":
	{
		["CargoNet_01_box_F", "B_supplyCrate_F", "I_CargoNet_01_ammo_F", "O_CargoNet_01_ammo_F", "B_CargoNet_01_ammo_F"] call BIS_fnc_selectRandom;
	};

	case "Ammo_Drop":
	{
		["Box_NATO_Ammo_F", "Box_IND_Ammo_F", "Box_EAST_Ammo_F"] call BIS_fnc_selectRandom;
	};
	case "mission_AALauncher":
	{
		["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
	};
	case "mission_CompactLauncher":
	{
		["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
	};
	case "mission_snipers":
	{
		["Box_Nato_WpsSpecial_F", "Box_IND_WpsSpecial_F", "Box_EAST_WpsSpecial_F"] call BIS_fnc_selectRandom;
	};
	case "mission_RPG":
	{
		["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
	};
	case "mission_PCML":
	{
		["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
	};
	case "mission_Pistols":
	{
		["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
	};
	case "mission_AssRifles":
	{
		["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
	};
	case "mission_SMGs":
	{
		["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
	};
	case "mission_LMGs":
	{
		["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
	};
	case "Medical":
	{
		["Box_IND_Support_F", "Box_NATO_Support_F", "Box_EAST_Support_F"] call BIS_fnc_selectRandom;
	};

};

[_box] call processItems;
/*
Rocket:
Box_IND_WpsLaunch_F
Box_NATO_WpsLaunch_F
Box_EAST_WpsLaunch_F

Special Weapons:
Box_Nato_WpsSpecial_F
Box_IND_WpsSpecial_F
Box_EAST_WpsSpecial_F

Basic Weapons:
Box_IND_Wps_F
Box_NATO_Wps_F
Box_EAST_Wps_F

Grenades:
Box_IND_Grendes_F
Box_NATO_Grendes_F
Box_EAST_Grendes_F

Explosives:
Box_IND_AmmoOrd_F
Box_NATO_AmmoOrd_F
Box_EAST_AmmoOrd_F

Support:
Box_IND_Support_F
Box_NATO_Support_F
Box_EAST_Support_F

Special Cargonet:
I_CargoNet_01_ammo_F
O_CargoNet_01_ammo_F
B_CargoNet_01_ammo_F

Vehicle Ammo:
Box_NATO_AmmoVeh_F
Box_NATO_AmmoVeh_F
Box_NATO_AmmoVeh_F

Special Cargo:
CargoNet_01_box_F
B_supplyCrate_F

Weapons Cache
Box_FIA_Ammo_F
Box_FIA_WPS_F
Box_FIA_Support_F
*/


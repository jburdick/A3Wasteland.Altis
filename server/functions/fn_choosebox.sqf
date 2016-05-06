// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_choosebox.sqf  "fn_choosebox"
//	@file Author: BIBMonkey
//	@file Created: 30 APR 16

if (!isServer) exitWith {};

private ["_boxType", "_case", "_box"];
_boxType = _this select 0;
_here = _this select 1;

switch (_boxType) do
{

	case "Launchers_Tier_2":
	{
		_case = ["CargoNet_01_box_F", "B_supplyCrate_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "Diving_Gear":
	{
		_case = ["CargoNet_01_box_F", "B_supplyCrate_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "General_supplies":
	{
		_case = ["Box_IND_Support_F", "Box_NATO_Support_F", "Box_EAST_Support_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	Case "GEVP":
	{
		_case = ["CargoNet_01_box_F", "B_supplyCrate_F", "I_CargoNet_01_ammo_F", "O_CargoNet_01_ammo_F", "B_CargoNet_01_ammo_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};

	case "Ammo_Drop":
	{
		_case = ["Box_NATO_Ammo_F", "Box_IND_Ammo_F", "Box_EAST_Ammo_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_AALauncher":
	{
		_case = ["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_CompactLauncher":
	{
		_case = ["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_snipers":
	{
		_case = ["Box_Nato_WpsSpecial_F", "Box_IND_WpsSpecial_F", "Box_EAST_WpsSpecial_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_RPG":
	{
		_case = ["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_PCML":
	{
		_case = ["Box_IND_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_EAST_WpsLaunch_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_Pistols":
	{
		_case = ["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_AssRifles":
	{
		_case = ["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_SMGs":
	{
		_case = ["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "mission_LMGs":
	{
		_case = ["Box_IND_Wps_F", "Box_NATO_Wps_F", "Box_EAST_Wps_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};
	case "Medical":
	{
		_case = ["Box_IND_Support_F", "Box_NATO_Support_F", "Box_EAST_Support_F"] call BIS_fnc_selectRandom;
		_box = createVehicle [_Case] getMarkerPos _here;
		_box = setDir random 360;
		_box = allowDamage false;
		[_box, _boxType] call fn_refillbox;
	};

};

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


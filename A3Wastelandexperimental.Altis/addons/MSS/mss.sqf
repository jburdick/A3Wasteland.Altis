/*
	file: mss.sqf
	author: Miller
*/
private["_vehicle","_nope"];
MSS_Helo = 0;
MSS_TruckNato = 0;
MSS_Huron = 0;
MSS_TruckMedNato = 0;

//BLUFOR
//hunter
_vehicle = nearestObject [player, "B_MRAP_01_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_hunter";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
//hunter gmg
_vehicle = nearestObject [player, "B_MRAP_01_gmg_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_hunterwep";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
//hunter hmg
_vehicle = nearestObject [player, "B_MRAP_01_hmg_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_hunterwep";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// HEMTT Medical
_vehicle = nearestObject [player, "B_Truck_01_medical_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_hemttmed";
		MSS_TruckMedNato = 1;
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// HEMTT
_vehicle = nearestObject [player, "B_Truck_01_transport_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_hemtt";
		MSS_TruckNato = 1;
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// HEMTT covered
_vehicle = nearestObject [player, "B_Truck_01_covered_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_hemtt";
		MSS_TruckNato = 1;
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// Marshall
_vehicle = nearestObject [player, "B_APC_Wheeled_01_cannon_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_spznato";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// Panther
_vehicle = nearestObject [player, "B_APC_Tracked_01_rcws_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_apcnato";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// Ghosthawk
_vehicle = nearestObject [player, "B_Heli_Transport_01_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_ghosthawk";
		MSS_Helo = 1;
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
_vehicle = nearestObject [player, "B_Heli_Transport_01_camo_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_ghosthawk";
		MSS_Helo = 1;
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// M2A1 Slammer
_vehicle = nearestObject [player, "B_MBT_01_cannon_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_slammer";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
// M2A1 Slammer UP
_vehicle = nearestObject [player, "B_MBT_01_TUSK_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_slammer";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
//Speedboat Minigun
_vehicle = nearestObject [player, "B_Boat_Armed_01_minigun_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_attkboat";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
//Huron (armed/unarmed)
_vehicle = nearestObject [player, "B_Heli_Transport_03_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_huron";
		MSS_Huron = 1;
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};
_vehicle = nearestObject [player, "B_Heli_Transport_03_unarmed_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_huron";
		MSS_Huron = 1;
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};

//INDEPENDENT
//Speedboat Minigun
_vehicle = nearestObject [player, "I_Boat_Armed_01_minigun_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_attkboat";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};

//OPFOR
//Speedboat HMG
_vehicle = nearestObject [player, "O_Boat_Armed_01_hmg_F"];
if (_vehicle == vehicle player) exitWith
	{
		createDialog "mss_attkboat";
		execVM "MSS\mss_update.sqf";
		disableSerialization;
	};

// Not supported
_nope = localize "STR_MSS_notsup";
hintSilent _nope;
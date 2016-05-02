// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: mission_altisPatrol.sqf
//	@file Author: JoSchaap, AgentRev, LouD

if (!isServer) exitwith {};
#include "moneyMissionDefines.sqf";

private ["_convoyVeh","_veh1","_veh2","_veh3","_veh4","_veh5","_veh6","_veh7","_createVehicle","_pos","_rad","_vehiclePosArray","_vPos1","_vPos2","_vPos3","_vehiclePos1","_vehiclePos2","_vehiclePos3","_vehiclePos4","_vehicles","_leader","_speedMode","_waypoint","_vehicleName","_numWaypoints","_box1","_box2","_box3","_box4"];

_setupVars =
{
	_missionType = "Altis Patrol";
	_locationsArray = nil;
};

_setupObjects =
{
	_town = (call cityList) call BIS_fnc_selectRandom;
	_missionPos = markerPos (_town select 0);

	_convoyVeh =
		[
			//NATO Patrols
			["B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F", "B_APC_Wheeled_01_cannon_F", "B_APC_Wheeled_01_cannon_F", "B_MRAP_01_hmg_F", "B_MRAP_01_gmg_F"], // Light Patrol
			["B_MRAP_01_hmg_F", "B_MBT_01_cannon_F", "B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_MRAP_01_gmg_F"], // Medium Patrol
			["B_MBT_01_TUSK_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_MBT_01_cannon_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_TUSK_F"], // Heavy Patrol
			["B_MBT_01_TUSK_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_cannon_F", "B_APC_Tracked_01_AA_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_TUSK_F"], // AA Patrol
			["B_APC_Tracked_01_CRV_F", "B_APC_Wheeled_01_cannon_F", "B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_AA_F", "B_APC_Wheeled_01_cannon_F", "B_APC_Tracked_01_rcws_F"], // Route Clearance Patrol
			["B_MBT_01_TUSK_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_TUSK_F", "B_MBT_01_arty_F", "B_APC_Tracked_01_AA_F", "B_MBT_01_TUSK_F"], // Arty Patrol

			//CSAT Patrols
			["O_MRAP_02_hmg_F", "O_MBT_02_cannon_F", "O_APC_Wheeled_02_rcws_F", "O_APC_Tracked_02_AA_F", "O_MBT_02_cannon_F", "O_MRAP_02_gmg_F"], //Medium Patrol

			//AAF Patrols
			["I_MRAP_03_gmg_F", "I_MBT_03_cannon_F", "I_APC_Wheeled_03_cannon_F", "I_APC_tracked_03_cannon_F", "I_MBT_03_cannon_F", "I_MRAP_03_hmg_F"] //Medium Patrol
		] call BIS_fnc_selectRandom;

	_veh1 = _convoyVeh select 0;
	_veh2 = _convoyVeh select 1;
	_veh3 = _convoyVeh select 2;
	_veh4 = _convoyVeh select 3;
	_veh5 = _convoyVeh select 4;
	_veh6 = _convoyVeh select 5;
	_veh7 = _convoyVeh select 6;

	_createVehicle = {
		private ["_type","_position","_direction","_vehicle","_soldier"];

		_type = _this select 0;
		_position = _this select 1;
		_direction = _this select 2;

		_vehicle = createVehicle [_type, _position, [], 0, "None"];
		[_vehicle] call vehicleSetup;

		_vehicle setDir _direction;
		_aiGroup addVehicle _vehicle;

		_soldier = [_aiGroup, _position] call createRandomSoldier;
		_soldier moveInDriver _vehicle;
		_soldier = [_aiGroup, _position] call createRandomSoldier;
		_soldier moveInCommander _vehicle;
		_soldier = [_aiGroup, _position] call createRandomSoldier;
		_soldier moveInGunner _vehicle;

		//_vehicle setVehicleLock "UNLOCKED";  // force vehicles to be unlocked
		//_vehicle setVariable ["R3F_LOG_disabled", false, true]; // force vehicles to be unlocked
		_vehicle setVariable ["R3F_LOG_disabled", true, true]; // force vehicles to be locked
		[_vehicle, _aiGroup] spawn checkMissionVehicleLock; // force vehicles to be locked

		_vehicle
	};

	_aiGroup = createGroup CIVILIAN;

	//_pos = getMarkerPos (_town select 0);
	_rad = _town select 1;
	_vehiclePosArray = [_missionPos,_rad,_rad + 50,5,0,0,0] call findSafePos;
	/*_vPos1 = _vehiclePosArray select 0;
	_vPos2 = _vehiclePosArray select 1;
	_vPos3 = _vehiclePosArray select 2;
	_vehiclePos1 = [_vPos1 + 5, _vPos2 + 5, _vPos3];
	_vehiclePos2 = [_vPos1 + 10, _vPos2 + 10, _vPos3];
	_vehiclePos3 = [_vPos1 + 15, _vPos2 + 15, _vPos3];
	_vehiclePos4 = [_vPos1 + 20, _vPos2 + 20, _vPos3];*/

	_vehicles =
	[
		[_veh1, _vehiclePosArray, 0] call _createVehicle,
		[_veh2, _vehiclePosArray, 0] call _createVehicle,
		[_veh3, _vehiclePosArray, 0] call _createVehicle,
		[_veh4, _vehiclePosArray, 0] call _createVehicle,
		[_veh5, _vehiclePosArray, 0] call _createVehicle,
		[_veh6, _vehiclePosArray, 0] call _createVehicle,
		[_veh7, _vehiclePosArray, 0] call _createVehicle
	];

	_leader = effectiveCommander (_vehicles select 0);
	_aiGroup selectLeader _leader;
	_leader setRank "LIEUTENANT";

	_aiGroup setCombatMode "GREEN"; // units will defend themselves
	_aiGroup setBehaviour "SAFE"; // units feel safe until they spot an enemy or get into contact
	_aiGroup setFormation "FILE";

	_speedMode = if (missionDifficultyHard) then { "NORMAL" } else { "LIMITED" };
	_aiGroup setSpeedMode _speedMode;

	{
		_waypoint = _aiGroup addWaypoint [markerPos (_x select 0), 0];
		_waypoint setWaypointType "MOVE";
		_waypoint setWaypointCompletionRadius 50;
		_waypoint setWaypointCombatMode "GREEN";
		_waypoint setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
		_waypoint setWaypointFormation "FILE";
		_waypoint setWaypointSpeed _speedMode;
	} forEach ((call cityList) call BIS_fnc_arrayShuffle);

	_missionPos = getPosATL leader _aiGroup;

	_missionPicture = getText (configFile >> "CfgVehicles" >> _veh2 >> "picture");
	_vehicleName = getText (configFile >> "CfgVehicles" >> _veh2 >> "displayName");
	_vehicleName2 = getText (configFile >> "CfgVehicles" >> _veh3 >> "displayName");
	_vehicleName3 = getText (configFile >> "CfgVehicles" >> _veh4 >> "displayName");

	_missionHintText = format ["A military convoy is patrolling Altis! Stop the patrol and capture the goods and money!", moneyMissionColor];

	_numWaypoints = count waypoints _aiGroup;
};

_waitUntilMarkerPos = {getPosATL _leader};
_waitUntilExec = nil;
_waitUntilCondition = {currentWaypoint _aiGroup >= _numWaypoints};

_failedExec = nil;

// _vehicles are automatically deleted or unlocked in missionProcessor depending on the outcome
_drop_item =
{
	private["_item", "_pos"];
	_item = _this select 0;
	_pos = _this select 1;

	if (isNil "_item" || {typeName _item != typeName [] || {count(_item) != 2}}) exitWith {};
	if (isNil "_pos" || {typeName _pos != typeName [] || {count(_pos) != 3}}) exitWith {};

	private["_id", "_class"];
	_id = _item select 0;
	_class = _item select 1;

	private["_obj"];
	_obj = createVehicle [_class, _pos, [], 5, "None"];
	_obj setPos ([_pos, [[2 + random 3,0,0], random 360] call BIS_fnc_rotateVector2D] call BIS_fnc_vectorAdd);
	_obj setVariable ["mf_item_id", _id, true];
};

_successExec =
{
	// Mission completed

	for "_x" from 1 to 10 do
	{
		_cash = "Land_Money_F" createVehicle markerPos _marker;
		_cash setPos ((markerPos _marker) vectorAdd ([[2 + random 2,0,0], random 360] call BIS_fnc_rotateVector2D));
		_cash setDir random 360;
		_cash setVariable["cmoney",7500,true];
		_cash setVariable["owner","world",true];
	};

	_box1 = "B_supplyCrate_F" createVehicle getMarkerPos _marker;
    [_box1,"Launchers_Tier_2"] call fn_refillbox;
	_box1 allowDamage false;

	_box2 = "Box_NATO_Wps_F" createVehicle getMarkerPos _marker;
    [_box2,"mission_USSpecial2"] call fn_refillbox;
	_box2 allowDamage false;

	_box3 = "Box_NATO_Support_F" createVehicle getMarkerPos _marker;
    [_box3,"mission_snipers"] call fn_refillbox;
	_box3 allowDamage false;

	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1, _box2, _box3, _box4];

	_successHintMessage = "The patrol has been stopped, the money and crates and vehicles are yours to take.";
};

_this call moneyMissionProcessor;
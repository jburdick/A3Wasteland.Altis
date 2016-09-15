// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 2.1
//	@file Name: mission_Convoy.sqf
//	@file Author: JoSchaap / routes by Del1te - (original idea by Sanjo), AgentRev
//	@file Created: 31/08/2013 18:19

if (!isServer) exitwith {};
#include "patrolMissionDefines.sqf";

private ["_convoyVeh", "_veh1", "_veh2", "_veh3", "_createVehicle", "_vehicles", "_leader", "_speedMode", "_waypoint", "_vehicleName", "_numWaypoints", "_box1", "_box2"];

_setupVars =
{
	_missionType = "Gendarmerie Convoy";
	_locationsArray = LandConvoyPaths;
	
	_reinforceChance = 0; // Chance of reinforcements being called
	_minReinforceGroups = 1; //minimum number of paradrop groups that will respond to call
	_maxReinforceGroups = 3; //maximum number of paradrop groups that will respond to call	
};

_setupObjects =
{
	private ["_starts", "_startDirs", "_waypoints"];
	call compile preprocessFileLineNumbers format ["mapConfig\convoys\%1.sqf", _missionLocation];

	// pick the vehicles for the convoy
	_convoyVeh =
	[
		["B_GEN_Offroad_01_gen_F", "B_GEN_Offroad_01_gen_F"]
	] call BIS_fnc_selectRandom;

	_veh1 = _convoyVeh select 0;
	_veh2 = _convoyVeh select 1;

	_createVehicle =
	{
		private ["_type", "_position", "_direction", "_vehicle", "_soldier"];

		_type = _this select 0;
		_position = _this select 1;
		_direction = _this select 2;

		_vehicle = createVehicle [_type, _position, [], 0, "None"];
		_vehicle setVariable ["R3F_LOG_disabled", true, true];
		[_vehicle] call vehicleSetup;

		_vehicle setDir _direction;
		_aiGroup addVehicle _vehicle;

		_soldier = [_aiGroup, _position] call createGendarmerie;
		_soldier moveInDriver _vehicle;

		_soldier = [_aiGroup, _position] call createGendarmerieCommander;
		_soldier moveInCommander [_vehicle];
		
		_soldier = [_aiGroup, _position] call createGendarmerie;
		_soldier moveInCargo _vehicle;
		
		_soldier = [_aiGroup, _position] call createGendarmerie;
		_soldier moveInCargo _vehicle;
		
		_soldier = [_aiGroup, _position] call createGendarmerie;
		_soldier moveInCargo _vehicle;
		
		_soldier = [_aiGroup, _position] call createGendarmerie;
		_soldier moveInCargo _vehicle;
		
		[_vehicle, _aiGroup] spawn checkMissionVehicleLock;

		_vehicle
	};

	_aiGroup = createGroup CIVILIAN;

	_vehicles =
	[
		[_veh1, _starts select 0, _startDirs select 0] call _createVehicle,
		[_veh2, _starts select 1, _startDirs select 1] call _createVehicle
	];

	_leader = effectiveCommander (_vehicles select 0);
	_aiGroup selectLeader _leader;

	_aiGroup setCombatMode "GREEN"; // units will defend themselves
	_aiGroup setBehaviour "SAFE"; // units feel safe until they spot an enemy or get into contact
	_aiGroup setFormation "STAG COLUMN";

	_speedMode = if (missionDifficultyHard) then { "NORMAL" } else { "LIMITED" };

	_aiGroup setSpeedMode _speedMode;

	{
		_waypoint = _aiGroup addWaypoint [_x, 0];
		_waypoint setWaypointType "MOVE";
		_waypoint setWaypointCompletionRadius 25;
		_waypoint setWaypointCombatMode "GREEN";
		_waypoint setWaypointBehaviour "SAFE"; // safe is the best behaviour to make AI follow roads, as soon as they spot an enemy or go into combat they WILL leave the road for cover though!
		_waypoint setWaypointFormation "STAG COLUMN";
		_waypoint setWaypointSpeed _speedMode;
	} forEach _waypoints;

	_missionPos = getPosATL leader _aiGroup;

	_missionPicture = getText (configFile >> "CfgVehicles" >> _veh2 >> "picture");
	_vehicleName = getText (configFile >> "CfgVehicles" >> _veh2 >> "displayName");

	_missionHintText = format ["A convoy of <t color='%2'>%1</t> transporting 2 crates. Stop them!", _vehicleName, patrolMissionColor];

	_numWaypoints = count waypoints _aiGroup;
};

_waitUntilMarkerPos = {getPosATL _leader};
_waitUntilExec = nil;
_waitUntilCondition = {currentWaypoint _aiGroup >= _numWaypoints};

_failedExec = nil;

// _vehicles are automatically deleted or unlocked in missionProcessor depending on the outcome

_successExec =
{
	// Mission completed
	private ["_Box1Choice", "_Box2Choice"];
	_Box1Choice = ["Launchers_Tier_2", "Diving_Gear", "General_supplies", "GEVP", "mission_AALauncher", "mission_CompactLauncher", "mission_snipers", "mission_RPG", "mission_PCML", "mission_Pistols", "mission_AssRifles", "mission_SMGs", "mission_LMGs", "Medical", "mission_Field_Engineer"]  call BIS_fnc_selectRandom; 
	_Box2Choice = ["Launchers_Tier_2", "Diving_Gear", "General_supplies", "GEVP", "mission_AALauncher", "mission_CompactLauncher", "mission_snipers", "mission_RPG", "mission_PCML", "mission_Pistols", "mission_AssRifles", "mission_SMGs", "mission_LMGs", "Medical", "mission_Field_Engineer"]  call BIS_fnc_selectRandom;

	_box1 = createVehicle ["Box_GEN_Equip_F", _lastPos, [], 2, "None"];
	_box1 setDir random 360;
	[_box1, _Box1Choice] call fn_refillbox;

	_box2 = createVehicle ["Box_GEN_Equip_F", _lastPos, [], 2, "None"];
	_box2 setDir random 360;
	[_box2, _Box2Choice] call fn_refillbox;

	_successHintMessage = "The convoy has been stopped, the crates and vehicles are now yours to take.";
};

_this call patrolMissionProcessor;

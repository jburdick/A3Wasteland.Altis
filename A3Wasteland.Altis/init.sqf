// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.2
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, [GoT] JoSchaap, AgentRev
//	@file Description: The main init.

#include "debugFlag.hpp"

#ifdef A3W_DEBUG
#define DEBUG true
#else
#define DEBUG false
#endif

enableSaving [false, false];

// block script injection exploit
inGameUISetEventHandler ["PrevAction", ""];
inGameUISetEventHandler ["Action", ""];
inGameUISetEventHandler ["NextAction", ""];

_descExtPath = str missionConfigFile;
currMissionDir = compileFinal str (_descExtPath select [0, count _descExtPath - 15]);

X_Server = false;
X_Client = false;
X_JIP = false;

// versionName = ""; // Set in STR_WL_WelcomeToWasteland in stringtable.xml

if (isServer) then { X_Server = true };
if (!isDedicated) then { X_Client = true };
if (isNull player) then { X_JIP = true };

A3W_scriptThreads = [];

[DEBUG] call compile preprocessFileLineNumbers "globalCompile.sqf";

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "storeConfig.sqf"; // Separated as its now v large
[] execVM "briefing.sqf";

if (!isDedicated) then
{
	[] spawn
	{
		if (hasInterface) then // Normal player
		{
			9999 cutText ["Welcome to A3Wasteland, please wait for your client to initialize", "BLACK", 0.01];

			waitUntil {!isNull player};
			player setVariable ["playerSpawning", true, true];
			playerSpawning = true;

			removeAllWeapons player;
			client_initEH = player addEventHandler ["Respawn", { removeAllWeapons (_this select 0) }];

			// Reset group & side
			[player] joinSilent createGroup playerSide;

			execVM "client\init.sqf";

			if ((vehicleVarName player) select [0,17] == "BIS_fnc_objectVar") then { player setVehicleVarName "" }; // undo useless crap added by BIS
		}
		else // Headless
		{
			waitUntil {!isNull player};
			if (getText (configFile >> "CfgVehicles" >> typeOf player >> "simulation") == "headlessclient") then
			{
				execVM "client\headless\init.sqf";
			};
		};
	};
};

if (isServer) then
{
	diag_log format ["############################# %1 #############################", missionName];
	diag_log "WASTELAND SERVER - Initializing Server";
	[] execVM "server\init.sqf";
};

if (hasInterface || isServer) then
{
	//init 3rd Party Scripts
	[] execVM "addons\parking\functions.sqf";
	[] execVM "addons\storage\functions.sqf";
	[] execVM "addons\vactions\functions.sqf";
	[] execVM "addons\APOC_Airdrop_Assistance\init.sqf";
	[] execVM "addons\R3F_LOG\init.sqf";
	if(hasInterface) then{[] execVM "addons\statusBar\statusbar.sqf"};
	[] execVM "addons\proving_ground\init.sqf";
	[] execVM "addons\AF_Keypad\AF_KP_vars.sqf";
	[] execVM "addons\JumpMF\init.sqf";
	[] execVM "addons\outlw_magrepack\MagRepack_init.sqf";
	[] execVM "addons\lsd_nvg\init.sqf";
	[] execVM "addons\stickyCharges\init.sqf";
	[] execVM "addons\laptop\init.sqf";
	if (isNil "drn_DynamicWeather_MainThread") then { drn_DynamicWeather_MainThread = [] execVM "addons\scripts\DynamicWeatherEffects.sqf" };
	[] execVM "addons\bounty\init.sqf";
	[] execVM "addon\scripts\VehicleAugmentation.sqf";

	inCap = compile preprocessfilelinenumbers "addons\injured_AI\cripts\inCap.sqf";
	/*//parameters
	_this select 0, true or false, ais war voices,ais will talk with radio or yelling while firing, (default = true)
	_this select 1, true or false, drop smoke around injured ai, (default = true)
	_this select 2, true or false, drag to cover, dragger will drag injured to covers like bushes or rocks, for longer distance drag set this false, (default = true)
	_this select 3, unconscious and drag chance, determine chance unit unconscious if got hit, min 0%-100% max (default = 70%)
	_this select 4, hit react chance, determine chance unit have react animation if got hit, min 0%-100% max (default = 20%)
	*** Important Note: if you increase hit react chance, it also decrease unconscious and drag chance ***
	*/
	_null = [true, true, false, 70, 30] execvm "addons\injured_AI\scripts\injured.sqf";
};

// Remove line drawings from map
/*(createTrigger ["EmptyDetector", [0,0,0], false]) setTriggerStatements
[
	"!triggerActivated thisTrigger",
	"thisTrigger setTriggerTimeout [30,30,30,false]",
	"{if (markerShape _x == 'POLYLINE') then {deleteMarker _x}} forEach allMapMarkers"
];*/
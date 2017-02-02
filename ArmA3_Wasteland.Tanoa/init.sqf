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

CHVD_allowNoGrass = false;
CHVD_allowTerrain = false; // terrain option has been disabled out from the menu due to terrible code, this variable has currently no effect
CHVD_maxView = 3000; // Set maximum view distance (default: 12000)
CHVD_maxObj = 3000; // Set maximimum object view distance (default: 12000)

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
"RM_DISPLAYTEXT_PUBVAR" addPublicVariableEventHandler {(_this select 1) spawn BIS_fnc_dynamicText;};

if (!isDedicated) then
{
	[] spawn
	{
		if (hasInterface) then // Normal player
		{
			//9999 cutText ["Welcome to A3Wasteland, please wait for your client to initialize", "BLACK", 0.01];
			//AJ BEGIN NOTE
			9999 cutRsc ["loadingscreen","BLACK"]; //Avoid clashes with A3W Layers
			
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
	[] execVM "killfeed\killfeed.sqf";
	[] execVM "DCL\init.sqf";
	[] execVM "addons\module_cleanup\init.sqf";
	//[]execVM "zombie\configurations.sqf";
	[] execVM "addons\parking\functions.sqf";
	[] execVM "addons\storage\functions.sqf";
	[] execVM "addons\laptop\init.sqf";	
	[] execVM "addons\vactions\functions.sqf";
	[] execVM "addons\credits\welcome.sqf";
	[] execVM "addons\R3F_LOG\init.sqf";
	[] execVM "addons\proving_ground\init.sqf";
	[] execVM "addons\JumpMF\init.sqf";
	//[] execVM "addons\outlw_magrepack\MagRepack_init.sqf";
	[] execVM "addons\lsd_nvg\init.sqf";
	[
    true, /* _useMissionTriggers */
    true, /* _isTravelDelayEnabled */
    10, /* _travelSpeed */
    20 /* _maxTravelDuration */
	] execVM "AccessPoints\Init.sqf";						//"Access Points" system by Gavin N. Alvesteffer.
	[] execVM "addons\stickyCharges\init.sqf";
	[] execVM "addons\statusBar\statusbar.sqf"; 		  // Status Bar
	[] execVM "addons\AR_AdvancedRappelling\functions\fn_advancedRappellingInit.sqf"; 
	0 = [EAST,false,true] execVM "JSHK_Redress\redressInit.sqf";	//KI-Uniform
	if (isNil "drn_DynamicWeather_MainThread") then { drn_DynamicWeather_MainThread = [] execVM "addons\scripts\DynamicWeatherEffects.sqf" };
};
    //null = execVM "killTicker.sqf";
// Remove line drawings from map
(createTrigger ["EmptyDetector", [0,0,0], false]) setTriggerStatements
[
	"!triggerActivated thisTrigger", 
	"thisTrigger setTriggerTimeout [30,30,30,false]",
	"{if (markerShape _x == 'POLYLINE') then {deleteMarker _x}} forEach allMapMarkers"
];

//AI Spawn Script Pack
nul = [450,900,15,40,6,[0.5,1,0.5],player,[0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5],0,2500,nil,["COMBAT","SAD"],true] execVM "LV\ambientCombat.sqf";
nul = [player,2,150,[true,true],[true,true,true],false,[5,5],[1,2],0.5,nil,nil,nil] execVM "LV\militarize.sqf";
nul = [player,false,2,2,false,true,player,"random",1000,true,false,8,0.5,[true,false,false,false],nil,nil,nil,true] execVM "LV\reinforcementChopper.sqf";
nul = [player,2,true,true,1500,"random",true,200,150,8,0.5,80,true,false,false,true,player,false,[0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5],nil,nil,nil,true] execVM "LV\heliParadrop.sqf";
nul = [[1],[player],500,true,true] execVM "LV\LV_functions\LV_fnc_simpleCache.sqf";

// FLARE FIX - recommended for vanilla missions and assets only, with mods you might have problems

// flare intensity, replace 30 with desired value
al_flare_intensity = 30;
publicvariable "al_flare_intensity";

// flare range, replace 500 with desired value
al_flare_range = 200;
publicvariable "al_flare_range";

// If you want to use FLARE FIX do not edit or remove lines bellow
player addEventHandler ["Fired",{private ["_al_flare"]; _al_flare = _this select 6;[[[_al_flare],"AL_flare_fix\al_flare_enhance.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;}];

// ^^^^^^^^^^ END FLARE fix ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^



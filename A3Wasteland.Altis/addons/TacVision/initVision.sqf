// TacVision (Tactical Vision)
// init.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>


if(isDedicated) exitWith {};

waitUntil {player == player};

// TacVision functions
TacVision_init_startup = compile preprocessFileLineNumbers "TacVision\tacVision_startup.sqf";
TacVision_getCurrentWindStrenght = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_getCurrentWindStrength.sqf";
TacVision_getCurrentWindDirection = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_getCurrentWindDirection.sqf";
TacVision_fnc_compassDir = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_compassDir.sqf";
TacVision_getCurrentGPSGrid = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_getCurrentGPSGridPos.sqf";
TacVision_compassDegreesToString = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_CompassDegreesToString.sqf";
TacVision_getCurrentTime = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_getCurrentTime.sqf";
TacVision_targetFinder = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_cursorTarget.sqf";
TacVision_fnc_ETI = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_ETI.sqf";
TacVision_fnc_getRadioChannelLR = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_getRadioChannelLR.sqf";
TacVision_fnc_getRadioChannelSR = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_getRadioChannelSW.sqf";
TacVision_compassHeading = compile preprocessFileLineNumbers "TacVision\functions\TV_fnc_getCurrentCompassHeading.sqf";
// init TacVision!
call compile preprocessFileLineNumbers "TacVision\tacVision_init.sqf";


// EOF
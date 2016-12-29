// TacVision (Tactical Vision)
// tacVision_init.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

if (isDedicated) exitWith {};

private ["_ui", "_hud"];

disableSerialization;

_ui = uiNamespace getVariable "tacVision_HUD";

// compass
_hud = _ui displayCtrl 17210;
_hud ctrlSetFade 0;
_hud ctrlCommit 0;
[_ui, _hud] call TacVision_fnc_compassDir;

// wind bearing
_hud = _ui displayCtrl 17214;
_hud ctrlSetFade 0;
_hud ctrlCommit 0;
[_ui, _hud] call TacVision_getCurrentWindDirection;

/*
// wind strenght
_hud = _ui displayCtrl 17112;
_hud ctrlSetFade 0;
_hud ctrlCommit 0;
[_ui, _hud] spawn TacVision_getCurrentWindStrength;
*/

// GPS grid pos
_hud = _ui displayCtrl 17215;
_hud ctrlSetFade 0;
_hud ctrlCommit 0;
[_ui, _hud] call TacVision_getCurrentGPSGrid;


// current time
_hud = _ui displayCtrl 17216;
_hud ctrlSetFade 0;
_hud ctrlCommit 0;
[_ui, _hud] call TacVision_getCurrentTime;

// current SW Radio Channels
_hud = _ui displayCtrl 17218;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>CDIR: %1</t>", str round(_dir)];
    _hud ctrlCommit 0;
[_ui,_hud] call TacVision_fnc_getRadioChannelSR;

// current SW Radio Channels
_hud = _ui displayCtrl 17220;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>CDIR: %1</t>", str round(_dir)];
    _hud ctrlCommit 0;
[_ui,_hud] call TacVision_fnc_getRadioChannelLR;

// current Player Heading String
_hud = _ui displayCtrl 17222;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>CDIR: %1</t>", str round(_dir)];
    _hud ctrlCommit 0;
[_ui,_hud] call TacVision_compassHeading;

	


// [] spawn TacVision_targetFinder;

// EOF
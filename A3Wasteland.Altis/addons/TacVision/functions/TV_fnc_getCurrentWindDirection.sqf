// TacVision (Tactical Vision)
// fnc_getCurrentWindDirection.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

// get current wind direction
//TacVision_getCurrentWindDirection = {

private ["_dir", "_hud", "_ui", "_this"];

disableSerialization;

_ui = _this select 0;
_hud = _this select 1;

while {true} do {
    _dir = windDir;
    _ret = [_dir] call TacVision_CompassDegreesToString;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>WDIR: %1</t>", _ret];
    _hud ctrlCommit 0;
};

//};

// EOF
// TacVision (Tactical Vision)
// fnc_getCurrentCompassHeading.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

// get current compass heading
//TacVision_getCurrentCompassHeading = {

private ["_dir", "_hud", "_ui", "_this"];

disableSerialization;

_ui = _this select 0;
_hud = _this select 1;

while {true} do {
    _dir = direction player;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>CDir: %1</t>", round(_dir)];
    _hud ctrlCommit 0;
};
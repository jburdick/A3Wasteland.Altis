// TacVision (Tactical Vision)
// fnc_getCurrentWindStrenght.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

// get current wind speed/strength
//TacVision_getCurrentWindStrength = {

private ["_dir", "_hud", "_ui", "_this"];

disableSerialization;

_ui = _this select 0;
_hud = _this select 1;

while {true} do {
    _dir = windStr;
    //_hud = _ui displayCtrl _hud;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>WSTR: %1</t>", str round(_dir)];
    _hud ctrlCommit 0;
    //sleep 0.03;
};

//};
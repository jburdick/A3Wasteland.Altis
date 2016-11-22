// TacVision (Tactical Vision)
// fnc_getCurrentGPSGridPos.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

private ["_pos", "_hud", "_ui", "_this"];

disableSerialization;

_ui = _this select 0;
_hud = _this select 1;

while {true} do {
    _pos = mapGridPosition player;
    //_hud = _ui displayCtrl _hud;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>GPS: %1</t>",_pos];
    _hud ctrlCommit 0;
    //sleep 0.03;
};


// EOF
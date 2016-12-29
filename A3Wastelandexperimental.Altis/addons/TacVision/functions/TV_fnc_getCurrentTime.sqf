// TacVision (Tactical Vision)
// fnc_getCurrentTime.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>


//TacVision_getCurrentTime = {

private ["_time", "_hud", "_ui", "_d"];

disableSerialization;

_ui = _this select 0;
_hud = _this select 1;

while {true} do {
    _d = date;
    _hours = _d select 3;
    _minutes = _d select 4;
    if(_hours < 10) then {
        _hours = format ["0%1", _hours];
    };
    if(_minutes < 10) then {
        _minutes = format ["0%1", _minutes];
    };
    _time = format ["%1:%2", _hours, _minutes];
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>%1</t>", _time];
    _hud ctrlCommit 0;
};

//};

// EOF
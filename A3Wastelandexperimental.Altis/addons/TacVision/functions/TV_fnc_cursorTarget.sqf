// TacVision (Tactical Vision)
// fnc_cursorTarget.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

private ["_target", "_ret"];

disableSerialization;

_ui = uiNamespace getVariable "tacVision_HUD";
_hudbg = _ui displayCtrl 17211;
_hud = _ui displayCtrl 17212;
_hudbg ctrlSetFade 1;
_hudbg ctrlCommit 0;

while {TacVision_enabled} do {
    _target = cursorTarget;
    
    // get info about target
    // _ret = false;
    _ret = [_target, "", "", ""] call TacVision_fnc_ETI;
    if(isNil "_ret") then { _ret = false; };
	// _ret = [_tPos, _target, _tMarker, _tSize, _tside, _tVisiblePos, _tDistance, _speed, _flyingheight, _displayName, _textSingular, _genericName, _faction, _vehicleClass, _combatState, _combatBehaviour];
    
    // no cheating! :D
    if((player distance _target) > 100) then { _ret = false; };
    
    if(typeName _ret != "ARRAY") then {
        _hudbg ctrlSetFade 1;
        _hudbg ctrlCommit 0;
        _hud ctrlSetFade 1;
        _hud ctrlCommit 0;
    };
    
    // display info in infobox
    _type_whitelist = ["Men", "MenDiver", "MenRecon", "MenUrban", "MenSniper", "MenSupport", "Air", "Car", "Armored"];
    
   
    if(!isNil "_ret" && typeName _ret == "ARRAY") then {

        if!((_ret select 13) in _type_whiteList) then {
            _hudbg ctrlSetFade 1;
            _hudbg ctrlCommit 0;
            _hud ctrlSetFade 1;
            _hud ctrlCommit 0;
        };

        // if Men
        if((_ret select 13 == "Men") || (_ret select 13 == "MenDiver") || (_ret select 13 == "MenRecon") || (_ret select 13 == "MenUrban") || (_ret select 13 == "MenSniper") || (_ret select 13 == "MenSupport") || (_ret select 13 == "MenStory")) then {
            _hudbg ctrlSetFade 0;
            _hudbg ctrlCommit 0;
            _hud ctrlSetFade 0;
            _hud ctrlCommit 0;
            _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>%10 - %14<br/>%5 - %13<br/>%15, %16<br/>%7m </t>", _ret select 0, _ret select 1, _ret select 2, _ret select 3, _ret select 4, _ret select 5, _ret select 6, _ret select 7, _ret select 8, _ret select 9, _ret select 10, _ret select 11, _ret select 12, _ret select 13, _ret select 14, _ret select 15];
        };
        
        // if air vehicle
        if(_ret select 13 == "Air") then {
            _hudbg ctrlSetFade 0;
            _hudbg ctrlCommit 0;
            _hud ctrlSetFade 0;
            _hud ctrlCommit 0;
            _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>%10 - %14<br/>%5 - %13<br/>%15, %16 <br/>%7m - %8km/h</t>", _ret select 0, _ret select 1, _ret select 2, _ret select 3, _ret select 4, _ret select 5, _ret select 6, _ret select 7, _ret select 8, _ret select 9, _ret select 10, _ret select 11, _ret select 12, _ret select 13, _ret select 14, _ret select 15];
        };
        
        // if land vehicle
        if((_ret select 13 == "Car") || (_ret select 13 == "Armored")) then {
            _hudbg ctrlSetFade 0;
            _hudbg ctrlCommit 0;
            _hud ctrlSetFade 0;
            _hud ctrlCommit 0;
            _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>%10 - %14<br/>%5 - %13<br/>%15, %16 <br/>%7m - %8km/h</t>", _ret select 0, _ret select 1, _ret select 2, _ret select 3, _ret select 4, _ret select 5, _ret select 6, _ret select 7, _ret select 8, _ret select 9, _ret select 10, _ret select 11, _ret select 12, _ret select 13, _ret select 14, _ret select 15];
        };
        
    };

        
};


// EOF
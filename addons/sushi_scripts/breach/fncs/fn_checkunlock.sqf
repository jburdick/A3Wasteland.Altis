[] spawn {
	private _cond = "_doorStatus = 1; if ( cursorTarget isKindOf 'house' ) then {_doorArr = if (cursorTarget isKindOf 'house') then { [cursorTarget,1] call saf_fnc_breachGetTargetDoors } else { [] }; _doorStatus =  if (count _doorArr > 0) then { [[],true] call SAF_fnc_breachCheckDoor } else { 1 }; }; _doorStatus == 0";
	private _actionTxt = format["<t color='%1'>%2</t>",SAF_app_colorBase,SAF_STR_BREACH_UNLOCK];
	player addAction [_actionTxt,SAF_fnc_breachunlock,[],5,false,true,"",_cond];
	};
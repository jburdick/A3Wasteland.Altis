#include "..\cfg\cfgDefines.cpp"
if ( SAF_MISSION_SET(breach_useBreach) < 1 ) exitWith {};
[] spawn {
	private _langFile = format["addons\sushi_scripts\breach\locale\%1.sqf",SAF_app_lang];
	call compile preProcessFileLineNumbers _langFile;

	//-->Handle gun breach
	if (SAF_MISSION_SET(breach_allowGunBreach) > 0 && !isDedicated) then {
		//-->Add event handler
		player addEventHandler ["FIRED",saf_fnc_breachFiredEh];
	};

	//-->Handle other actions

	if (SAF_MISSION_SET(breach_allowLockPick) > 0 && !isDedicated) then {  //Add lock picking
	if (!isNull Player) then {
	call SAF_fnc_lockpickcheck;
	player addeventhandler ["respawn","call SAF_fnc_lockpickcheck;"];
	};
	};

	if (SAF_MISSION_SET(breach_allowExplosiveBreach) > 0 && !isDedicated) then {  //Add explosive breaching
	if (!isNull Player) then {
	call SAF_fnc_checkexplosive;
	player addeventhandler ["respawn","call SAF_fnc_checkexplosive;"];
	};
	
	};
	if (!isNull Player) then {
	call SAF_fnc_checkunlock;
	player addeventhandler ["respawn","call SAF_fnc_checkunlock;"];
	};
	
	if (!isNull Player) then {
	call SAF_fnc_checklock;
	player addeventhandler ["respawn","call SAF_fnc_checklock;"];
	};
};

private ["_dir", "_hud", "_ui", "_this"];

disableSerialization;

_ui = _this select 0;
_hud = _this select 1;

while {true} do {
	if (isNil "TFAR_fnc_activeLrRadio") exitWith {diag_log "Client does not have TFAR";};
	_channelLR = [(call TFAR_fnc_activeLrRadio), 1] call TFAR_fnc_GetChannelFrequency; 
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>Radio-LR: %1</t>",_channelLR];
    _hud ctrlCommit 0;
};
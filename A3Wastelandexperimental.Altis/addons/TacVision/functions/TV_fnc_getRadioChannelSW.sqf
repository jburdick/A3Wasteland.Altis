
private ["_dir", "_hud", "_ui", "_this"];

disableSerialization;

_ui = _this select 0;
_hud = _this select 1;

while {true} do {
if (isNil "TFAR_fnc_activeSwRadio") exitWith {diag_log "Client does not have TFAR";};
	_channelSW = [(call TFAR_fnc_activeSwRadio), 1] call TFAR_fnc_GetChannelFrequency;
    _hud ctrlSetStructuredText parseText format ["<t align='center' size='0.8'>Radio-SR: %1</t>",_channelSW];
    _hud ctrlCommit 0;
};
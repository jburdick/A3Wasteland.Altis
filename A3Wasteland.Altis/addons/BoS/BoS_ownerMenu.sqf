//	@file Version:
//	@file Name:
//	@file Author: Cael817, all credit to A3W
//	@file Created:

#define BoS_Menu_option 17001
disableSerialization;

private ["_start","_panelOptions","_BoS_select","_displayBoS"];
_uid = getPlayerUID player;
if (!isNil "_uid") then {
	_start = createDialog "BoS_Menu";

	_displayBoS = uiNamespace getVariable "BoS_Menu";
	_BoS_select = _displayBoS displayCtrl BoS_Menu_option;

	_panelOptions = [
					"Lights OFF",  //0
					"Lights ON", //1
					"Lock Doors", //2
					"Unlock Doors", //3
					"Show objects owned by you", //4
					"Lock Down Base", //6
					"Release Lock Down", //7
					"Relock Base Objects", //8
					"Change PIN" //9
	];

	{
		_BoS_select lbAdd _x;
	} forEach _panelOptions;
};

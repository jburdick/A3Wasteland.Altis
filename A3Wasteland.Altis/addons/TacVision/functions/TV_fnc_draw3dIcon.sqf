/*
	TacVision 0.01a (Tactical Vision)
*/
//#include "..\tacVision_defines.sqf"

//TacVision_TI_draw3dIcon = {
	private["_count", "_icon", "_color", "_pos", "_sizeX", "_sizeY", "_dir", "_text", "_shadow", "_sizeT", "_font"];

	//diag_log format ["## TacVision Debug ## - TacVision_TI_draw3dIcon: _this:  %1", _this];

	_count = count _this;
	_icon = if(_count > 0) then { _this select 0 } else { "" };
	//_color = if(_count > 1) then { if(toLower(_this select 1) != "any") then { _this select 1 } else { [0,0.97,0.87,1] }; }; // [0,0,0,1] black
	_color	= if(_count > 1) then {_this select 1} else {[0,0,0,1]}; // black
	_pos = if(_count > 2) then { _this select 2 } else { [0,0,0] };
	_sizeX = if(_count > 3) then { _this select 3 } else { 1 };
	_sizeY = if(_count > 4) then { _this select 4 } else { 1 };
	_dir = if(_count > 5) then { _this select 5 } else { 0 };
	_text = if(_count > 6) then { _this select 6 } else { "" };
	_shadow = if(_count > 7) then { _this select 7 } else { 1 };
	
	//diag_log format ["## TacVision Debug ## - TacVision_TI_draw3dIcon: %1, %2, %3, %4, %5, %6, %7, %8", _icon, _color, _pos, _sizeX, _sizeY, _dir, _text, _shadow];

	drawIcon3D [
		_icon,
		_color,
		_pos,
		_sizeX,
		_sizeY,
		_dir,
		_text,
		_shadow,
		0.04,
		"PuristaLight"
	];
//};


// EOF

//TacVision_TI_MarkIt = {
	private ["_intel"];
	_intel = _this select 0;
	_color = _this select 1;
	if(typeName _intel == "ARRAY") then {
		private ["_t_pos", "_t_target", "_t_mark", "_t_size", "_t_tSide", "_t_vPos", "_t_NewPos", "_t_tDistance"];
		// create marker
		_t_pos = _intel select 0;
		_t_target = _intel select 1;
		_t_mark = _intel select 2;
		_t_size = _intel select 3;
		_t_tSide = _intel select 4;
		_t_vPos = _intel select 5;
		_t_Newpos = _t_vPos;
		_t_Newpos set[2,(getPosATL _t_target select 2) + 1.2];

		_t_tDistance = _intel select 6;
		[_mark, TACVISION_HUDCOLOR, [_vPos select 0, _vPos select 1, 1.3], _size, _size, 0, "", 0] call TacVision_TI_draw3dIcon;
		// [_t_mark, _color, _t_Newpos, _t_size, _t_size, 0, "", 0] call TacVision_TI_draw3dIcon;
		
		_intel = nil;
	};
//};


// EOF
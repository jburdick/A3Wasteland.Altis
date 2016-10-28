[] spawn {
	private _actionTxt = format["<t color='%1'>%2</t>",SAF_app_colorBase,SAF_STR_BREACH_LOCK];
	player addAction [_actionTxt,SAF_fnc_breachlock,[],5,false,true,"",_cond];
	};
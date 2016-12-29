/*
	file: mss_action.sqf
	author: Miller
*/
_var = localize "STR_MSS_action";
player addAction[format ["%1",_var],"MSS\mss.sqf","nil",0,false,false,"nil",("vehicle player != player")];
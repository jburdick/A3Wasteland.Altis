// TacVision (Tactical Vision)
// fnc_CompassDegreesToString.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

private ["_degree", "_str"];

//TacVision_CompassDegreesToString = {
_degree = _this select 0;
_str = "";

if(_degree >= 0 && _degree <= 359) then { _str = "> N"; };
if(_degree >= 11 && _degree <= 34) then { _str = "> NNE"; };
if(_degree >= 34 && _degree <= 56) then { _str = "> NE"; };
if(_degree >= 56 && _degree <= 79) then { _str = "> ENE"; };
if(_degree >= 79 && _degree <= 101) then { _str = "> E"; };
if(_degree >= 101 && _degree <= 124) then { _str = "> ESE"; };
if(_degree >= 124 && _degree <= 146) then { _str = "> SE"; };
if(_degree >= 146 && _degree <= 169) then { _str = "> SSE"; };
if(_degree >= 169 && _degree <= 214) then { _str = "> SSW"; };
if(_degree >= 214 && _degree <= 236) then { _str = "> SW"; };
if(_degree >= 236 && _degree <= 259) then { _str = "> WSW"; };
if(_degree >= 259 && _degree <= 281) then { _str = "> W"; };
if(_degree >= 281 && _degree <= 304) then { _str = "> WNW"; };
if(_degree >= 304 && _degree <= 326) then { _str = "> NW"; };
if(_degree >= 326 && _degree <= 348) then { _str = "> NNW"; };






_str

//};

// EOF
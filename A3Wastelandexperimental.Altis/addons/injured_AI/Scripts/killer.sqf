
if !(isServer) exitWith {}; 
_victim = _this select 0;
_killer = _this select 1; 

_victim removeAllMPEventHandlers "MPKilled";

// add finisher sounds here with address
_sound = [
"kill1", "kill2", "kill3", "kill4", "kill5"
] call BIS_fnc_selectRandom;


//_killer say3D _sound;
[[_killer,_sound] remoteExec ["say3D"]]; 





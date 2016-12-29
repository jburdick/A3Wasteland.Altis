//if (!hasInterface || isServer) then exitWith {};

if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

[player] execVM "dead_mans_switch.sqf";

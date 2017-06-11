_lockerpos = getpos( nearestObject [player, ["Land_Device_assembled_F", "Land_SatellitePhone_F"]]);
_lockableBuildings = _lockerpos nearObjects ["HouseBase", 100];
 _lockdoors =
 {
   setVariable ['bis_disabled_Door_1',1,true];
   setVariable ['bis_disabled_Door_2',1,true];
 } forEach _lockableBuildings;

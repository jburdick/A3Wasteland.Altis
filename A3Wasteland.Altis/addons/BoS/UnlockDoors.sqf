_lockerpos = getpos {nearestObject [player, ["Land_Device_assembled_F", "Land_SatellitePhone_F"], 5]};
_lockableBuildings = _lockerpos nearObjects [["HouseBase"], 100];


 _lockdoors =
 {
   setVariable ['bis_disabled_Door_1',0,true];
   setVariable ['bis_disabled_Door_2',0,true];
 } forEach _lockableBuildings;

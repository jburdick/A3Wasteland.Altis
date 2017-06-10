_locker = nearestObjects [player, ["Land_Device_assembled_F","Land_SatellitePhone_F"], 5];
_lockableBuildings = nearestObjects ["_locker", "HouseBase", 200];


 _lockdoors =
 {
   setVariable ['bis_disabled_Door_1',1,true];
   setVariable ['bis_disabled_Door_2',1,true];
 } forEach _lockableBuildings;

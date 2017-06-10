_locker = nearestObjects [player, ["Land_Device_assembled_F"], 5];
_lockableBuildings = nearestObjects [_locker, "HouseBase", 200];


 _lockdoors =
 {
   setVariable ['bis_disabled_Door_1',0,true];
   setVariable ['bis_disabled_Door_2',0,true];
 } forEach _lockableBuildings;

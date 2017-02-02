//Copyright 2016, Gavin N. Alvesteffer.
//"Access Points" system, a way to get players on those inaccessible rooftops.

_useMissionTriggers = param [0, true]; //Will apply the Access Points system to all triggers configured for it.
_isTravelDelayEnabled = param [1, false]; //Adds a delay to mimic the time it would take to travel between an access point pair.
_travelSpeed = param [2, 3]; //Meters per second travel speed, used to calculate travel delay if enabled.
_maxTravelDuration = param [3, 30]; //If travel delay is enabled, this will limit the amount of time the delay can last.

call compile preprocessFileLineNumbers "AccessPoints\Core.sqf";
AccessPoints_IsTravelDelayEnabled = _isTravelDelayEnabled;
AccessPoints_TravelSpeed = _travelSpeed;
AccessPoints_MaxTravelDuration = _maxTravelDuration;
if(_useMissionTriggers) then
{
    call AccessPoints_AddAllMissionAccessPoints;
};

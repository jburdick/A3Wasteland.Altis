//Copyright 2016, Gavin N. Alvesteffer.
//"Access Points" system, a way to get players on those inaccessible rooftops.

AccessPoints_ScreenTransitionDuration = 0.25;
AccessPoints_IsTravelDelayEnabled = false;
AccessPoints_MaxTravelDuration = 10;
AccessPoints_TravelSpeed = 3;

AccessPoints_GetAllMissionAccessPointTriggers =
{
    _triggers = ((allMissionObjects "EmptyDetector") select { (triggerText _x) find "AccessPoint" == 0 });
    _triggers = _triggers apply { [triggerText _x, _x] };
    _triggers sort true;
    _triggers = _triggers apply { _x select 1 };
    _triggers;
};

AccessPoints_GetTriggerEndPoint =
{
    _trigger = _this;
    _trigger getVariable ["AccessPoints_EndPointTrigger", _trigger];
};

AccessPoints_SetTriggerEndPoint =
{
    _trigger = _this select 0;
    _value = _this select 1;
    _trigger setVariable ["AccessPoints_EndPointTrigger", _value];
};

AccessPoints_GetUnitAccessFlag =
{
    _unit = _this;
    _unit getVariable ["AccessPoints_CanAccess", true];
};

AccessPoints_SetUnitAccessFlag =
{
    _unit = _this select 0;
    _value = _this select 1;
    _unit setVariable ["AccessPoints_CanAccess", _value];
};

AccessPoints_AddAccessPointTriggers =
{
    _triggers = _this;

    if(count _triggers mod 2 != 0) exitWith
    {
        "ERROR: An even number of access point triggers must exist!" call AccessPoints_Log;
    };

    {
        if(_forEachIndex mod 2 == 0) then
        {
            [_x, _triggers select (_forEachIndex + 1)] call AccessPoints_SetTriggerEndPoint;
        }
        else
        {
            [_x, _triggers select (_forEachIndex - 1)] call AccessPoints_SetTriggerEndPoint;
        };
        _x setTriggerActivation ["ANY", "PRESENT", true];
        _x setTriggerStatements ["this", "if(isServer) then { { [thisTrigger, _x] remoteExec ['AccessPoints_UseAccessPointTrigger', _x] } foreach thisList }", ""];
    } foreach _triggers;
};

AccessPoints_UseAccessPointTrigger =
{
    _trigger = _this select 0;
    _unit = _this select 1;

    if(!(alive _unit) || !(_unit call AccessPoints_GetUnitAccessFlag) || !((vehicle _unit) isKindOf "CaManBase")) exitWith {};
    [_unit, false] call AccessPoints_SetUnitAccessFlag;
    _endPointTrigger = _trigger call AccessPoints_GetTriggerEndPoint;
    _endPointTriggerDirection = (triggerArea _endPointTrigger) select 2;
    _isTravelDelayEnabled = AccessPoints_IsTravelDelayEnabled;

    if(_unit == player) then
    {
        ["BIS_ScreenSetup", true, AccessPoints_ScreenTransitionDuration] call BIS_fnc_blackOut;
        sleep AccessPoints_ScreenTransitionDuration;
    };
    if(_isTravelDelayEnabled) then
    {
        _triggerDistance = _trigger distance _endPointTrigger;
        _travelDuration = (_triggerDistance / AccessPoints_TravelSpeed) min AccessPoints_MaxTravelDuration;
        [_unit, true] remoteExecCall ["hideObject"];
        sleep _travelDuration;
    };
    _unit setDir _endPointTriggerDirection;
    _unit setPosASL (getPosASL _endPointTrigger);
    if(_isTravelDelayEnabled) then
    {
        [_unit, false] remoteExecCall ["hideObject"];
    };
    if(_unit == player) then
    {
        ["BIS_ScreenSetup", true, AccessPoints_ScreenTransitionDuration] call BIS_fnc_blackIn;
    };

    waitUntil
    {
         sleep 1;
         (!(_unit inArea _endPointTrigger)) || (!(alive _unit));
    };
    [_unit, true] call AccessPoints_SetUnitAccessFlag;
};

AccessPoints_Log =
{
    _message = format ["[%1] Access Points -- %2", time, _this];
    hint _message;
    player globalChat _message;
    diag_log _message;
};

AccessPoints_AddAllMissionAccessPoints =
{
    (call AccessPoints_GetAllMissionAccessPointTriggers) call AccessPoints_AddAccessPointTriggers;
};

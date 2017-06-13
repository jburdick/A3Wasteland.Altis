#define SCAN_DISTANCE 1

fn_eyeIntersectGeom =
{
	private ["_target", "_distance", "_eyePos"];
	_target = _this select 0;
	_distance = _this select 1;
	_eyePos = eyePos player;

	if (!surfaceIsWater _eyePos) then
	{
		_eyePos = ASLtoATL _eyePos;
	};

	[_target, "GEOM"] intersect [_eyePos, _eyePos vectorAdd ((eyeDirection player) vectorMultiply _distance)]
};

fn_isDoorUnlocked =
{
	private ["_visible", "_target", "_selName", "_intersectDist"];
	_visible = false;
	_target = cursorObject;

	{
		_selName = _x select 0;
		//_intersectDist = _x select 1;

		if (_selName select [0,5] == "door_" && {_target animationPhase (_selName + "_rot") < 0.001 && _target getVariable ["bis_disabled_" + _selName, 0] != 1}) exitWith
		{
			_visible = true;
		};
	} forEach ([_target, SCAN_DISTANCE] call fn_eyeIntersectGeom);

	_visible
};

fn_lockDoor =
{
	private ["_target", "_selName", "_intersectDist"];
	_target = cursorObject;

	{
		_selName = _x select 0;
		//_intersectDist = _x select 1;

		if (_selName select [0,5] == "door_") exitWith
		{
			_target setVariable ["bis_disabled_" + _selName, 1, true]; // 0 to unlock
		};
	} forEach ([_target, SCAN_DISTANCE] call fn_eyeIntersectGeom);
};

if (!isNil "lockDoorAction") then { player removeAction lockDoorAction };
lockDoorAction = player addAction ["Lock door", fn_lockDoor, [], 0.1, false, false, "", "call fn_isDoorUnlocked"];

// TacVision (Tactical Vision)
// Extended Target Information [ETI]
// fnc_ETI.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

// Extended Target Information [ETI]
//TacVision_TI_ETI = {
	private ["_this", "_target", "_tType", "_tSide", "_tDistance", "_tPos", "_tMarker"];
	disableSerialization;
	_target = _this select 0;
	if(_target == player) exitWith {}; // don't when player
	_isAgent = ["Agent ", str _target] call BIS_fnc_inString; 
	if(_isAgent) exitWith {}; // don't when animal/ambience
	_tMarker = _this select 1;
	_tSize = _this select 2;
	_tType = _this select 3; 
	_tSide = side _target;
	_tDistance = _target distance player;
	_tPos = getPosATL _target;
	_tVisiblePos = visiblePosition _target;
    _faction = faction _target;
    // config file stuff
    _displayName = getText(configFile >> "CfgVehicles" >> typeOf _target >> "displayName");
    _textSingular = getText(configFile >> "CfgVehicles" >> typeOf _target >> "textSingular");
    _genericName = getText(configFile >> "CfgVehicles" >> typeOf _target >> "genericNames");
    _vehicleClass = getText(configFile >> "CfgVehicles" >> typeOf _target >> "vehicleClass");

	//diag_log format ["## TacVision Debug ## - TacVision_TI_ETI: _target: %1, _tType: %2, _tSide: %3, _tDistance: %4, _tPos: %5, _tVisiblePos: %6", _target, _tType, _tSide, _tDistance, _tPos, _tVisiblePos];
	
	// if vehicle
	_speed = 0;
//	if!(_target isKindOf "Man") then { // || _target isKindOf "Static") then {
	if(_vehicleClass != "Man") then {
		_tVisiblePos = _tPos;
		_speed = round(speed _target);
	} else { 
		_speed = 0;
	};
	
	// if air
	_flyingheight = 0;
//	if(_target isKindOf "Air" || _target isKindOf "Autonomous") then {
	if(_vehicleClass == "Air" || _vehicleClass == "Autonomous") then {
		_pasl = getPosASL _target;
		_patl = getPosATL _target;
		_h1 = _pasl select 2;
		_h2 = _patl select 2;
		_flyingheight = _h1 - _h2;
	} else {
		_flyingheight = 0;
	};

	// check hostility
    _combatState = combatMode _target;
    _combatBehaviour = behaviour _target;
    
	
	// if target moves behind cover/out of LOS, loose the marker
	
	// intel array
	_ret = [_tPos, _target, _tMarker, _tSize, _tside, _tVisiblePos, round(_tDistance), _speed, _flyingheight, _displayName, _textSingular, _genericName, _faction, _vehicleClass, _combatState, _combatBehaviour];
	
    //diag_log format ["## TacVision Debug ## - TacVision_TI_ETI: _ret: %1", _ret];
	// TacVision_ETI_Intel set [count (TacVision_ETI_Intel), _ret];
	
	_ret
	// ["marker_eti_target.paa", [], [], 5, 5, 0, "", 0]]

//};

// EOF
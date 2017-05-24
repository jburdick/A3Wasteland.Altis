// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: fn_setupAmmoTruck.sqf
//	@file Author: AgentRev

params [["_veh",objNull,[objNull]], ["_static",false,[false]]];


if (hasInterface) then
{
	_veh addAction ["<img image='client\icons\repair.paa'/> Refuel Vehicle", "client\functions\fn_FuelTruck.sqf", [], 51, false, true, "", "_this != driver _target && alive _target && alive objectParent _this && _this distance _target <= 20 && (isNil 'mutexScriptInProgress' || {!mutexScriptInProgress})"];
	// _this = player, _target = truck
};

if (local _veh) then
{
	_veh setAmmoCargo 0;
	_veh setFuelCargo 0;
	_veh setRepairCargo 0;

	clearBackpackCargoGlobal _veh;
	clearMagazineCargoGlobal _veh;
	clearWeaponCargoGlobal _veh;
	clearItemCargoGlobal _veh;

	if (_static) then
	{
		_veh lock 2;
		_veh allowDamage false;
		_veh enableSimulationGlobal false;
	};
};

if (_static) then
{
	_veh setVariable ["A3W_lockpickDisabled", true];
	_veh setVariable ["R3F_LOG_disabled", true];
};

_veh setVariable ["A3W_AmmoTruck", true];
_veh setVariable ["A3W_AmmoTruckSetup", true];

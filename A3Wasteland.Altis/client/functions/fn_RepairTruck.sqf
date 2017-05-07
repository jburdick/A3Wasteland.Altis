// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//  @file Name: fn_resupplyTruck.sqf
//  @file Author: Wiking, AgentRev, micovery

#define RESUPPLY_TRUCK_DISTANCE 20
#define REARM_TIME_SLICE 5
#define REPAIR_TIME_SLICE 1
#define REFUEL_TIME_SLICE 1
#define PRICE_RELATIONSHIP 1 // resupply price = brand-new store price divided by PRICE_RELATIONSHIP
#define RESUPPLY_TIMEOUT 30

// Check if mutex lock is active.
if (mutexScriptInProgress) exitWith {
	titleText ["You are already performing another action.", "PLAIN DOWN", 0.5];
};

mutexScriptInProgress = true;
doCancelAction = false;

params ["", ["_unit",objNull,[objNull]]];

_vehicle = vehicle _unit;

//check if caller is in vehicle
if (_vehicle == _unit) exitWith {};

_resupplyThread = [_vehicle, _unit] spawn
{
	params ["_vehicle", "_unit"];

	_vehClass = typeOf _vehicle;
	_vehCfg = configFile >> "CfgVehicles" >> _vehClass;
	_vehName = getText (_vehCfg >> "displayName");
	_isUAV = (round getNumber (_vehCfg >> "isUav") >= 1);
	_isStaticWep = _vehClass isKindOf "StaticWeapon";

	scopeName "resupplyTruckThread";

	_price = 0; // price = 1000 for vehicles not found in vehicle store

	/*{
		if (_vehClass == _x select 1) exitWith
		{
			_price = _x select 2;
			_price = round (_price / PRICE_RELATIONSHIP);
		};
	} forEach (call allVehStoreVehicles + call staticGunsArray);*/

	_titleText = { titleText [_this, "PLAIN DOWN", ((REARM_TIME_SLICE max 1) / 10) max 0.3] };

	_checkAbortConditions =
	{
		private _abortText = "";
		private _pauseText = "";
		private "_checkCondition";

		call
		{
			if (doCancelAction) exitWith
			{
				doCancelAction = false;
				_abortText = "Cancelled by player.";
			};

			if (!alive player) exitWith
			{
				_abortText = "You have been killed.";
			};

			// Abort if vehicle is no longer local, otherwise commands won't do anything
			_checkCondition = {!local _vehicle};
			if (call _checkCondition) exitWith
			{
				_pauseText = "Take back control of the vehicle.";
				_abortText = "Another player took control of the vehicle.";
			};

			// Abort if vehicle is destroyed
			_checkCondition = {!alive _vehicle};
			if (call _checkCondition) exitWith
			{
				_abortText = "The vehicle has been destroyed.";
			};


			// Abort if someone gets in the gunner seat
			_checkCondition = {alive gunner _vehicle};
			if (!_isUAV && _checkCondition) exitWith
			{
				_pauseText = "The gunner seat must be empty.";
				_abortText = "Someone is in the gunner seat.";
			};
		};

		if (_pauseText != "") then
		{
			private "_i";

			for [{_i = RESUPPLY_TIMEOUT}, {_i > 0 && _checkCondition && !doCancelAction}, {_i = _i - 1}] do
			{
				_vehicle setVariable ["A3W_resupplyTruckTimeout", true];
				titleText [format ["%1\n%2", _pauseText, format ["Resupply sequence timeout in %1", _i]], "PLAIN DOWN", 0.5];
				sleep 1;
			};

			_vehicle setVariable ["A3W_resupplyTruckTimeout", nil];

			if !(call _checkCondition) then
			{
				_abortText = "";
				titleText ["", "PLAIN DOWN", 0.5];
			};

			if (doCancelAction) then
			{
				_abortText = "Cancelled by player.";
			};
		};

		if (_abortText != "") then
		{
			titleText [format ["%1\n%2", _abortText, "Resupply sequence aborted"], "PLAIN DOWN", 0.5];
			breakTo "resupplyTruckThread";
		};
	};


	// Check if player has enough money
	/*_checkPlayerMoney =
	{
		if (player getVariable ["cmoney",0] < _price) then
		{
			_text = format ["%1\n%2", format ["Not enough money, you need $%1 to resupply %2", _price, _vehName], "Resupply sequence aborted"];
			[_text, 10] call mf_notify_client;
			breakTo "resupplyTruckThread";
		};
	};*/

	call
	{
		if (_isStaticWep) then
		{
			_text = format ["%1\n%2", "Resupply sequence started", "Please get out of the static weapon."];
			titleText [_text, "PLAIN DOWN", 0.5];
			sleep 10;

			call _checkAbortConditions;
		};

		/*call _checkPlayerMoney;*/
		call _checkAbortConditions;

		_vehicle setVariable ["A3W_truckResupplyEngineEH", _vehicle addEventHandler ["Engine",
		{
			params ["_vehicle", "_started"];

			(_vehicle getVariable "A3W_truckResupplyThread") params [["_resupplyThread", scriptNull, [scriptNull]]];

			if (_started && !scriptDone _resupplyThread && !(_vehicle getVariable ["A3W_resupplyTruckTimeout", false])) then
			{
				_vehicle engineOn false;
			};
		}]];

		_vehicle engineOn false;

		/*if (player getVariable ["cmoney",0] >= _price) then
		{
			_msg = format ["%1<br/><br/>%2", format ["It will cost you $%1 to resupply %2.", _price, _vehName], "Do you want to proceed?"];

			if !([_msg, "Resupply Vehicle", true, true] call BIS_fnc_guiMessage) then
			{
				breakTo "resupplyTruckThread";
			};
		};*/

		call _checkAbortConditions;
		/*call _checkPlayerMoney;*/

		//start resupply here
		/*player setVariable ["cmoney", (player getVariable ["cmoney",0]) - _price, true];
		_text = format ["%1\n%2", format ["You paid $%1 to resupply %2.", _price, _vehName], "Please stand by..."];
		[_text, 10] call mf_notify_client;*/
		[] spawn fn_savePlayerData;

		call _checkAbortConditions;

		private _pathArrs = [];

		//Rearm Cycle
		// Collect turret mag data
		/*{
			_x params ["_mag", "_path", "_ammo"];

			if (_mag != "FakeWeapon") then
			{
				_pathArr = [_pathArrs, _path] call fn_getFromPairs;
				_new = isNil "_pathArr";

				if (_new) then { _pathArr = [] };

				_index = [_pathArr, _mag, 1] call fn_addToPairs;

				if (_ammo < getNumber (configFile >> "CfgMagazines" >> _mag >> "count")) then
				{
					(_pathArr select _index) set [2, true]; // mark mag for reload
				};

				if (_new) then { _pathArrs pushBack [_path, _pathArr] };
			};
		} forEach magazinesAllTurrets _vehicle;

		_checkDone = true;

		// Reload turret mags
		{
			_x params ["_path", "_magPairs"];

			{
				_x params ["_mag", "_qty", ["_notFull", false]];

				if (_notFull) then
				{
					if (_checkDone) then
					{
						_checkDone = false;
						sleep 3;
					};

					call _checkAbortConditions;

					_magName = getText (configFile >> "CfgMagazines" >> _mag >> "displayName");

					_text = format ["Reloading %1...", [_vehName, _magName] select (_magName != "")];
					_text call _titleText;

					sleep (REARM_TIME_SLICE / 2);
					call _checkAbortConditions;

					if (_qty isEqualTo 1) then
					{
						_vehicle setMagazineTurretAmmo [_mag, getNumber (configFile >> "CfgMagazines" >> _mag >> "count"), _path];
					}
					else
					{
						_vehicle removeMagazinesTurret [_mag, _path];

						private "_i";
						for "_i" from 1 to _qty do
						{
							_vehicle addMagazineTurret [_mag, _path];
						};
					};

					sleep (REARM_TIME_SLICE / 2);
				};
			} forEach _magPairs;
		} forEach _pathArrs;

		[_vehicle, false, true, true] call A3W_fnc_setVehicleLoadout;

		_checkDone = true;*/

		//Repair Cycle
		(getAllHitPointsDamage _vehicle) params ["_hitPoints", "_selections", "_dmgValues"];
		_repairSlice = if (count _hitPoints > 0) then { REPAIR_TIME_SLICE min (10 / (count _hitPoints)) } else { 0 }; // no longer than 10 seconds

		{

			if (_dmgValues select _forEachIndex > 0.001) then
			{
				/*if (_checkDone) then
				{
					_checkDone = false;
					sleep 3;
				};*/

				call _checkAbortConditions;

				"Repairing..." call _titleText;
				sleep (_repairSlice / 2);
				call _checkAbortConditions;

				if (_x != "") then
				{
					_vehicle setHitpointDamage [_x, 0];
				}
				else
				{
					_selName = _selections select _forEachIndex;

					if (_selName != "") then
					{
						_vehicle setHit [_selName, 0];
					};
				};

				sleep (_repairSlice / 2);
				_repaired = true;
			};
		} forEach _hitPoints;

		if (damage _vehicle > 0.001) then
		{
			call _checkAbortConditions;

			"Repairing..." call _titleText;
			sleep 1;

			call _checkAbortConditions;
			_vehicle setDamage 0;
			_repaired = true;
		};

		/*_checkDone = true;*/

		//Refuel Cycle
		/*if (fuel _vehicle < 0.999 && !_isStaticWep) then
		{
			while {fuel _vehicle < 0.999} do
			{
				if (_checkDone) then
				{
					_checkDone = false;
					sleep 3;
				};

				call _checkAbortConditions;

				"Refueling..." call _titleText;
				sleep (REFUEL_TIME_SLICE / 2);
				call _checkAbortConditions;

				_vehicle setFuel ((fuel _vehicle) + 0.1);
				 sleep (REFUEL_TIME_SLICE / 2);
			};
		};
		_checkDone = true;*/
		titleText ["Your vehicle is ready.", "PLAIN DOWN", 0.5];
	};
};

_vehicle setVariable ["A3W_truckResupplyThread", _resupplyThread];


// Secondary thread for cleanup in case of error in resupply thread
[_vehicle, _resupplyThread] spawn
{
	params ["_vehicle", "_resupplyThread"];

	waitUntil {scriptDone _resupplyThread};

	_ehID = _vehicle getVariable ["A3W_truckResupplyEngineEH", -1];

	if (_ehID isEqualType 0) then
	{
		_vehicle removeEventHandler ["Engine", _ehID];
	};

	_vehicle setVariable ["A3W_truckResupplyEngineEH", nil];
	mutexScriptInProgress = false;
};
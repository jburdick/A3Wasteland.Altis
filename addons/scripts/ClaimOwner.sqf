//@file Version: 1.0
//@file Name: ClaimOwner.sqf
//@file Author: BIB_Monkey

private("_operator", "_operatorID", "_playerID", "_vehicle", "_nearvehicle");

_nearvehicle =  nearestObjects [player, ["Car_F", "Ship_F", "Plane", "Tank", "Helicopter"], 4];
_vehicle = _nearvehicle select 0;
_operator = (driver _vehicle);
_playerID = getPlayerUID player;
_operatorID = getplayerUID _operator;

if (_operatorID == _playerID) then
		{
		/*_vehicle setVariable ["A3W_purchasedVehicle", true, true];
		_vehicle setVariable ["ownerUID", getPlayerUID player, true];
		_vehicle setVariable ["ownerName", name player, true];
		_vehicle setVariable ["ownedVehicle", true, true]; */
		titleText ["It's yours now!","PLAIN DOWN"]; titleFadeOut 5;
		}; 
		
	else
		{
		exitWith titleText ["You must be in a vehicle","PLAIN DOWN"]; titleFadeOut 5;
		};

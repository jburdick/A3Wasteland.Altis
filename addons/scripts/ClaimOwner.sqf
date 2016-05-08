//@file Version: 1.0
//@file Name: ClaimOwner.sqf
//@file Author: BIB_Monkey

private("_operator", "_operatorID" "_player", "_vehicle");

_vehicle =  nearestObjects [player, ["LandVehicle", "Ship", "Air"], 7];
_operator = driver _vehicle;
_player = getPlayerUID player;
_operatorID = getplayerUID _operator;


if (_operatorID = _player) 
	then 
	{ 
		_vehicle setVariable ["ownerUID", getPlayerUID player, true], 
		Hint "You licked the stearing wheel, the vehicle is yours now"
	}; 
	else 
	{ 
		Hint "Only vehicle operator can do this" 
	};

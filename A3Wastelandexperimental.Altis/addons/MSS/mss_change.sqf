/*
	file: mss_change.sqf
	author: Miller
*/
private["_vehicle","_seat","_seatold","_seatnew","_helo","_trucknato","_truckmednato","_block","_speed","_revoke","_notable","_speedlimit","_already"];
_vehicle = vehicle player;						//Players Vehicle
_seatold = _vehicle getCargoIndex player;		//Players Cargo Index
_seatnew = CargoNumber;							//New Cargo Index for Player
_helo = MSS_Helo;								//Is the Vehicle a helo? (from mss.sqf)
_trucknato = MSS_TruckNato;						//Is the Vehicle a truck (nato)? (from mss.sqf)
_truckmednato = MSS_TruckMedNato;				//Is the Vehicle a medical Truck (nato)? (from mss.sqf)
_speed = speed _vehicle;						//Speed of the Vehicle
_revoke = localize "STR_MSS_revoke";			//String
_notable = localize "STR_MSS_notable";			//String
_speedlimit = localize "STR_MSS_speedlimit";	//String
_already = localize "STR_MSS_already";			//String


if (_seatold == _seatnew) exitWith
	{
		hintSilent _already;
	};

if !(_helo == 1) then 
	{	
		//check if player is in a truck and wants to get on the front seat/is on the front seat
		if  ((_trucknato == 1 or _truckmednato == 1) && _speed != 0 && (_seatnew == 0 or _seatold == 0)) exitWith
			{
				//if the Trucks speed is not 0, the player can`t get to the front seat/away from the front seat
				hintSilent _speedlimit;
			};
		//check if player is passenger
		if !(_seatold == -1) exitWith
			{
				//give unit new seat
				MoveOut player;
				player moveInCargo [_vehicle, _seatnew];
				//check if its the correct seat
				_seat = _vehicle getCargoIndex player;
				if (_seat != _seatnew) exitWith
					{
						hintSilent _revoke;
						MoveOut player;
						player moveInCargo [_vehicle, _seatold];
					};
			};
		//check if player is driver
		if (driver _vehicle == player) exitWith
			{
				//give unit new seat
				MoveOut player;
				player moveInCargo [_vehicle, _seatnew];
				//check if its the correct seat
				_seat = _vehicle getCargoIndex player;
				if (_seat != _seatnew) then
					{
						hintSilent _revoke;
						MoveOut player;
						player moveInDriver _vehicle;
					};
			};
		//check if player is gunner
		if (gunner _vehicle == player) exitWith
			{
				//give unit new seat
				MoveOut player;
				player moveInCargo [_vehicle, _seatnew];
				//check if its the correct seat
				_seat = _vehicle getCargoIndex player;
				if (_seat != _seatnew) then
					{
						hintSilent _revoke;
						MoveOut player;
						player moveInGunner _vehicle;
					};
			};
		//check if player is commander
		if (commander _vehicle == player) exitWith
			{
				//give unit new seat
				MoveOut player;
				player moveInCargo [_vehicle, _seatnew];
				//check if its the correct seat
				_seat = _vehicle getCargoIndex player;
				if (_seat != _seatnew) then
					{
						hintSilent _revoke;
						MoveOut player;
						player moveInCommander _vehicle;
					};
			};
	};
	
if (_helo == 1) then 
	{
		//checks if player is Passenger
		if !(_seatold == -1) exitWith
			{
				//give unit new seat
				MoveOut player;
				player moveInCargo [_vehicle, _seatnew];
				//check if its the correct seat
				_seat = _vehicle getCargoIndex player;
				if (_seat != _seatnew) exitWith
					{
						hintSilent _revoke;
						MoveOut player;
						player moveInCargo [_vehicle, _seatold];
					};
			};
		//Heli Crew
		if (_seatold == -1) exitWith
			{
				hintSilent _notable;
			};
	};
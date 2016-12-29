
private["_vehicle","_crew","_crewnumber","_trucknato","_huron"];
_vehicle = vehicle player;
_crew = crew _vehicle;
_crewnumber = count _crew;
_trucknato = MSS_TruckNato;
_huron = MSS_Huron;

if (_crewnumber == 1) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		
		if (_seatpl1 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 7 && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 7 && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		//Not Huron! Normal seat
		if (_seatpl1 == 14 && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		//Huron! Weapon seat
		if (_seatpl1 == 14 && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		//Not Huron! Not Nato Truck! Normal seat
		if (_seatpl1 == 15 && (_trucknato != 1 && _huron != 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		//Nato Truck or Huron? Weapon seat
		if (_seatpl1 == 15 && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 2) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		
		if (_seatpl1 == 0 or _seatpl2 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 3) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 4) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};

if (_crewnumber == 5) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 6) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 7) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 8) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 9) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 10) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 11) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 12) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 13) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};

if (_crewnumber == 14) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		_pls14 = _crew select 13;
		_seatpl14 = _vehicle getCargoIndex _pls14;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0 or _seatpl14 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1 or _seatpl14 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2 or _seatpl14 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3 or _seatpl14 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4 or _seatpl14 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5 or _seatpl14 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6 or _seatpl14 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8 or _seatpl14 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9 or _seatpl14 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10 or _seatpl14 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11 or _seatpl14 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12 or _seatpl14 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13 or _seatpl14 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16 or _seatpl14 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17 or _seatpl14 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18 or _seatpl14 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 15) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		_pls14 = _crew select 13;
		_seatpl14 = _vehicle getCargoIndex _pls14;
		_pls15 = _crew select 14;
		_seatpl15 = _vehicle getCargoIndex _pls15;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0 or _seatpl14 == 0 or _seatpl15 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1 or _seatpl14 == 1 or _seatpl15 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2 or _seatpl14 == 2 or _seatpl15 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3 or _seatpl14 == 3 or _seatpl15 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4 or _seatpl14 == 4 or _seatpl15 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5 or _seatpl14 == 5 or _seatpl15 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6 or _seatpl14 == 6 or _seatpl15 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8 or _seatpl14 == 8 or _seatpl15 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9 or _seatpl14 == 9 or _seatpl15 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10 or _seatpl14 == 10 or _seatpl15 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11 or _seatpl14 == 11 or _seatpl15 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12 or _seatpl14 == 12 or _seatpl15 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13 or _seatpl14 == 13 or _seatpl15 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16 or _seatpl14 == 16 or _seatpl15 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17 or _seatpl14 == 17 or _seatpl15 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18 or _seatpl14 == 18 or _seatpl15 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 16) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		_pls14 = _crew select 13;
		_seatpl14 = _vehicle getCargoIndex _pls14;
		_pls15 = _crew select 14;
		_seatpl15 = _vehicle getCargoIndex _pls15;
		_pls16 = _crew select 15;
		_seatpl16 = _vehicle getCargoIndex _pls16;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0 or _seatpl14 == 0 or _seatpl15 == 0 or _seatpl16 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1 or _seatpl14 == 1 or _seatpl15 == 1 or _seatpl16 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2 or _seatpl14 == 2 or _seatpl15 == 2 or _seatpl16 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3 or _seatpl14 == 3 or _seatpl15 == 3 or _seatpl16 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4 or _seatpl14 == 4 or _seatpl15 == 4 or _seatpl16 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5 or _seatpl14 == 5 or _seatpl15 == 5 or _seatpl16 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6 or _seatpl14 == 6 or _seatpl15 == 6 or _seatpl16 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8 or _seatpl14 == 8 or _seatpl15 == 8 or _seatpl16 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9 or _seatpl14 == 9 or _seatpl15 == 9 or _seatpl16 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10 or _seatpl14 == 10 or _seatpl15 == 10 or _seatpl16 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11 or _seatpl14 == 11 or _seatpl15 == 11 or _seatpl16 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12 or _seatpl14 == 12 or _seatpl15 == 12 or _seatpl16 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13 or _seatpl14 == 13 or _seatpl15 == 13 or _seatpl16 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16 or _seatpl14 == 16 or _seatpl15 == 16 or _seatpl16 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17 or _seatpl14 == 17 or _seatpl15 == 17 or _seatpl16 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18 or _seatpl14 == 18 or _seatpl15 == 18 or _seatpl16 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 17) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		_pls14 = _crew select 13;
		_seatpl14 = _vehicle getCargoIndex _pls14;
		_pls15 = _crew select 14;
		_seatpl15 = _vehicle getCargoIndex _pls15;
		_pls16 = _crew select 15;
		_seatpl16 = _vehicle getCargoIndex _pls16;
		_pls17 = _crew select 16;
		_seatpl17 = _vehicle getCargoIndex _pls17;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0 or _seatpl14 == 0 or _seatpl15 == 0 or _seatpl16 == 0 or _seatpl17 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1 or _seatpl14 == 1 or _seatpl15 == 1 or _seatpl16 == 1 or _seatpl17 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2 or _seatpl14 == 2 or _seatpl15 == 2 or _seatpl16 == 2 or _seatpl17 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3 or _seatpl14 == 3 or _seatpl15 == 3 or _seatpl16 == 3 or _seatpl17 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4 or _seatpl14 == 4 or _seatpl15 == 4 or _seatpl16 == 4 or _seatpl17 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5 or _seatpl14 == 5 or _seatpl15 == 5 or _seatpl16 == 5 or _seatpl17 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6 or _seatpl14 == 6 or _seatpl15 == 6 or _seatpl16 == 6 or _seatpl17 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8 or _seatpl14 == 8 or _seatpl15 == 8 or _seatpl16 == 8 or _seatpl17 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9 or _seatpl14 == 9 or _seatpl15 == 9 or _seatpl16 == 9 or _seatpl17 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10 or _seatpl14 == 10 or _seatpl15 == 10 or _seatpl16 == 10 or _seatpl17 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11 or _seatpl14 == 11 or _seatpl15 == 11 or _seatpl16 == 11 or _seatpl17 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12 or _seatpl14 == 12 or _seatpl15 == 12 or _seatpl16 == 12 or _seatpl17 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13 or _seatpl14 == 13 or _seatpl15 == 13 or _seatpl16 == 13 or _seatpl17 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16 or _seatpl14 == 16 or _seatpl15 == 16 or _seatpl16 == 16 or _seatpl17 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17 or _seatpl14 == 17 or _seatpl15 == 17 or _seatpl16 == 17 or _seatpl17 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18 or _seatpl14 == 18 or _seatpl15 == 18 or _seatpl16 == 18 or _seatpl17 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 18) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		_pls14 = _crew select 13;
		_seatpl14 = _vehicle getCargoIndex _pls14;
		_pls15 = _crew select 14;
		_seatpl15 = _vehicle getCargoIndex _pls15;
		_pls16 = _crew select 15;
		_seatpl16 = _vehicle getCargoIndex _pls16;
		_pls17 = _crew select 16;
		_seatpl17 = _vehicle getCargoIndex _pls17;
		_pls18 = _crew select 17;
		_seatpl18 = _vehicle getCargoIndex _pls18;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0 or _seatpl14 == 0 or _seatpl15 == 0 or _seatpl16 == 0 or _seatpl17 == 0 or _seatpl18 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1 or _seatpl14 == 1 or _seatpl15 == 1 or _seatpl16 == 1 or _seatpl17 == 1 or _seatpl18 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2 or _seatpl14 == 2 or _seatpl15 == 2 or _seatpl16 == 2 or _seatpl17 == 2 or _seatpl18 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3 or _seatpl14 == 3 or _seatpl15 == 3 or _seatpl16 == 3 or _seatpl17 == 3 or _seatpl18 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4 or _seatpl14 == 4 or _seatpl15 == 4 or _seatpl16 == 4 or _seatpl17 == 4 or _seatpl18 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5 or _seatpl14 == 5 or _seatpl15 == 5 or _seatpl16 == 5 or _seatpl17 == 5 or _seatpl18 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6 or _seatpl14 == 6 or _seatpl15 == 6 or _seatpl16 == 6 or _seatpl17 == 6 or _seatpl18 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7 or _seatpl18 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7 or _seatpl18 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8 or _seatpl14 == 8 or _seatpl15 == 8 or _seatpl16 == 8 or _seatpl17 == 8 or _seatpl18 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9 or _seatpl14 == 9 or _seatpl15 == 9 or _seatpl16 == 9 or _seatpl17 == 9 or _seatpl18 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10 or _seatpl14 == 10 or _seatpl15 == 10 or _seatpl16 == 10 or _seatpl17 == 10 or _seatpl18 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11 or _seatpl14 == 11 or _seatpl15 == 11 or _seatpl16 == 11 or _seatpl17 == 11 or _seatpl18 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12 or _seatpl14 == 12 or _seatpl15 == 12 or _seatpl16 == 12 or _seatpl17 == 12 or _seatpl18 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13 or _seatpl14 == 13 or _seatpl15 == 13 or _seatpl16 == 13 or _seatpl17 == 13 or _seatpl18 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14 or _seatpl18 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14 or _seatpl18 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15 or _seatpl18 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15 or _seatpl18 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16 or _seatpl14 == 16 or _seatpl15 == 16 or _seatpl16 == 16 or _seatpl17 == 16 or _seatpl18 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17 or _seatpl14 == 17 or _seatpl15 == 17 or _seatpl16 == 17 or _seatpl17 == 17 or _seatpl18 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18 or _seatpl14 == 18 or _seatpl15 == 18 or _seatpl16 == 18 or _seatpl17 == 18 or _seatpl18 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 19) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		_pls14 = _crew select 13;
		_seatpl14 = _vehicle getCargoIndex _pls14;
		_pls15 = _crew select 14;
		_seatpl15 = _vehicle getCargoIndex _pls15;
		_pls16 = _crew select 15;
		_seatpl16 = _vehicle getCargoIndex _pls16;
		_pls17 = _crew select 16;
		_seatpl17 = _vehicle getCargoIndex _pls17;
		_pls18 = _crew select 17;
		_seatpl18 = _vehicle getCargoIndex _pls18;
		_pls19 = _crew select 18;
		_seatpl19 = _vehicle getCargoIndex _pls19;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0 or _seatpl14 == 0 or _seatpl15 == 0 or _seatpl16 == 0 or _seatpl17 == 0 or _seatpl18 == 0 or _seatpl19 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1 or _seatpl14 == 1 or _seatpl15 == 1 or _seatpl16 == 1 or _seatpl17 == 1 or _seatpl18 == 1 or _seatpl19 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2 or _seatpl14 == 2 or _seatpl15 == 2 or _seatpl16 == 2 or _seatpl17 == 2 or _seatpl18 == 2 or _seatpl19 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3 or _seatpl14 == 3 or _seatpl15 == 3 or _seatpl16 == 3 or _seatpl17 == 3 or _seatpl18 == 3 or _seatpl19 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4 or _seatpl14 == 4 or _seatpl15 == 4 or _seatpl16 == 4 or _seatpl17 == 4 or _seatpl18 == 4 or _seatpl19 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5 or _seatpl14 == 5 or _seatpl15 == 5 or _seatpl16 == 5 or _seatpl17 == 5 or _seatpl18 == 5 or _seatpl19 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6 or _seatpl14 == 6 or _seatpl15 == 6 or _seatpl16 == 6 or _seatpl17 == 6 or _seatpl18 == 6 or _seatpl19 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7 or _seatpl18 == 7 or _seatpl19 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7 or _seatpl18 == 7 or _seatpl19 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8 or _seatpl14 == 8 or _seatpl15 == 8 or _seatpl16 == 8 or _seatpl17 == 8 or _seatpl18 == 8 or _seatpl19 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9 or _seatpl14 == 9 or _seatpl15 == 9 or _seatpl16 == 9 or _seatpl17 == 9 or _seatpl18 == 9 or _seatpl19 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10 or _seatpl14 == 10 or _seatpl15 == 10 or _seatpl16 == 10 or _seatpl17 == 10 or _seatpl18 == 10 or _seatpl19 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11 or _seatpl14 == 11 or _seatpl15 == 11 or _seatpl16 == 11 or _seatpl17 == 11 or _seatpl18 == 11 or _seatpl19 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12 or _seatpl14 == 12 or _seatpl15 == 12 or _seatpl16 == 12 or _seatpl17 == 12 or _seatpl18 == 12 or _seatpl19 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13 or _seatpl14 == 13 or _seatpl15 == 13 or _seatpl16 == 13 or _seatpl17 == 13 or _seatpl18 == 13 or _seatpl19 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14 or _seatpl18 == 14 or _seatpl19 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14 or _seatpl18 == 14 or _seatpl19 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15 or _seatpl18 == 15 or _seatpl19 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15 or _seatpl18 == 15 or _seatpl19 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16 or _seatpl14 == 16 or _seatpl15 == 16 or _seatpl16 == 16 or _seatpl17 == 16 or _seatpl18 == 16 or _seatpl19 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17 or _seatpl14 == 17 or _seatpl15 == 17 or _seatpl16 == 17 or _seatpl17 == 17 or _seatpl18 == 17 or _seatpl19 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18 or _seatpl14 == 18 or _seatpl15 == 18 or _seatpl16 == 18 or _seatpl17 == 18 or _seatpl18 == 18 or _seatpl19 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
	
if (_crewnumber == 20) exitWith 
	{
		_pls1 = _crew select 0;
		_seatpl1 = _vehicle getCargoIndex _pls1;
		_pls2 = _crew select 1;
		_seatpl2 = _vehicle getCargoIndex _pls2;
		_pls3 = _crew select 2;
		_seatpl3 = _vehicle getCargoIndex _pls3;
		_pls4 = _crew select 3;
		_seatpl4 = _vehicle getCargoIndex _pls4;
		_pls5 = _crew select 4;
		_seatpl5 = _vehicle getCargoIndex _pls5;
		_pls6 = _crew select 5;
		_seatpl6 = _vehicle getCargoIndex _pls6;
		_pls7 = _crew select 6;
		_seatpl7 = _vehicle getCargoIndex _pls7;
		_pls8 = _crew select 7;
		_seatpl8 = _vehicle getCargoIndex _pls8;
		_pls9 = _crew select 8;
		_seatpl9 = _vehicle getCargoIndex _pls9;
		_pls10 = _crew select 9;
		_seatpl10 = _vehicle getCargoIndex _pls10;
		_pls11 = _crew select 10;
		_seatpl11 = _vehicle getCargoIndex _pls11;
		_pls12 = _crew select 11;
		_seatpl12 = _vehicle getCargoIndex _pls12;
		_pls13 = _crew select 12;
		_seatpl13 = _vehicle getCargoIndex _pls13;
		_pls14 = _crew select 13;
		_seatpl14 = _vehicle getCargoIndex _pls14;
		_pls15 = _crew select 14;
		_seatpl15 = _vehicle getCargoIndex _pls15;
		_pls16 = _crew select 15;
		_seatpl16 = _vehicle getCargoIndex _pls16;
		_pls17 = _crew select 16;
		_seatpl17 = _vehicle getCargoIndex _pls17;
		_pls18 = _crew select 17;
		_seatpl18 = _vehicle getCargoIndex _pls18;
		_pls19 = _crew select 18;
		_seatpl19 = _vehicle getCargoIndex _pls19;
		_pls20 = _crew select 19;
		_seatpl20 = _vehicle getCargoIndex _pls20;
		
		if (_seatpl1 == 0 or _seatpl2 == 0 or _seatpl3 == 0 or _seatpl4 == 0 or _seatpl5 == 0 or _seatpl6 == 0 or _seatpl7 == 0 or _seatpl8 == 0 or _seatpl9 == 0 or _seatpl10 == 0 or _seatpl11 == 0 or _seatpl12 == 0 or _seatpl13 == 0 or _seatpl14 == 0 or _seatpl15 == 0 or _seatpl16 == 0 or _seatpl17 == 0 or _seatpl18 == 0 or _seatpl19 == 0 or _seatpl20 == 0) then
			{
				ctrlSetText [1, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 1 or _seatpl2 == 1 or _seatpl3 == 1 or _seatpl4 == 1 or _seatpl5 == 1 or _seatpl6 == 1 or _seatpl7 == 1 or _seatpl8 == 1 or _seatpl9 == 1 or _seatpl10 == 1 or _seatpl11 == 1 or _seatpl12 == 1 or _seatpl13 == 1 or _seatpl14 == 1 or _seatpl15 == 1 or _seatpl16 == 1 or _seatpl17 == 1 or _seatpl18 == 1 or _seatpl19 == 1 or _seatpl20 == 1) then
			{
				ctrlSetText [2, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 2 or _seatpl2 == 2 or _seatpl3 == 2 or _seatpl4 == 2 or _seatpl5 == 2 or _seatpl6 == 2 or _seatpl7 == 2 or _seatpl8 == 2 or _seatpl9 == 2 or _seatpl10 == 2 or _seatpl11 == 2 or _seatpl12 == 2 or _seatpl13 == 2 or _seatpl14 == 2 or _seatpl15 == 2 or _seatpl16 == 2 or _seatpl17 == 2 or _seatpl18 == 2 or _seatpl19 == 2 or _seatpl20 == 2) then
			{
				ctrlSetText [3, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 3 or _seatpl2 == 3 or _seatpl3 == 3 or _seatpl4 == 3 or _seatpl5 == 3 or _seatpl6 == 3 or _seatpl7 == 3 or _seatpl8 == 3 or _seatpl9 == 3 or _seatpl10 == 3 or _seatpl11 == 3 or _seatpl12 == 3 or _seatpl13 == 3 or _seatpl14 == 3 or _seatpl15 == 3 or _seatpl16 == 3 or _seatpl17 == 3 or _seatpl18 == 3 or _seatpl19 == 3 or _seatpl20 == 3) then
			{
				ctrlSetText [4, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 4 or _seatpl2 == 4 or _seatpl3 == 4 or _seatpl4 == 4 or _seatpl5 == 4 or _seatpl6 == 4 or _seatpl7 == 4 or _seatpl8 == 4 or _seatpl9 == 4 or _seatpl10 == 4 or _seatpl11 == 4 or _seatpl12 == 4 or _seatpl13 == 4 or _seatpl14 == 4 or _seatpl15 == 4 or _seatpl16 == 4 or _seatpl17 == 4 or _seatpl18 == 4 or _seatpl19 == 4 or _seatpl20 == 4) then
			{
				ctrlSetText [5, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 5 or _seatpl2 == 5 or _seatpl3 == 5 or _seatpl4 == 5 or _seatpl5 == 5 or _seatpl6 == 5 or _seatpl7 == 5 or _seatpl8 == 5 or _seatpl9 == 5 or _seatpl10 == 5 or _seatpl11 == 5 or _seatpl12 == 5 or _seatpl13 == 5 or _seatpl14 == 5 or _seatpl15 == 5 or _seatpl16 == 5 or _seatpl17 == 5 or _seatpl18 == 5 or _seatpl19 == 5 or _seatpl20 == 5) then
			{
				ctrlSetText [6, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 6 or _seatpl2 == 6 or _seatpl3 == 6 or _seatpl4 == 6 or _seatpl5 == 6 or _seatpl6 == 6 or _seatpl7 == 6 or _seatpl8 == 6 or _seatpl9 == 6 or _seatpl10 == 6 or _seatpl11 == 6 or _seatpl12 == 6 or _seatpl13 == 6 or _seatpl14 == 6 or _seatpl15 == 6 or _seatpl16 == 6 or _seatpl17 == 6 or _seatpl18 == 6 or _seatpl19 == 6 or _seatpl20 == 6) then
			{
				ctrlSetText [7, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7 or _seatpl18 == 7 or _seatpl19 == 7 or _seatpl20 == 7) && _trucknato != 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 7 or _seatpl2 == 7 or _seatpl3 == 7 or _seatpl4 == 7 or _seatpl5 == 7 or _seatpl6 == 7 or _seatpl7 == 7 or _seatpl8 == 7 or _seatpl9 == 7 or _seatpl10 == 7 or _seatpl11 == 7 or _seatpl12 == 7 or _seatpl13 == 7 or _seatpl14 == 7 or _seatpl15 == 7 or _seatpl16 == 7 or _seatpl17 == 7 or _seatpl18 == 7 or _seatpl19 == 7 or _seatpl20 == 7) && _trucknato == 1) then
			{
				ctrlSetText [8, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 8 or _seatpl2 == 8 or _seatpl3 == 8 or _seatpl4 == 8 or _seatpl5 == 8 or _seatpl6 == 8 or _seatpl7 == 8 or _seatpl8 == 8 or _seatpl9 == 8 or _seatpl10 == 8 or _seatpl11 == 8 or _seatpl12 == 8 or _seatpl13 == 8 or _seatpl14 == 8 or _seatpl15 == 8 or _seatpl16 == 8 or _seatpl17 == 8 or _seatpl18 == 8 or _seatpl19 == 8 or _seatpl20 == 8) then
			{
				ctrlSetText [9, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 9 or _seatpl2 == 9 or _seatpl3 == 9 or _seatpl4 == 9 or _seatpl5 == 9 or _seatpl6 == 9 or _seatpl7 == 9 or _seatpl8 == 9 or _seatpl9 == 9 or _seatpl10 == 9 or _seatpl11 == 9 or _seatpl12 == 9 or _seatpl13 == 9 or _seatpl14 == 9 or _seatpl15 == 9 or _seatpl16 == 9 or _seatpl17 == 9 or _seatpl18 == 9 or _seatpl19 == 9 or _seatpl20 == 9) then
			{
				ctrlSetText [10, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 10 or _seatpl2 == 10 or _seatpl3 == 10 or _seatpl4 == 10 or _seatpl5 == 10 or _seatpl6 == 10 or _seatpl7 == 10 or _seatpl8 == 10 or _seatpl9 == 10 or _seatpl10 == 10 or _seatpl11 == 10 or _seatpl12 == 10 or _seatpl13 == 10 or _seatpl14 == 10 or _seatpl15 == 10 or _seatpl16 == 10 or _seatpl17 == 10 or _seatpl18 == 10 or _seatpl19 == 10 or _seatpl20 == 10) then
			{
				ctrlSetText [11, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 11 or _seatpl2 == 11 or _seatpl3 == 11 or _seatpl4 == 11 or _seatpl5 == 11 or _seatpl6 == 11 or _seatpl7 == 11 or _seatpl8 == 11 or _seatpl9 == 11 or _seatpl10 == 11 or _seatpl11 == 11 or _seatpl12 == 11 or _seatpl13 == 11 or _seatpl14 == 11 or _seatpl15 == 11 or _seatpl16 == 11 or _seatpl17 == 11 or _seatpl18 == 11 or _seatpl19 == 11 or _seatpl20 == 11) then
			{
				ctrlSetText [12, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 12 or _seatpl2 == 12 or _seatpl3 == 12 or _seatpl4 == 12 or _seatpl5 == 12 or _seatpl6 == 12 or _seatpl7 == 12 or _seatpl8 == 12 or _seatpl9 == 12 or _seatpl10 == 12 or _seatpl11 == 12 or _seatpl12 == 12 or _seatpl13 == 12 or _seatpl14 == 12 or _seatpl15 == 12 or _seatpl16 == 12 or _seatpl17 == 12 or _seatpl18 == 12 or _seatpl19 == 12 or _seatpl20 == 12) then
			{
				ctrlSetText [13, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 13 or _seatpl2 == 13 or _seatpl3 == 13 or _seatpl4 == 13 or _seatpl5 == 13 or _seatpl6 == 13 or _seatpl7 == 13 or _seatpl8 == 13 or _seatpl9 == 13 or _seatpl10 == 13 or _seatpl11 == 13 or _seatpl12 == 13 or _seatpl13 == 13 or _seatpl14 == 13 or _seatpl15 == 13 or _seatpl16 == 13 or _seatpl17 == 13 or _seatpl18 == 13 or _seatpl19 == 13 or _seatpl20 == 13) then
			{
				ctrlSetText [14, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14 or _seatpl18 == 14 or _seatpl19 == 14 or _seatpl20 == 14) && _huron != 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 14 or _seatpl2 == 14 or _seatpl3 == 14 or _seatpl4 == 14 or _seatpl5 == 14 or _seatpl6 == 14 or _seatpl7 == 14 or _seatpl8 == 14 or _seatpl9 == 14 or _seatpl10 == 14 or _seatpl11 == 14 or _seatpl12 == 14 or _seatpl13 == 14 or _seatpl14 == 14 or _seatpl15 == 14 or _seatpl16 == 14 or _seatpl17 == 14 or _seatpl18 == 14 or _seatpl19 == 14 or _seatpl20 == 14) && _huron == 1) then
			{
				ctrlSetText [15, "MSS\Picture\seatwepocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15 or _seatpl18 == 15 or _seatpl19 == 15 or _seatpl20 == 15) && _trucknato != 1 && _huron != 1) then
			{
				ctrlSetText [16, "MSS\Picture\seatocc.paa"]
			};
		if ((_seatpl1 == 15 or _seatpl2 == 15 or _seatpl3 == 15 or _seatpl4 == 15 or _seatpl5 == 15 or _seatpl6 == 15 or _seatpl7 == 15 or _seatpl8 == 15 or _seatpl9 == 15 or _seatpl10 == 15 or _seatpl11 == 15 or _seatpl12 == 15 or _seatpl13 == 15 or _seatpl14 == 15 or _seatpl15 == 15 or _seatpl16 == 15 or _seatpl17 == 15 or _seatpl18 == 15 or _seatpl19 == 15 or _seatpl20 == 15) && (_trucknato == 1 or _huron == 1)) then
			{
				ctrlSetText [16, "MSS\Picture\seatwepocc.paa"]
			};
		if (_seatpl1 == 16 or _seatpl2 == 16 or _seatpl3 == 16 or _seatpl4 == 16 or _seatpl5 == 16 or _seatpl6 == 16 or _seatpl7 == 16 or _seatpl8 == 16 or _seatpl9 == 16 or _seatpl10 == 16 or _seatpl11 == 16 or _seatpl12 == 16 or _seatpl13 == 16 or _seatpl14 == 16 or _seatpl15 == 16 or _seatpl16 == 16 or _seatpl17 == 16 or _seatpl18 == 16 or _seatpl19 == 16 or _seatpl20 == 16) then
			{
				ctrlSetText [17, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 17 or _seatpl2 == 17 or _seatpl3 == 17 or _seatpl4 == 17 or _seatpl5 == 17 or _seatpl6 == 17 or _seatpl7 == 17 or _seatpl8 == 17 or _seatpl9 == 17 or _seatpl10 == 17 or _seatpl11 == 17 or _seatpl12 == 17 or _seatpl13 == 17 or _seatpl14 == 17 or _seatpl15 == 17 or _seatpl16 == 17 or _seatpl17 == 17 or _seatpl18 == 17 or _seatpl19 == 17 or _seatpl20 == 17) then
			{
				ctrlSetText [18, "MSS\Picture\seatocc.paa"]
			};
		if (_seatpl1 == 18 or _seatpl2 == 18 or _seatpl3 == 18 or _seatpl4 == 18 or _seatpl5 == 18 or _seatpl6 == 18 or _seatpl7 == 18 or _seatpl8 == 18 or _seatpl9 == 18 or _seatpl10 == 18 or _seatpl11 == 18 or _seatpl12 == 18 or _seatpl13 == 18 or _seatpl14 == 18 or _seatpl15 == 18 or _seatpl16 == 18 or _seatpl17 == 18 or _seatpl18 == 18 or _seatpl19 == 18 or _seatpl20 == 18) then
			{
				ctrlSetText [19, "MSS\Picture\seatocc.paa"]
			};
	};
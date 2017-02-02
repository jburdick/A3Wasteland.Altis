// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: getDefaultClothing.sqf
//	@file Author: AgentRev
//	@file Created: 22/12/2013 22:04

private ["_unit", "_item", "_side", "_isSniper", "_isDiver", "_defaultVest", "_result"];

_unit = _this select 0;
_item = _this select 1;

if (typeName _unit == "OBJECT") then
{
	_side = if (_unit == player) then { playerSide } else { side _unit };
	_unit = typeOf _unit;
}
else
{
	_side = _this select 2;
};

_isSniper = (["_sniper_", _unit] call fn_findString != -1);
_isDiver = (["_diver_", _unit] call fn_findString != -1);

_defaultVest = "V_BandollierB_blk";

_result = "";

switch (_side) do
{
	case BLUFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_Rangemaster" };
				if (_item == "vest") then { _result = "V_BandollierB_blk" };
				if (_item == "goggles") then { _result = "G_Bandanna_aviator" };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_I_G_Story_Protagonist_F" };
				if (_item == "vest") then { _result = "V_RebreatherB" };
				if (_item == "goggles") then { _result = "G_B_Diving" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_BG_Guerilla2_1" };
				if (_item == "vest") then { _result = "V_BandollierB_blk" };
				if (_item == "goggles") then { _result = "G_Aviator" };
			};
		};

		if (_item == "headgear") then { _result = "H_Cap_police" };
	};
	case OPFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_O_Ghilliesuit" };
				if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_O_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherIR" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_MilCap_ocamo" };
	};
	default
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_I_C_Soldier_Bandit_3_F" };
				if (_item == "vest") then { _result = "V_BandollierB_blk" };
				if (_item == "goggles") then { _result = "G_Bandanna_beast" };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_I_C_Soldier_Bandit_1_F" };
				if (_item == "vest") then { _result = "V_RebreatherIA" };
				if (_item == "goggles") then { _result = "G_I_Diving" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_I_C_Soldier_Bandit_4_F" };
				if (_item == "vest") then { _result = "V_BandollierB_blk" };
				if (_item == "goggles") then { _result = "G_Bandanna_oli" };
			};
		};

		if (_item == "headgear") then { _result = "H_Cap_blk" };
	};
};

_result

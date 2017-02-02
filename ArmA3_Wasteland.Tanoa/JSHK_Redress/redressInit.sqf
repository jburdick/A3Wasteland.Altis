/*////////////////////////////////////
Author: J.Shock
Script File: redressInit.sqf
Parameters:
	1- Side (EAST, WEST, CIV, GUER) ~ default: EAST
	2- Use of special units (true/false) ~ default: true
	3- Check for spawned units (true/false) ~ default: false
Description: Initializes all variables needed for redressing process.
			 Also excludes the units that need not be redressed, as 
			 defined by the user in: _indvUnitExclude and _grpUnitExculde.
			 Contains the gear/loadout arrays to be defined by user.
Return: None
**DISCLAIMER**
Do not remove the header from this file. Any reproduced portions of this code
must include credits to the author (J.Shock).
*////////////////////////////////////
_sideToRedress = [_this, 0, EAST, [EAST]] call BIS_fnc_param;
_specialUnits = [_this, 1, false, [true]] call BIS_fnc_param;
_continuous = [_this, 2, true, [true]] call BIS_fnc_param;
//Need to exclude certain units/groups, fill out the below arrays!
//-----------------------------
_indvUnitExclude = [];//<<Put individual unit's variable names here.
_grpUnitExculde = [];//<<Put the group leader's variable names here.
_factionExclusion = [];//<<Put faction classnames here
//-----------------------------
//Gear classes names go below!
//-----------------------------
JSHK_weaponArr = ["srifle_EBR_DMS_F","srifle_EBR_Hamr_pointer_F","arifle_SPAR_02_blk_F","arifle_Mk20_GL_MRCO_pointer_F","srifle_DMR_02_ARCO_F","srifle_DMR_03_khaki_F","srifle_DMR_03_SOS_F","srifle_DMR_06_camo_khs_F","srifle_DMR_06_camo_F"];
JSHK_uniformArr = ["U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F","U_I_C_Soldier_Para_4_F","U_I_C_Soldier_Para_5_F"];
JSHK_vestArr = ["V_HarnessOSpec_gry", "V_TacVestIR_blk", "V_BandollierB_oli","V_Rangemaster_belt","V_PlateCarrierL_CTRG"];
JSHK_headArr = ["H_Booniehat_khk","H_Cap_oli","H_Cap_blk","H_Cap_blk_ION","H_MilCap_blue","H_Beret_blk","H_BandMask_blk","H_Bandanna_gry","H_ShemagOpen_tan"];
JSHK_goggleArr = ["G_Bandanna_sport","G_Bandanna_tan","G_Balaclava_blk","G_Bandanna_beast","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli"];
JSHK_backpackArr = ["B_Kitbag_cbr","B_FieldPack_khk","B_Bergen_sgg","B_FieldPack_cbr","B_Kitbag_rgr","B_FieldPack_blk"];
//-----------------------------
//Special Units Classnames
//-----------------------------
JSHK_ATunits = [];
JSHK_Medicalunits = [];
JSHK_AAunits = [];
//-----------------------------
/////***************\\\\\
// Leave the rest ALONE! \\
/////***************\\\\\

_units = [];

{
	_currentUnit = _x; 
	if ((side _currentUnit isEqualTo _sideToRedress) &&
	   {({_currentUnit in (units group _x)}count _grpUnitExculde isEqualTo 0)} &&
	   {!(_currentUnit in _indvUnitExclude)} &&
	   {!(_currentUnit getVariable ["JSHK_doneRedress",false])}) then 
	{ 
		_units set [count _units, _currentUnit];
	}
	else
	{
		if (({_currentUnit in (units group _x)}count _grpUnitExculde > 0) || (_currentUnit in _indvUnitExclude) || ((faction _currentUnit) in _factionExclusion)) then
		{
			_currentUnit setVariable ["JSHK_doneRedress",true];
		};
	};
}forEach allUnits;

[_units,_specialUnits,_sideToRedress,_continuous,_factionExclusion] call JSHK_fnc_Redress;

diag_log "Shock's Redressing Script Initialized.";
// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: optionSelect.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19

#define debugMenu_option 50003
#define adminMenu_option 50001
disableSerialization;

private ["_panelType","_displayAdmin","_displayDebug","_adminSelect","_debugSelect","_money"];
_uid = getPlayerUID player;
if (_uid call isAdmin) then
{
	_panelType = _this select 0;
	_displayAdmin = uiNamespace getVariable ["AdminMenu", displayNull];
	_displayDebug = uiNamespace getVariable ["DebugMenu", displayNull];

	switch (true) do
	{
		case (!isNull _displayAdmin): //Admin panel
		{
			_adminSelect = _displayAdmin displayCtrl adminMenu_option;

			switch (lbCurSel _adminSelect) do
			{
				case 0: //Money
				{
					_money = 1000000;
					player setVariable ["cmoney", (player getVariable ["cmoney",0]) + _money, true];
				};
				case 1: //Debug Menu
				{
					closeDialog 0;
					execVM "client\systems\adminPanel\loadDebugMenu.sqf";
				};
				case 2: // toggle God mode
				{
					execVM "client\systems\adminPanel\toggleGodMode.sqf";
				};
			};
		};
		case (!isNull _displayDebug): //Debug panel
		{
			_debugSelect = _displayDebug displayCtrl debugMenu_option;

			switch (lbCurSel _debugSelect) do
			{
				case 0: //Access Gun Store
				{
					closeDialog 0;
					[] call loadGunStore;
				};
				case 1: //Access General Store
				{
					closeDialog 0;
					[] call loadGeneralStore;
				};
				case 2: //Access Vehicle Store
				{
					closeDialog 0;
					[] call loadVehicleStore;
				};
				case 3: //Access ATM Dialog
				{
					closeDialog 0;
					call mf_items_atm_access;
				};
				case 4: //Access Respawn Dialog
				{
					closeDialog 0;
					true spawn client_respawnDialog;
				};
				case 5: //Show server FPS function
				{
					hint format["Server FPS: %1",serverFPS];
				};
			};
		};
	};
};

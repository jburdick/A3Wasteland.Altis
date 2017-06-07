//Script to Randomly place USS Freedom on map
//Author BIB_Monkey

private ["_POS", "_USSFreedom", "_Resupply"];
_POS = floor random 5;
diag_log "Placing USS Freedom";
switch (true) do
{
  case (_POS == 0):
  {
    _USSFreedom = createVehicle ["Land_Carrier_01_base_F", [29360.4,929.155,185.97],[], 0,"CAN_COLLIDE"];
    /*_Resupply = createVehicle ["Land_Cargo40_blue_F", [29320.3,969.371,209.618], [], 0, "CAN_COLLIDE"];*/
    [_USSFreedom] remoteExecCall ["A3W_fnc_setupResupplyShip", 0, _USSFreedom];
  };
  case (_POS == 1):
  {
    _USSFreedom = createVehicle ["Land_Carrier_01_base_F", [29360.4,929.155,185.97],[], 0,"CAN_COLLIDE"];
    /*_Resupply = createVehicle ["Land_Cargo40_blue_F", [29320.3,969.371,209.618], [], 0, "CAN_COLLIDE"];*/
    [_USSFreedom] remoteExecCall ["A3W_fnc_setupResupplyShip", 0, _USSFreedom];
  };
  case (_POS == 2):
  {
    _USSFreedom = createVehicle ["Land_Carrier_01_base_F", [29360.4,929.155,185.97],[], 0,"CAN_COLLIDE"];
    /*_Resupply = createVehicle ["Land_Cargo40_blue_F", [29320.3,969.371,209.618], [], 0, "CAN_COLLIDE"];*/
    [_USSFreedom] remoteExecCall ["A3W_fnc_setupResupplyShip", 0, _USSFreedom];
  };
  case (_POS == 3):
  {
    _USSFreedom = createVehicle ["Land_Carrier_01_base_F", [29360.4,929.155,185.97],[], 0,"CAN_COLLIDE"];
    /*_Resupply = createVehicle ["Land_Cargo40_blue_F", [29320.3,969.371,209.618], [], 0, "CAN_COLLIDE"];*/
    [_USSFreedom] remoteExecCall ["A3W_fnc_setupResupplyShip", 0, _USSFreedom];
  };
  case (_POS == 4):
  {
    _USSFreedom = createVehicle ["Land_Carrier_01_base_F", [29360.4,929.155,185.97],[], 0,"CAN_COLLIDE"];
    /*_Resupply = createVehicle ["Land_Cargo40_blue_F", [29320.3,969.371,209.618], [], 0, "CAN_COLLIDE"];*/
    [_USSFreedom] remoteExecCall ["A3W_fnc_setupResupplyShip", 0, _USSFreedom];
  };
};
diag_log "USS Freedom placed"

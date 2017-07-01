_NearestManager = nearestObject [player, "Land_SatellitePhone_F"];
_playerUID = getPlayerUID player;
_ManagerOwner = _NearestManager getvariable "ownerUID";

If ((player distance _NearestManager) < 50) then {
  If (_playerUID == _ManagerOwner) then {
    execVM "addons\BoS\BoS_remote_ownerMenu.sqf";
    hint "Welcome Owner";
  } else {
    execVM "addons\BoS\remote_password_enter.sqf";
    hint "Welcome";
  };
} else {
  hint "No Base Manager in Range";
};

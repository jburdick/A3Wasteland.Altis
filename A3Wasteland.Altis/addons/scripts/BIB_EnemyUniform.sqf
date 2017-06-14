//Title BIB_EnemyUniform
//Author BIB_Monkey
//Script allows players to equip enemy faction uniforms
/*_target= (cursorObject);
_loadout= getUnitLoadout _target;
_inventory= getItemCargo player;
_weapon= weapons player;

[DURATION, ANIMATION] call a3w_actions_start;

hint "Taking Gear";
removeAllItems _target;
removeuniform _target;
removeallweapons _target;
removebackpack _target;
removeGoggles _target;
removeHeadgear _target;
player setunitloadout _loadout;
player addItemCargo _inventory;
player addWeapon [_weapon this select 0];
player addWeapon [_weapon this select 1];
player addWeapon [_weapon this select 2];*/

#define DURATION 10
#define ANIMATION "AinvPknlMstpSlayWrflDnon_medic"

private _target = (cursorObject);


private _started = [DURATION, ANIMATION,] call a3w_actions_start;

if (_started) then
{
  ["Taking Gear", 10] call mf_notify_client;
  removeAllItems _target;
  removeuniform _target;
  removeallweapons _target;
  removebackpack _target;
  removeGoggles _target;
  removeHeadgear _target;
  player setunitloadout _loadout;
  player addItemCargo _inventory;
  player addWeapon [_weapon this select 0];
  player addWeapon [_weapon this select 1];
  player addWeapon [_weapon this select 2];
};

_started

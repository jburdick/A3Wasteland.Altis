/**
 * drop un objet en train d'�tre h�liport�
 * 
 * @param 0 l'h�liporteur
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

if (R3F_LOG_mutex_local_verrou) then
{
	hintC STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	private ["_HeliLift", "_object", "_airdrop"];
	
	_HeliLift = _this select 0;
	_object = _HeliLift getVariable "R3F_LOG_heliporte";
	_parachute = [_this, 3, false, [false]] call BIS_fnc_param;
	
	_HeliLift setVariable ["R3F_LOG_heliporte", objNull, true];
	_object setVariable ["R3F_LOG_est_transporte_par", objNull, true];

	// D�tacher l'objet et lui appliquer la vitesse de l'h�liporteur (inertie)
//	[_object, "detachSetVelocity", velocity _HeliLift] call R3F_LOG_FNCT_exec_commande_MP;

	if (_parachute) then
	{
		pvar_parachuteLiftedVehicle = netId _object;
		publicVariableServer "pvar_parachuteLiftedVehicle";
	}
	else
	{
		_airdrop = (vectorMagnitude velocity _HeliLift > 15 || (getPos _HeliLift) select 2 > 40);

		if (local _object) then
		{
			[_object, _airdrop] call detachTowedObject;
		}
		else
		{
			pvar_detachTowedObject = [netId _object, _airdrop];
			publicVariable "pvar_detachTowedObject";
		};
	};
	
	systemChat format [STR_R3F_LOG_action_heliport_drop_fait, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
	
	R3F_LOG_mutex_local_verrou = false;
};
/**
 * H�liporte un objet avec un h�liporteur
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
	
	private ["_HeliLift", "_object"];
	
	_HeliLift = _this select 0;
	
	// Recherche de l'objet � h�liporter
	_object = objNull;
	{
		if (
			(_x getVariable ["R3F_LOG_fonctionnalites", R3F_LOG_CST_zero_log] select R3F_LOG_IDX_can_be_lifted) &&
			_x != _HeliLift && !(_x getVariable "R3F_LOG_disabled") &&
			((getPosASL _HeliLift select 2) - (getPosASL _x select 2) > 2 && (getPosASL _HeliLift select 2) - (getPosASL _x select 2) < 15)
		) exitWith {_object = _x;};
	} forEach (nearestObjects [_HeliLift, ["All"], 20]);
	
	if (!isNull _object) then
	{
		if !(_object getVariable "R3F_LOG_disabled") then
		{
			if (isNull (_object getVariable "R3F_LOG_est_transporte_par") && (isNull (_object getVariable "R3F_LOG_est_deplace_par") || (!alive (_object getVariable "R3F_LOG_est_deplace_par")) || (!isPlayer (_object getVariable "R3F_LOG_est_deplace_par")))) then
			{
				// Finalement on autorise l'h�liport d'un v�hicule avec du personnel � bord
				//if (count crew _object == 0 || getNumber (configFile >> "CfgVehicles" >> (typeOf _object) >> "isUav") == 1) then
				//{
					// Ne pas h�liporter quelque chose qui remorque autre chose
					if (isNull (_object getVariable ["R3F_LOG_remorque", objNull])) then
					{
						private ["_duree", "_ctrl_titre", "_ctrl_fond", "_ctrl_jauge", "_time_debut", "_attente_valide", "_pas_de_hook"];
						
						_duree = 0;
						
						#define _JAUGE_Y 0.7
						#define _JAUGE_W 0.4
						#define _JAUGE_H 0.025
						
						disableSerialization;
						
						_time_debut = time;
						_attente_valide = true;
						
						while {_attente_valide && time - _time_debut < _duree} do
						{
							//_ctrl_titre ctrlSetText format [STR_R3F_LOG_action_heliport_attente, ceil (_duree - (time - _time_debut))];
							
							// A partir des versions > 1.32, on interdit le lift si le hook de BIS est utilis�
							if (productVersion select 2 > 132) then
							{
								// Call compile car la commande getSlingLoad n'existe pas en 1.32
								_pas_de_hook = _HeliLift call compile format ["isNull getSlingLoad _this"];
							}
							else
							{
								_pas_de_hook = true;
							};
							
							// Pour valider l'h�liportage, il faut rester en stationnaire au dessus de l'objet pendant le compte-�-rebours
							if !(
								alive player && vehicle player == _HeliLift && !(_HeliLift getVariable "R3F_LOG_disabled") && _pas_de_hook &&
								isNull (_HeliLift getVariable "R3F_LOG_heliporte") && (vectorMagnitude velocity _HeliLift < 6) && (_HeliLift distance _object < 15) &&
								!(_object getVariable "R3F_LOG_disabled") && isNull (_object getVariable "R3F_LOG_est_transporte_par") &&
								(isNull (_object getVariable "R3F_LOG_est_deplace_par") || (!alive (_object getVariable "R3F_LOG_est_deplace_par")) || (!isPlayer (_object getVariable "R3F_LOG_est_deplace_par"))) &&
								((getPosASL _HeliLift select 2) - (getPosASL _object select 2) > 2 && (getPosASL _HeliLift select 2) - (getPosASL _object select 2) < 15)
							) then
							{
								_attente_valide = false;
							};
							
							sleep 0.1;
						};
						
						// On effecture l'h�liportage
						if (_attente_valide) then
						{
							_HeliLift setVariable ["R3F_LOG_heliporte", _object, true];
							_object setVariable ["R3F_LOG_est_transporte_par", _HeliLift, true];
							
							_heliBB = _HeliLift call fn_boundingBoxReal;
							_heliMinBB = _heliBB select 0;
							_heliMaxBB = _heliBB select 1;

							_objectBB = _object call fn_boundingBoxReal;
							_objectMinBB = _objectBB select 0;
							_objectMaxBB = _objectBB select 1;

							_objectCenterX = (_objectMinBB select 0) + (((_objectMaxBB select 0) - (_objectMinBB select 0)) / 2);
							_objectCenterY = (_objectMinBB select 1) + (((_objectMaxBB select 1) - (_objectMinBB select 1)) / 2);

							_heliPos = _HeliLift modelToWorld [0,0,0];
							_objectPos = _object modelToWorld [0,0,0];

							_minZ = (_heliMinBB select 2) - (_objectMaxBB select 2) - 0.5;

							// Attacher sous l'h�liporteur au ras du sol
							[_object, true] call fn_enableSimulationGlobal;
							_object attachTo [_HeliLift,
							[
								0 - _objectCenterX,
								0 - _objectCenterY,
								((_objectPos select 2) - (_heliPos select 2) + 2) min _minZ
							]];
							
							systemChat format [STR_R3F_LOG_action_heliporter_fait, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
							
							// Boucle de contr�le pendant l'h�liportage
							[_HeliLift, _object] spawn
							{
								private ["_HeliLift", "_object", "_a_ete_souleve"];
								
								_HeliLift = _this select 0;
								_object = _this select 1;
								
								_a_ete_souleve = false;
								
								while {_HeliLift getVariable "R3F_LOG_heliporte" == _object} do
								{
									// M�moriser si l'objet a d�j� �t� soulev� (cables tendus)
									if (!_a_ete_souleve && getPos _object select 2 > 3) then
									{
										_a_ete_souleve = true;
									};
									
									// Si l'h�lico se fait d�truire ou si l'objet h�liport� entre en contact avec le sol, on largue l'objet
									if (!alive _HeliLift || (_a_ete_souleve && getPos _object select 2 < 0)) exitWith
									{
										_HeliLift setVariable ["R3F_LOG_heliporte", objNull, true];
										_object setVariable ["R3F_LOG_est_transporte_par", objNull, true];
										
										// D�tacher l'objet et lui appliquer la vitesse de l'h�liporteur (inertie)
										[_object, "detachSetVelocity", velocity _HeliLift] call R3F_LOG_FNCT_exec_commande_MP;
										
										systemChat format [STR_R3F_LOG_action_heliport_drop_fait, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
									};
									
									sleep 0.1;
								};
							};
						}
						else
						{
							systemChat STR_R3F_LOG_action_heliport_echec_attente;
						};
					}
					else
					{
						systemChat format [STR_R3F_LOG_object_remorque_en_cours, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
					};
			}
			else
			{
				systemChat format [STR_R3F_LOG_object_en_cours_transport, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
			};
		};
	};
	
	R3F_LOG_mutex_local_verrou = false;
};
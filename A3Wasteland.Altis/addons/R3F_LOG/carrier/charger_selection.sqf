/**
 * Charger l'objet s�lectionn� (R3F_LOG_object_selectionne) dans un carrier
 * 
 * @param 0 le carrier
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
	
	private ["_object", "_carrier"];
	
	_object = R3F_LOG_object_selectionne;
	_carrier = _this select 0;
	
	if (!(isNull _object) && !(_object getVariable "R3F_LOG_disabled")) then
	{
		if (isNull (_object getVariable "R3F_LOG_est_transporte_par") && (isNull (_object getVariable "R3F_LOG_est_deplace_par") || (!alive (_object getVariable "R3F_LOG_est_deplace_par")) || (!isPlayer (_object getVariable "R3F_LOG_est_deplace_par")))) then
		{
			if (isNull (_object getVariable ["R3F_LOG_remorque", objNull])) then
			{
				if (count crew _object == 0 || getNumber (configFile >> "CfgVehicles" >> (typeOf _object) >> "isUav") == 1) then
				{
					private ["_objects_charges", "_chargement", "_cout_chargement_object"];
					
					_chargement = [_carrier] call R3F_LOG_FNCT_calculer_chargement_vehicule;
					_cout_chargement_object = _object getVariable "R3F_LOG_fonctionnalites" select R3F_LOG_IDX_can_be_transported_cargo_cout;
					
					// Si l'objet loge dans le v�hicule
					if ((_chargement select 0) + _cout_chargement_object <= (_chargement select 1)) then
					{
						if (_object distance _carrier <= 30) then
						{
							[_carrier, player] call R3F_LOG_FNCT_define_owner_lock;
							
							// On m�morise sur le r�seau le nouveau contenu du v�hicule
							_objects_charges = _carrier getVariable ["R3F_LOG_objects_charges", []];
							_objects_charges = _objects_charges + [_object];
							_carrier setVariable ["R3F_LOG_objects_charges", _objects_charges, true];
							
							_object setVariable ["R3F_LOG_est_transporte_par", _carrier, true];
							
							systemChat STR_R3F_LOG_action_charger_en_cours;
							
							sleep 2;
							
							// Gestion conflit d'acc�s
							if (_object getVariable "R3F_LOG_est_transporte_par" == _carrier && _object in (_carrier getVariable "R3F_LOG_objects_charges")) then
							{
								_object attachTo [R3F_LOG_PUBVAR_point_attache, [] call R3F_LOG_FNCT_3D_tirer_position_degagee_ciel];
								
								systemChat format [STR_R3F_LOG_action_charger_fait,
									getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName"),
									getText (configFile >> "CfgVehicles" >> (typeOf _carrier) >> "displayName")];
							}
							else
							{
								_object setVariable ["R3F_LOG_est_transporte_par", objNull, true];
								hintC format ["ERROR : " + STR_R3F_LOG_object_en_cours_transport, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
							};
						}
						else
						{
							hintC format [STR_R3F_LOG_trop_loin, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
						};
					}
					else
					{
						hintC STR_R3F_LOG_action_charger_pas_assez_de_place;
					};
				}
				else
				{
					hintC format [STR_R3F_LOG_joueur_dans_object, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
				};
			}
			else
			{
				hintC format [STR_R3F_LOG_object_remorque_en_cours, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
			};
		}
		else
		{
			hintC format [STR_R3F_LOG_object_en_cours_transport, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
		};
	};
	
	R3F_LOG_object_selectionne = objNull;
	
	R3F_LOG_mutex_local_verrou = false;
};
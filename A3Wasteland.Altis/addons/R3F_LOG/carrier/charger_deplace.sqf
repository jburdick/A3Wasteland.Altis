/**
 * Charger l'objet d�plac� par le joueur dans un carrier
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
	
	_object = R3F_LOG_joueur_deplace_object;
	_carrier = [_object, 5] call R3F_LOG_FNCT_3D_cursorTarget_virtuel;
	
	if (!isNull _carrier && {
		_carrier getVariable ["R3F_LOG_fonctionnalites", R3F_LOG_CST_zero_log] select R3F_LOG_IDX_can_transport_cargo &&
		alive _carrier && (vectorMagnitude velocity _carrier < 6) && !(_carrier getVariable "R3F_LOG_disabled") &&
		(abs ((getPosASL _carrier select 2) - (getPosASL player select 2)) < 2.5)
	}) then
	{
		if (isNull (_object getVariable ["R3F_LOG_remorque", objNull])) then
		{
			private ["_objects_charges", "_chargement", "_cout_chargement_object"];
			
			_chargement = [_carrier] call R3F_LOG_FNCT_calculer_chargement_vehicule;
			_cout_chargement_object = _object getVariable "R3F_LOG_fonctionnalites" select R3F_LOG_IDX_can_be_transported_cargo_cout;
			
			// Si l'objet loge dans le v�hicule
			if ((_chargement select 0) + _cout_chargement_object <= (_chargement select 1)) then
			{
				[_carrier, player] call R3F_LOG_FNCT_define_owner_lock;
				
				// On m�morise sur le r�seau le nouveau contenu du v�hicule
				_objects_charges = _carrier getVariable ["R3F_LOG_objects_charges", []];
				_objects_charges = _objects_charges + [_object];
				_carrier setVariable ["R3F_LOG_objects_charges", _objects_charges, true];
				
				_object setVariable ["R3F_LOG_est_transporte_par", _carrier, true];
				
				// Faire release l'objet au joueur
				R3F_LOG_joueur_deplace_object = objNull;
				waitUntil {_object getVariable "R3F_LOG_est_deplace_par" != player};
				
				_object attachTo [R3F_LOG_PUBVAR_point_attache, [] call R3F_LOG_FNCT_3D_tirer_position_degagee_ciel];
				
				systemChat format [STR_R3F_LOG_action_charger_fait,
					getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName"),
					getText (configFile >> "CfgVehicles" >> (typeOf _carrier) >> "displayName")];
			}
			else
			{
				hintC STR_R3F_LOG_action_charger_pas_assez_de_place;
			};
		}
		else
		{
			hintC format [STR_R3F_LOG_object_remorque_en_cours, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
		};
	};
	
	R3F_LOG_mutex_local_verrou = false;
};
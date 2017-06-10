/**
 * D�charger un objet d'un carrier - appel� deuis l'interface listant le contenu du carrier
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
	
	#include "dlg_constantes.h"
	private ["_carrier", "_objects_charges", "_type_object_a_decharger", "_object_a_decharger", "_action_confirmee", "_est_movable"];
	
	_carrier = uiNamespace getVariable "R3F_LOG_dlg_CV_carrier";
	_objects_charges = _carrier getVariable ["R3F_LOG_objects_charges", []];
	
	if (lbCurSel R3F_LOG_IDC_dlg_CV_liste_contenu == -1) exitWith {R3F_LOG_mutex_local_verrou = false;};
	
	_type_object_a_decharger = lbData [R3F_LOG_IDC_dlg_CV_liste_contenu, lbCurSel R3F_LOG_IDC_dlg_CV_liste_contenu];
	
	_est_movable = ([_type_object_a_decharger] call R3F_LOG_FNCT_determiner_fonctionnalites_logistique) select R3F_LOG_IDX_can_be_moved_by_player;
	
	if (!(_type_object_a_decharger isKindOf "AllVehicles") && !_est_movable) then
	{
		_action_confirmee = [STR_R3F_LOG_action_decharger_movable_exceptionnel, "Warning", true, true] call BIS_fnc_GUImessage;
	}
	else
	{
		_action_confirmee = true;
	};
	
	if (_action_confirmee) then
	{
		closeDialog 0;
		
		// Recherche d'un objet du type demand�
		_object_a_decharger = objNull;
		{
			if (typeOf _x == _type_object_a_decharger) exitWith
			{
				_object_a_decharger = _x;
			};
		} forEach _objects_charges;
		
		if !(isNull _object_a_decharger) then
		{
			[_object_a_decharger, player] call R3F_LOG_FNCT_define_owner_lock;
			
			// On m�morise sur le r�seau le nouveau contenu du carrier (c�d avec cet objet en moins)
			_objects_charges = _carrier getVariable ["R3F_LOG_objects_charges", []];
			_objects_charges = _objects_charges - [_object_a_decharger];
			_carrier setVariable ["R3F_LOG_objects_charges", _objects_charges, true];
			
			_object_a_decharger setVariable ["R3F_LOG_est_transporte_par", objNull, true];
			
			// Prise en compte de l'objet dans l'environnement du joueur (acc�l�rer le retour des addActions)
			_object_a_decharger spawn
			{
				sleep 4;
				R3F_LOG_PUBVAR_reveler_au_joueur = _this;
				publicVariable "R3F_LOG_PUBVAR_reveler_au_joueur";
				["R3F_LOG_PUBVAR_reveler_au_joueur", R3F_LOG_PUBVAR_reveler_au_joueur] spawn R3F_LOG_FNCT_PUBVAR_reveler_au_joueur;
			};
			
			if (!(_object_a_decharger isKindOf "AllVehicles") || _est_movable) then
			{
				R3F_LOG_mutex_local_verrou = false;
				[_object_a_decharger, player, 0, true] spawn R3F_LOG_FNCT_object_move;
			}
			else
			{
				private ["_bbox_dim", "_pos_degagee", "_rayon"];
				
				systemChat STR_R3F_LOG_action_decharger_en_cours;
				
				_bbox_dim = (vectorMagnitude (boundingBoxReal _object_a_decharger select 0)) max (vectorMagnitude (boundingBoxReal _object_a_decharger select 1));
				
				sleep 1;
				
				// Recherche d'une position d�gag�e (on augmente progressivement le rayon jusqu'� trouver une position)
				for [{_rayon = 5 max (2*_bbox_dim); _pos_degagee = [];}, {count _pos_degagee == 0 && _rayon <= 30 + (8*_bbox_dim)}, {_rayon = _rayon + 10 + (2*_bbox_dim)}] do
				{
					_pos_degagee = [
						_bbox_dim,
						_carrier modelToWorld [0, if (_carrier isKindOf "AllVehicles") then {(boundingBoxReal _carrier select 0 select 1) - 2 - 0.3*_rayon} else {0}, 0],
						_rayon,
						100 min (5 + _rayon^1.2)
					] call R3F_LOG_FNCT_3D_tirer_position_degagee_sol;
				};
				
				if (count _pos_degagee > 0) then
				{
					detach _object_a_decharger;
					_object_a_decharger setPos _pos_degagee;
					_object_a_decharger setVectorDirAndUp [[-cos getDir _carrier, sin getDir _carrier, 0] vectorCrossProduct surfaceNormal _pos_degagee, surfaceNormal _pos_degagee];
					_object_a_decharger setVelocity [0, 0, 0];

					sleep 0.4; // Car la nouvelle position n'est pas prise en compte instantann�ment
					
					// Si l'objet a �t� cr�� assez loin, on indique sa position relative
					if (_object_a_decharger distance _carrier > 40) then
					{
						systemChat format [STR_R3F_LOG_action_decharger_fait + " (%2)",
							getText (configFile >> "CfgVehicles" >> (typeOf _object_a_decharger) >> "displayName"),
							format ["%1m %2deg", round (_object_a_decharger distance _carrier), round ([_carrier, _object_a_decharger] call BIS_fnc_dirTo)]
						];
					}
					else
					{
						systemChat format [STR_R3F_LOG_action_decharger_fait, getText (configFile >> "CfgVehicles" >> (typeOf _object_a_decharger) >> "displayName")];
					};
					R3F_LOG_mutex_local_verrou = false;
				}
				// Si �chec recherche position d�gag�e, on d�charge l'objet comme un d�pla�able
				else
				{
					systemChat "WARNING : no free position found.";
					
					R3F_LOG_mutex_local_verrou = false;
					[_object_a_decharger, player, 0, true] spawn R3F_LOG_FNCT_object_move;
				};
			};
		}
		else
		{
			hintC STR_R3F_LOG_action_decharger_deja_fait;
			R3F_LOG_mutex_local_verrou = false;
		};
	}
	else
	{
		R3F_LOG_mutex_local_verrou = false;
	};
};
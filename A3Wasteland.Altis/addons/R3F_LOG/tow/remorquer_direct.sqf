/**
 * Remorque l'objet point� au v�hicule tow valide le plus proche
 * 
 * @param 0 l'objet � remorquer
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
	
	private ["_object", "_tow", "_offset_attach_y"];
	
	_object = _this select 0;
	
	// Recherche du tow valide le plus proche
	_tow = objNull;
	{
		if (
			_x != _object && (_x getVariable ["R3F_LOG_fonctionnalites", R3F_LOG_CST_zero_log] select R3F_LOG_IDX_can_tow) &&
			alive _x && isNull (_x getVariable "R3F_LOG_est_transporte_par") &&
			isNull (_x getVariable "R3F_LOG_remorque") && (vectorMagnitude velocity _x < 6) &&
			!([_x, player] call R3F_LOG_FNCT_object_East_Locked) && !(_x getVariable "R3F_LOG_disabled") &&
			{
				private ["_delta_pos"];
				
				_delta_pos =
				(
					_object modelToWorld
					[
						boundingCenter _object select 0,
						boundingBoxReal _object select 1 select 1,
						boundingBoxReal _object select 0 select 2
					]
				) vectorDiff (
					_x modelToWorld
					[
						boundingCenter _x select 0,
						boundingBoxReal _x select 0 select 1,
						boundingBoxReal _x select 0 select 2
					]
				);
				
				// L'arri�re du tow est proche de l'avant de l'objet point�
				abs (_delta_pos select 0) < 3 && abs (_delta_pos select 1) < 5
			}
		) exitWith {_tow = _x;};
	} forEach (nearestObjects [_object, ["All"], 30]);
	
	if (!isNull _tow) then
	{
		if (isNull (_object getVariable "R3F_LOG_est_transporte_par") && (isNull (_object getVariable "R3F_LOG_est_deplace_par") || (!alive (_object getVariable "R3F_LOG_est_deplace_par")) || (!isPlayer (_object getVariable "R3F_LOG_est_deplace_par")))) then
		{
			[_tow, player] call R3F_LOG_FNCT_define_owner_lock;
			
			_tow setVariable ["R3F_LOG_remorque", _object, true];
			_object setVariable ["R3F_LOG_est_transporte_par", _tow, true];

			if (local _object) then
			{
				["disableDriving", _object] call A3W_fnc_towingHelper;
			}
			else
			{
				[["disableDriving", netId _object], "A3W_fnc_towingHelper", _object] call A3W_fnc_MP;
			};
					
			player switchMove "AinvPknlMstpSlayWrflDnon_medic";
			
			_towerBB = _tow call fn_boundingBoxReal;
			_towerMinBB = _towerBB select 0;
			_towerMaxBB = _towerBB select 1;

			_objectBB = _object call fn_boundingBoxReal;
			_objectMinBB = _objectBB select 0;
			_objectMaxBB = _objectBB select 1;

			_towerCenterX = (_towerMinBB select 0) + (((_towerMaxBB select 0) - (_towerMinBB select 0)) / 2);
			_objectCenterX = (_objectMinBB select 0) + (((_objectMaxBB select 0) - (_objectMinBB select 0)) / 2);
			
			_towerGroundPos = _tow worldToModel (_tow call fn_getPos3D);
			
			if ((getPosASL player) select 2 > 0) then
			{
				// On place le joueur sur le c�t� du v�hicule, ce qui permet d'�viter les blessure et rend l'animation plus r�aliste
				player attachTo [_tow,
				[
					(_towerMinBB select 0) - 0.25,
					(_towerMinBB select 1) - 0.25,
					_towerMinBB select 2
				]];

				player setDir 90;
				player setPos (getPos player);
				sleep 0.05;
				detach player;
			};

			sleep 2;

			// Quelques corrections visuelles pour des classes sp�cifiques
			if (typeOf _tow == "B_Truck_01_mover_F") then {_offset_attach_y = 1.0;}
			else {_offset_attach_y = 0.2;};
			
			// Attacher � l'arri�re du v�hicule au ras du sol
			_object attachTo [_tow,
			[
				_towerCenterX - _objectCenterX,
				(_towerMinBB select 1) - (_objectMaxBB select 1) - 0.5,
				(_towerGroundPos select 2) - (_objectMinBB select 2) + 0.1
			]];
			
			R3F_LOG_object_selectionne = objNull;
			
			detach player;
			
			// Si l'objet est une arme statique, on corrige l'orientation en fonction de la direction du canon
			if (_object isKindOf "StaticWeapon") then
			{
				private ["_azimut_canon"];
				
				_azimut_canon = ((_object weaponDirection (weapons _object select 0)) select 0) atan2 ((_object weaponDirection (weapons _object select 0)) select 1);
				
				// Seul le D30 a le canon pointant vers le v�hicule
				if !(_object isKindOf "D30_Base") then // All in Arma
				{
					_azimut_canon = _azimut_canon + 180;
				};
				
				[_object, "setDir", (getDir _object)-_azimut_canon] call R3F_LOG_FNCT_exec_commande_MP;
			};
			
			sleep 7;
		}
		else
		{
			hintC format [STR_R3F_LOG_object_en_cours_transport, getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")];
		};
	};
	
	R3F_LOG_mutex_local_verrou = false;
};
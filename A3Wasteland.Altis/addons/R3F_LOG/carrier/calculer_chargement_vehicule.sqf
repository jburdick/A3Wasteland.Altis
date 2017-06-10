/**
 * Retourne le chargement actuel et la capacit� maximale d'un v�hicule
 * 
 * @param 0 le carrier pour lequel calculer le chargement
 * 
 * @return tableau content le chargement actuel et la capacit� d'un v�hicule
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

private ["_carrier", "_objects_charges", "_chargement_actuel", "_chargement_maxi"];

_carrier = _this select 0;

_objects_charges = _carrier getVariable ["R3F_LOG_objects_charges", []];

// Calcul du chargement actuel
_chargement_actuel = 0;
{
	if (isNil {_x getVariable "R3F_LOG_fonctionnalites"}) then
	{
		_chargement_actuel = _chargement_actuel + (([typeOf _x] call R3F_LOG_FNCT_determiner_fonctionnalites_logistique) select R3F_LOG_IDX_can_be_transported_cargo_cout);
	}
	else
	{
		_chargement_actuel = _chargement_actuel + (_x getVariable "R3F_LOG_fonctionnalites" select R3F_LOG_IDX_can_be_transported_cargo_cout);
	};
	
} forEach _objects_charges;

// Recherche de la capacit� maximale du carrier
if (isNil {_carrier getVariable "R3F_LOG_fonctionnalites"}) then
{
	_chargement_maxi = ([typeOf _carrier] call R3F_LOG_FNCT_determiner_fonctionnalites_logistique) select R3F_LOG_IDX_can_transport_cargo_cout;
}
else
{
	_chargement_maxi = _carrier getVariable "R3F_LOG_fonctionnalites" select R3F_LOG_IDX_can_transport_cargo_cout;
};

[_chargement_actuel, _chargement_maxi]
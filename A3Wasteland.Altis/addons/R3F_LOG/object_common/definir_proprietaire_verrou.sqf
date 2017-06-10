/**
 * D�fini le propri�taire (side/faction/player) du verrou d'un objet
 * 
 * @param 0 l'objet pour lequel d�finir le propri�taire du verrou
 * @param 1 l'unit� pour laquelle d�finir le verrou
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

private ["_object", "_unite"];

_object = _this select 0;
_unite = _this select 1;

// Si le verrou de l'objet ne correspond pas � l'unit�, on red�fini sa valeur pour lui correspondre
if (isNil {_object getVariable "R3F_LOG_proprietaire_verrou"} || {[_object, _unite] call R3F_LOG_FNCT_object_East_Locked}) then
{
	switch (R3F_LOG_CFG_lock_objects_mode) do
	{
		case "side": {_object setVariable ["R3F_LOG_proprietaire_verrou", side group _unite, true];};
		case "faction": {_object setVariable ["R3F_LOG_proprietaire_verrou", faction _unite, true];};
		case "player": {_object setVariable ["R3F_LOG_proprietaire_verrou", name _unite, true];};
		case "unit": {_object setVariable ["R3F_LOG_proprietaire_verrou", _unite, true];};
	};
};
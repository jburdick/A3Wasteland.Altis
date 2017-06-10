/**
 * D�termine si un objet est verrouill� ou non pour un joueur donn�
 * 
 * @param 0 l'objet pour lequel savoir s'il est verrouill�
 * @param 1 l'unit� pour laquelle savoir si l'objet est verrouill�
 * 
 * @return true si l'objet est verrouill�, false sinon
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

private ["_object", "_unite", "_object_verrouille"];

_object = _this select 0;
_unite = _this select 1;

_object_verrouille = switch (R3F_LOG_CFG_lock_objects_mode) do
{
	case "side": {_object getVariable ["R3F_LOG_proprietaire_verrou", side group _unite] != side group _unite};
	case "faction": {_object getVariable ["R3F_LOG_proprietaire_verrou", faction _unite] != faction _unite};
	case "player": {_object getVariable ["R3F_LOG_proprietaire_verrou", name _unite] != name _unite};
	case "unit": {_object getVariable ["R3F_LOG_proprietaire_verrou", _unite] != _unite};
	default {false};
};

_object_verrouille
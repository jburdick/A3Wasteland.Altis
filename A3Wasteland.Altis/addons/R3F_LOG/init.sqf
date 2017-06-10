/**
 * Script principal qui initialise le syst�me de logistique
 *
 * Copyright (C) 2014 Team ~R3F~
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "R3F_LOG_ENABLE.h"

#ifdef R3F_LOG_enable

	// Initializes empty lists before the config.sqf starts
	R3F_LOG_CFG_can_tow = [];
	R3F_LOG_CFG_can_be_towed = [];
	R3F_LOG_CFG_can_lift = [];
	R3F_LOG_CFG_can_be_lifted = [];
	R3F_LOG_CFG_can_transport_cargo = [];
	R3F_LOG_CFG_can_be_transported_cargo = [];
	R3F_LOG_CFG_can_be_moved_by_player = [];

	#include "config.sqf"

	// Loading the language file
	call compile preprocessFile format ["addons\R3F_LOG\%1_strings_lang.sqf", R3F_LOG_CFG_language];

/*

We reverse the order of all class name lists to give priority to specific classes on generic classes

*/
	reverse R3F_LOG_CFG_can_tow;
	reverse R3F_LOG_CFG_can_be_towed;
	reverse R3F_LOG_CFG_can_lift;
	reverse R3F_LOG_CFG_can_be_lifted;
	reverse R3F_LOG_CFG_can_transport_cargo;
	reverse R3F_LOG_CFG_can_be_transported_cargo;
	reverse R3F_LOG_CFG_can_be_moved_by_player;

	// We pass all class names in lowercase
	{R3F_LOG_CFG_can_tow set [_forEachIndex, toLower _x];} forEach R3F_LOG_CFG_can_tow;
	{R3F_LOG_CFG_can_be_towed set [_forEachIndex, toLower _x];} forEach R3F_LOG_CFG_can_be_towed;
	{R3F_LOG_CFG_can_lift set [_forEachIndex, toLower _x];} forEach R3F_LOG_CFG_can_lift;
	{R3F_LOG_CFG_can_be_lifted set [_forEachIndex, toLower _x];} forEach R3F_LOG_CFG_can_be_lifted;
	{R3F_LOG_CFG_can_transport_cargo select _forEachIndex set [0, toLower (_x select 0)];} forEach R3F_LOG_CFG_can_transport_cargo;
	{R3F_LOG_CFG_can_be_transported_cargo select _forEachIndex set [0, toLower (_x select 0)];} forEach R3F_LOG_CFG_can_be_transported_cargo;
	{R3F_LOG_CFG_can_be_moved_by_player set [_forEachIndex, toLower _x];} forEach R3F_LOG_CFG_can_be_moved_by_player;

	// We construct the list of carrier classes in the associated quantities (for nearestObjects, count isKindOf,...)
	R3F_LOG_classes_carriers = [];
	{
		R3F_LOG_classes_carriers pushBack (_x select 0);
	} forEach R3F_LOG_CFG_can_transport_cargo;

	// We construct the list of transportable classes in the associated quantities (for nearestObjects, count isKindOf, ...)
	R3F_LOG_classes_objects_transportables = [];
	{
		R3F_LOG_classes_objects_transportables pushBack (_x select 0);
	} forEach R3F_LOG_CFG_can_be_transported_cargo;

	// Union of object type tables used in an isKindOf
	R3F_LOG_objects_depl_heli_remorq_transp = [];
	{
		if !(_x in R3F_LOG_objects_depl_heli_remorq_transp) then
		{
			R3F_LOG_objects_depl_heli_remorq_transp pushBack _x;
		};
	} forEach (R3F_LOG_CFG_can_be_moved_by_player + R3F_LOG_CFG_can_be_lifted + R3F_LOG_CFG_can_be_towed + R3F_LOG_classes_objects_transportables);

	// Gestion compatibilit� fichier de config 3.0 => 3.1 (d�finition de valeurs par d�faut)
	if (isNil "R3F_LOG_CFG_lock_objects_mode") then {R3F_LOG_CFG_lock_objects_mode = "side";};
	if (isNil "R3F_LOG_CFG_unlock_objects_timer") then {R3F_LOG_CFG_unlock_objects_timer = 30;};
	if (isNil "R3F_LOG_CFG_CF_sell_back_bargain_rate") then {R3F_LOG_CFG_CF_sell_back_bargain_rate = 0.75;};
	if (isNil "R3F_LOG_CFG_CF_creation_cost_factor") then {R3F_LOG_CFG_CF_creation_cost_factor = [];};

	/* FIN import config */

	if (isServer) then
	{
		// On cr�e le point d'attache qui servira aux attachTo pour les objets � charger virtuellement dans les v�hicules
		R3F_LOG_PUBVAR_point_attache = "Land_HelipadEmpty_F" createVehicle [0,0,0];
		R3F_LOG_PUBVAR_point_attache setPosASL [0,0,0];
		R3F_LOG_PUBVAR_point_attache setVectorDirAndUp [[0,1,0], [0,0,1]];

		// Partage du point d'attache avec tous les joueurs
		publicVariable "R3F_LOG_PUBVAR_point_attache";

		/** Liste des objets � ne pas perdre dans un vehicule/cargo d�truit */
		R3F_LOG_liste_objects_a_proteger = [];

		/* Prot�ge les objets pr�sents dans R3F_LOG_liste_objects_a_proteger */
		execVM "addons\R3F_LOG\monitor_objects_a_proteger.sqf";
	};

	/**
	 * Suite � une PVEH, ex�cute une commande en fonction de la localit� de l'argument
	 * @param 0 l'argument sur lequel ex�cuter la commande
	 * @param 1 la commande � ex�cuter (cha�ne de caract�res)
	 * @param 2 les �ventuels param�tres de la commande (optionnel)
	 * @note il faut passer par la fonction R3F_LOG_FNCT_exec_commande_MP
	 */
	R3F_LOG_FNCT_PVEH_commande_MP =
	{
		private ["_argument", "_commande", "_parametre"];
		_argument = _this select 1 select 0;
		_commande = _this select 1 select 1;
		_parametre = if (count (_this select 1) == 3) then {_this select 1 select 2} else {0};

		// Commandes � argument global et effet local
		switch (_commande) do
		{
			// Aucune pour l'instant
			// ex : case "switchMove": {_argument switchMove _parametre;};
		};

		// Commandes � argument local et effet global
		if (local _argument) then
		{
			switch (_commande) do
			{
				case "setDir": {_argument setDir _parametre;};
				case "setVelocity": {_argument setVelocity _parametre;};
				case "detachSetVelocity": {detach _argument; _argument setVelocity _parametre;};
			};
		};

		// Commandes � faire uniquement sur le serveur
		if (isServer) then
		{
			if (_commande == "setOwnerTo") then
			{
				_argument setOwner (owner _parametre);
			};
		};
	};
	"R3F_LOG_PV_commande_MP" addPublicVariableEventHandler R3F_LOG_FNCT_PVEH_commande_MP;

	/**
	 * Ordonne l'ex�cution d'une commande quelque soit la localit� de l'argument ou de l'effet
	 * @param 0 l'argument sur lequel ex�cuter la commande
	 * @param 1 la commande � ex�cuter (cha�ne de caract�res)
	 * @param 2 les �ventuels param�tres de la commande (optionnel)
	 * @usage [_object, "setDir", 160] call R3F_LOG_FNCT_exec_commande_MP
	 */
	R3F_LOG_FNCT_exec_commande_MP =
	{
		R3F_LOG_PV_commande_MP = _this;
		publicVariable "R3F_LOG_PV_commande_MP";
		["R3F_LOG_PV_commande_MP", R3F_LOG_PV_commande_MP] spawn R3F_LOG_FNCT_PVEH_commande_MP;
	};

	/** Pseudo-mutex permettant de n'ex�cuter qu'un script de manipulation d'objet � la fois (true : v�rouill�) */
	R3F_LOG_mutex_local_verrou = false;

	call compile preprocessFile "addons\R3F_LOG\functions\lib_geometrie_3D.sqf";

	// Indices du tableau des fonctionnalit�s retourn� par R3F_LOG_FNCT_determiner_fonctionnalites_logistique
	R3F_LOG_IDX_can_be_depl_heli_remorq_transp = 0;
	R3F_LOG_IDX_can_be_moved_by_player = 1;
	R3F_LOG_IDX_can_lift = 2;
	R3F_LOG_IDX_can_be_lifted = 3;
	R3F_LOG_IDX_can_tow = 4;
	R3F_LOG_IDX_can_be_towed = 5;
	R3F_LOG_IDX_can_transport_cargo = 6;
	R3F_LOG_IDX_can_transport_cargo_cout = 7;
	R3F_LOG_IDX_can_be_transported_cargo = 8;
	R3F_LOG_IDX_can_be_transported_cargo_cout = 9;
	R3F_LOG_CST_zero_log = [false, false, false, false, false, false, false, 0, false, 0];

	R3F_LOG_FNCT_determiner_fonctionnalites_logistique = compile preprocessFile "addons\R3F_LOG\functions\determiner_fonctionnalites_logistique.sqf";

	R3F_LOG_FNCT_calculer_chargement_vehicule = compile preprocessFile "addons\R3F_LOG\carrier\calculer_chargement_vehicule.sqf";
	R3F_LOG_FNCT_carrier_charger_auto = compile preprocessFile "addons\R3F_LOG\carrier\charger_auto.sqf";

	// Un serveur d�di� n'en a pas besoin
	if !(isDedicated) then
	{
		// Le client attend que le serveur ai cr�� et publi� la r�f�rence de l'objet servant de point d'attache
		waitUntil {!isNil "R3F_LOG_PUBVAR_point_attache"};

		/** Indique quel objet le joueur est en train de d�placer, objNull si aucun */
		R3F_LOG_joueur_deplace_object = objNull;

		/** Objet actuellement s�lectionner pour �tre charg�/remorqu� */
		R3F_LOG_object_selectionne = objNull;

		/** Tableau contenant toutes les usines cr��es */
		R3F_LOG_CF_liste_usines = [];

		call compile preprocessFile "addons\R3F_LOG\functions\lib_visualisation_object.sqf";

		R3F_LOG_FNCT_object_release = compile preprocessFile "addons\R3F_LOG\objet_movable\release.sqf";
		R3F_LOG_FNCT_object_move = compile preprocessFile "addons\R3F_LOG\objet_movable\move.sqf";

		R3F_LOG_FNCT_HeliLift_heliporter = compile preprocessFile "addons\R3F_LOG\HeliLift\heliporter.sqf";
		R3F_LOG_FNCT_HeliLift_drop = compile preprocessFile "addons\R3F_LOG\HeliLift\drop.sqf";
		R3F_LOG_FNCT_HeliLift_init = compile preprocessFile "addons\R3F_LOG\HeliLift\HeliLift_init.sqf";

		R3F_LOG_FNCT_tow_detacher = compile preprocessFile "addons\R3F_LOG\tow\detacher.sqf";
		R3F_LOG_FNCT_tow_remorquer_deplace = compile preprocessFile "addons\R3F_LOG\tow\remorquer_deplace.sqf";
		R3F_LOG_FNCT_tow_remorquer_direct = compile preprocessFile "addons\R3F_LOG\tow\remorquer_direct.sqf";
		R3F_LOG_FNCT_tow_init = compile preprocessFile "addons\R3F_LOG\tow\tow_init.sqf";

		R3F_LOG_FNCT_carrier_charger_deplace = compile preprocessFile "addons\R3F_LOG\carrier\charger_deplace.sqf";
		R3F_LOG_FNCT_carrier_charger_selection = compile preprocessFile "addons\R3F_LOG\carrier\charger_selection.sqf";
		R3F_LOG_FNCT_carrier_decharger = compile preprocessFile "addons\R3F_LOG\carrier\decharger.sqf";
		R3F_LOG_FNCT_carrier_selectionner_object = compile preprocessFile "addons\R3F_LOG\carrier\selectionner_object.sqf";
		R3F_LOG_FNCT_carrier_voir_contenu_vehicule = compile preprocessFile "addons\R3F_LOG\carrier\voir_contenu_vehicule.sqf";
		R3F_LOG_FNCT_carrier_init = compile preprocessFile "addons\R3F_LOG\carrier\carrier_init.sqf";
		R3F_disallowedLocations = call compile preprocessFile "addons\R3F_LOG\objet_movable\disallowedLocations.sqf";

		R3F_LOG_FNCT_object_init = compile preprocessFile "addons\R3F_LOG\object_common\objet_init.sqf";
		R3F_LOG_FNCT_object_East_Locked = compile preprocessFile "addons\R3F_LOG\object_common\object_East_Locked.sqf";
		R3F_LOG_FNCT_unlock_object = compile preprocessFile "addons\R3F_LOG\object_common\unlock_object.sqf";
		R3F_LOG_FNCT_define_owner_lock = compile preprocessFile "addons\R3F_LOG\object_common\define_owner_lock.sqf";

		R3F_LOG_FNCT_formater_fonctionnalites_logistique = compile preprocessFile "addons\R3F_LOG\functions\formater_fonctionnalites_logistique.sqf";
		R3F_LOG_FNCT_formater_nombre_entier_milliers = compile preprocessFile "addons\R3F_LOG\functions\formater_nombre_entier_milliers.sqf";

		// Liste des variables activant ou non les actions de menu
		R3F_LOG_action_charger_deplace_valide = false;
		R3F_LOG_action_charger_selection_valide = false;
		R3F_LOG_action_contenu_vehicule_valide = false;

		R3F_LOG_action_remorquer_deplace_valide = false;

		R3F_LOG_action_heliporter_valide = false;
		R3F_LOG_action_heliport_drop_valide = false;

		R3F_LOG_action_move_object_valide = false;
		R3F_LOG_action_remorquer_direct_valide = false;
		R3F_LOG_action_detacher_valide = false;
		R3F_LOG_action_selectionner_object_charge_valide = false;

		R3F_LOG_action_ouvrir_usine_valide = false;
		R3F_LOG_action_revendre_usine_direct_valide = false;
		R3F_LOG_action_revendre_usine_deplace_valide = false;
		R3F_LOG_action_revendre_usine_selection_valide = false;

		R3F_LOG_action_deverrouiller_valide = false;

		/** Sur ordre (publicVariable), r�v�ler la pr�sence d'un objet au joueur (acc�l�rer le retour des addActions) */
		R3F_LOG_FNCT_PUBVAR_reveler_au_joueur =
		{
			private ["_object"];
			_object = _this select 1;

			if (alive player) then
			{
				player reveal _object;
			};
		};
		"R3F_LOG_PUBVAR_reveler_au_joueur" addPublicVariableEventHandler R3F_LOG_FNCT_PUBVAR_reveler_au_joueur;

		/** Event handler GetIn : ne pas monter dans un v�hicule qui est en cours de transport */
		R3F_LOG_FNCT_EH_GetIn =
		{
			if (local (_this select 2)) then
			{
				_this spawn
				{
					sleep 0.1;
					if ((!(isNull (_this select 0 getVariable "R3F_LOG_est_deplace_par")) && (alive (_this select 0 getVariable "R3F_LOG_est_deplace_par")) && (isPlayer (_this select 0 getVariable "R3F_LOG_est_deplace_par"))) || !(isNull (_this select 0 getVariable "R3F_LOG_est_transporte_par"))) then
					{
						(_this select 2) action ["GetOut", _this select 0];
						(_this select 2) action ["Eject", _this select 0];
						if (player == _this select 2) then {hintC format [STR_R3F_LOG_object_en_cours_transport, getText (configFile >> "CfgVehicles" >> (typeOf (_this select 0)) >> "displayName")];};
					};
				};
			};
		};

		// Actions � faire quand le joueur est apparu
		0 spawn
		{
			waitUntil {!isNull player};

			// Ajout d'un event handler "WeaponDisassembled" pour g�rer le cas o� une arme est d�mont�e alors qu'elle est en cours de transport
			player addEventHandler ["WeaponDisassembled",
			{
				private ["_object"];

				// R�cup�ration de l'arme d�mont�e avec cursorTarget au lieu de _this (http://feedback.arma3.com/view.php?id=18090)
				_object = cursorTarget;

				if (!isNull _object && {!isNull (_object getVariable ["R3F_LOG_est_deplace_par", objNull])}) then
				{
					_object setVariable ["R3F_LOG_est_deplace_par", objNull, true];
				};
			}];
		};

		/** Variable publique passer � true pour informer le script monitor_new_objects.sqf de la cr�ation d'un objet */
		R3F_LOG_PUBVAR_nouvel_object_a_initialiser = false;

		/* V�rification permanente des conditions donnant acc�s aux addAction */
		execVM "addons\R3F_LOG\monitor_conditions_actions_menu.sqf";

		/* Auto-d�tection permanente des objets sur le jeu */
		execVM "addons\R3F_LOG\monitor_new_objects.sqf";

		/*
		 * Syst�me assurant la protection contre les blessures lors du d�placement d'objets
		 * On choisit de ne pas faire tourner le syst�me sur un serveur d�di� par �conomie de ressources.
		 * Seuls les joueurs et les IA command�es par les joueurs (locales) seront prot�g�s.
		 * Les IA n'�tant pas command�es par un joueur ne seront pas prot�g�es, ce qui est un moindre mal.
		 */
		execVM "addons\R3F_LOG\systeme_protection_blessures.sqf";
	};

	R3F_LOG_active = true;
#else
	// Pour les actions du PC d'arti
	R3F_LOG_joueur_deplace_object = objNull;
	R3F_LOG_active = false;
#endif

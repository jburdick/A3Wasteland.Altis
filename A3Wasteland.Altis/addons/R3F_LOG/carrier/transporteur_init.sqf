/**
 * Initialise un v�hicule carrier
 * 
 * @param 0 le carrier
 */

private ["_carrier"];

_carrier = _this select 0;

// D�finition locale de la variable si elle n'est pas d�finie sur le r�seau
if (isNil {_carrier getVariable "R3F_LOG_objects_charges"}) then
{
	_carrier setVariable ["R3F_LOG_objects_charges", [], false];
};

_carrier addAction [("<img image='client\icons\r3f_loadin.paa' color='#dddd00'/> <t color=""#dddd00"">" + STR_R3F_LOG_action_charger_deplace + "</t>"), {_this call R3F_LOG_FNCT_carrier_charger_deplace}, nil, 8, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_object_addAction == _target && R3F_LOG_joueur_deplace_object != _target && R3F_LOG_action_charger_deplace_valide"];

_carrier addAction [("<img image='client\icons\r3f_loadin.paa' color='#dddd00'/> <t color=""#dddd00"">" + format [STR_R3F_LOG_action_charger_selection, getText (configFile >> "CfgVehicles" >> (typeOf _carrier) >> "displayName")] + "</t>"), {_this call R3F_LOG_FNCT_carrier_charger_selection}, nil, 7, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_object_addAction == _target && R3F_LOG_action_charger_selection_valide"];

_carrier addAction [("<img image='client\icons\r3f_contents.paa' color='#dddd00'/> <t color=""#dddd00"">" + STR_R3F_LOG_action_contenu_vehicule + "</t>"), {_this call R3F_LOG_FNCT_carrier_voir_contenu_vehicule}, nil, 4, false, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_object_addAction == _target && R3F_LOG_action_contenu_vehicule_valide"];
/**
 * Initialise un v�hicule tow
 * 
 * @param 0 le tow
 */

private ["_tow"];

_tow = _this select 0;

// D�finition locale de la variable si elle n'est pas d�finie sur le r�seau
if (isNil {_tow getVariable "R3F_LOG_remorque"}) then
{
	_tow setVariable ["R3F_LOG_remorque", objNull, false];
};

_tow addAction [("<img image='client\icons\r3f_tow.paa' color='#00dd00'/> <t color=""#00dd00"">" + STR_R3F_LOG_action_remorquer_deplace + "</t>"), {_this call R3F_LOG_FNCT_tow_remorquer_deplace}, nil, 7, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_object_addAction == _target && R3F_LOG_joueur_deplace_object != _target && R3F_LOG_action_remorquer_deplace_valide"];
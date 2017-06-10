/**
 * Initialise un v�hicule h�liporteur
 * 
 * @param 0 l'h�liporteur
 */

private ["_HeliLift"];

_HeliLift = _this select 0;

// D�finition locale de la variable si elle n'est pas d�finie sur le r�seau
if (isNil {_HeliLift getVariable "R3F_LOG_heliporte"}) then
{
	_HeliLift setVariable ["R3F_LOG_heliporte", objNull, false];
};

_HeliLift addAction [("<img image='client\icons\r3f_tow.paa' color='#00dd00'/> <t color=""#00dd00"">" + STR_R3F_LOG_action_heliporter + "</t>"), {_this call R3F_LOG_FNCT_HeliLift_heliporter}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_object_addAction == _target && R3F_LOG_action_heliporter_valide"];

_HeliLift addAction [("<img image='client\icons\r3f_release.paa' color='#00dd00'/> <t color=""#00dd00"">" + STR_R3F_LOG_action_heliport_drop + "</t>"), {_this call R3F_LOG_FNCT_HeliLift_drop}, nil, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_object_addAction == _target && R3F_LOG_action_heliport_drop_valide"];

_HeliLift addAction [("<img image='client\icons\r3f_release.paa' color='#06ef00'/> <t color=""#06ef00"">" + STR_R3F_LOG_action_heliport_parachute + "</t>"), {_this call R3F_LOG_FNCT_HeliLift_drop}, true, 6, true, true, "", "!R3F_LOG_mutex_local_verrou && R3F_LOG_object_addAction == _target && R3F_LOG_action_heliport_drop_valide && {(getPos vehicle player) select 2 >= 40}"];
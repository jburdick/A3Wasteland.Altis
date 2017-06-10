/**
 * Passe la variable R3F_LOG_joueur_deplace_object � objNull pour informer le script "move" d'arr�ter de d�placer l'objet
 */

if (R3F_LOG_mutex_local_verrou) then
{
	hintC STR_R3F_LOG_mutex_action_en_cours;
}
else
{
	R3F_LOG_mutex_local_verrou = true;
	
	R3F_LOG_joueur_deplace_object = objNull;
	sleep 0.25;
	
	R3F_LOG_mutex_local_verrou = false;
};
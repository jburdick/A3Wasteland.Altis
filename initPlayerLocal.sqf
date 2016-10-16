// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: initPlayerLocal.sqf
//	@file Author: AgentRev

if (!isServer) then
{
	"BIS_fnc_MP_packet" addPublicVariableEventHandler compileFinal preprocessFileLineNumbers "server\antihack\filterExecAttempt.sqf";
	null = [player] execVM "addonsGrassCutter\grasscutter.sqf";
	player addEventhandler["respawn","_this execVM 'addonsGrassCutter\grasscutter.sqf'"];
	[] execVM "addons\killfeed\killfeed.sqf";
};

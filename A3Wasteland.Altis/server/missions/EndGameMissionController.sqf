// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: EndGameMissionController.sqf
//	@file Author: AgentRev

#define MISSION_CTRL_PVAR_LIST EndGameMissions
#define MISSION_CTRL_TYPE_NAME "End Game"
#define MISSION_CTRL_FOLDER "EndGameMisions"
#define MISSION_CTRL_DELAY (["A3W_EndGameMissionDelay", 120*60] call getPublicVar)
#define MISSION_CTRL_COLOR_DEFINE EndGameMissionColor

#include "EndgGmeMissions\EndGameMissionDefines.sqf"
#include "missionController.sqf";

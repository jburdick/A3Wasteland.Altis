// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: EndGameMissionProcessor.sqf
//	@file Author: AgentRev

#define MISSION_PROC_TYPE_NAME "End Game"
#define MISSION_PROC_TIMEOUT (["A3W_EndGameMissionTimeout", 120*60] call getPublicVar)
#define MISSION_PROC_COLOR_DEFINE EndGameMissionColor

#include "EndGameMissions\EndGameMissionDefines.sqf"
#include "missionProcessor.sqf";

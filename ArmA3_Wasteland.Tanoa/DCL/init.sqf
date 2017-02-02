	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2013 Nicolas BOITEUX

	Dynamic Civilian Life
	
	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>. 
	*/

	// This script runs only on server side
	if!(isserver) exitwith {};

	generate_zone	= compile preprocessFile "DCL\generate_zone.sqf";
	walk		= compile preprocessFile "DCL\walk.sqf";

	civilclass = ["B_GEN_Soldier_F","B_GEN_Commander_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_7_F","I_C_Pilot_F","I_C_Soldier_Bandit_8_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_1_F","U_C_Man_casual_5_F","U_C_Man_casual_4_F","C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_Orestes","C_Nikos","C_man_p_fugitive_F","C_man_p_fugitive_F_afro","C_man_p_fugitive_F_euro","C_man_p_fugitive_F_asia","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_beggar_F_euro","C_man_p_beggar_F_asia","C_man_w_worker_F","C_man_hunter_1_F","C_man_p_shorts_1_F","C_man_p_shorts_1_F_afro","C_man_p_shorts_1_F_euro","C_man_p_shorts_1_F_asia","C_man_shorts_1_F","C_man_shorts_1_F_afro","C_man_shorts_1_F_euro","C_man_shorts_1_F_asia","C_man_shorts_2_F","C_man_shorts_2_F_afro","C_man_shorts_2_F_euro","C_man_shorts_2_F_asia","C_man_shorts_3_F","C_man_shorts_3_F_afro","C_man_shorts_3_F_euro","C_man_shorts_3_F_asia","C_man_shorts_4_F","C_man_shorts_4_F_afro","C_man_shorts_4_F_euro","C_man_shorts_4_F_asia","C_man_pilot_F","C_man_polo_1_F_afro","C_man_polo_1_F_euro","C_man_polo_1_F_asia","C_man_polo_2_F_afro","C_man_polo_2_F_euro","C_man_polo_2_F_asia","C_man_polo_3_F_afro","C_man_polo_3_F_euro","C_man_polo_3_F_asia","C_man_polo_4_F_afro","C_man_polo_4_F_euro","C_man_polo_4_F_asia","C_man_polo_5_F_afro","C_man_polo_5_F_euro","C_man_polo_5_F_asia","C_man_polo_6_F_afro","C_man_polo_6_F_euro","C_man_polo_6_F_asia"];
	DCLaltistownpositions = [[5700,10300],[5600,11110],[8800,10200],[9500,13500],[11600,2700],[9300,3900],[5500,4000],[2600,7400],[3000,11100],[1800,12000],[12800,7400],[11200,5200]];

	// civilian pop when players are at x meters
	DCLdistancepop = 800;

	// Civilians are in a group when they pop
	// Number max random of civilians in the group are x numbers
	DCLgroupsize = 3;

	// civilian can move in houses around x meters
	// of theirs initial position
	DCLdistancemove = 300;

	// civilian side
	DCLcivilianside = civilian;

	// HC client
	DCLusehclient = false;

	// HC client name
	DCLhclientname = "HC";

	{
		garbage = [_x] spawn generate_zone;
		sleep 0.01;
	}foreach DCLaltistownpositions;
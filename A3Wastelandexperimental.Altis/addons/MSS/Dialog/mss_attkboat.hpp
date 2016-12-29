class mss_attkboat {
	idd = 1319198;
	name= "MSS Seat Menu - Attack Boat";
	enableSimulation = true;
	
	class controlsBackground {
		
		class MainBackground : RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.6;
			h = 0.6 - (22 / 250);
		};
	};
	
	class controls {

		class CloseButtonKey : RscButtonMenu {
			idc = -1;
			text = "$STR_MSS_close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.8 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class Title : RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_MSS_head";
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.6;
			h = (1 / 25);
		};
	
		class VehiclePic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = -1;
			text = "\a3\boat_f\boat_armed_01\data\UI\map_boat_armed_01_minigun.paa";
			x = 0.2; y = 0.3;
			w = 0.4; h = 0.4;
		};
		
		class pos4but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 4;";
			x = 0.4; y = 0.40;
			w = 0.05; h = 0.05;
		};
		
		class pos7but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 7;";
			x = 0.4; y = 0.45;
			w = 0.05; h = 0.05;
		};
		
		class pos3but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 3;";
			x = 0.4; y = 0.50;
			w = 0.05; h = 0.05;
		};
		
		class pos0but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 0;";
			x = 0.4; y = 0.55;
			w = 0.05; h = 0.05;
		};
		
		class pos5but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 5;";
			x = 0.35; y = 0.40;
			w = 0.05; h = 0.05;
		};
		
		class pos6but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 6;";
			x = 0.35; y = 0.45;
			w = 0.05; h = 0.05;
		};
		
		class pos2but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 2;";
			x = 0.35; y = 0.50;
			w = 0.05; h = 0.05;
		};
		
		class pos1but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 1;";
			x = 0.35; y = 0.55;
			w = 0.05; h = 0.05;
		};
		
		class pos4pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 5;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.40;
			w = 0.05; h = 0.05;
		};
		
		class pos7pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 8;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.45;
			w = 0.05; h = 0.05;
		};
		
		class pos3pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 4;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.50;
			w = 0.05; h = 0.05;
		};
		
		class pos0pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 1;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.55;
			w = 0.05; h = 0.05;
		};
		
		class pos5pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 6;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.40;
			w = 0.05; h = 0.05;
		};
		
		class pos6pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 7;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.45;
			w = 0.05; h = 0.05;
		};
		
		class pos2pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 3;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.50;
			w = 0.05; h = 0.05;
		};
		
		class pos1pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 2;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.55;
			w = 0.05; h = 0.05;
		};
	};
};
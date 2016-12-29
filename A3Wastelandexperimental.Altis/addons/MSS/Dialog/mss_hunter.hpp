class mss_hunter {
	idd = 1319191;
	name= "MSS Seat Menu - Hunter";
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
			text = "\a3\soft_f\MRAP_01\Data\UI\map_mrap_01_ca.paa";
			x = 0.2; y = 0.3;
			w = 0.4; h = 0.4;
		};
		
		class pos1but : RscButtonMenu {
			idc = 51;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 0;";
			x = 0.4; y = 0.43;
			w = 0.07; h = 0.07;
		};
		
		class pos2but : RscButtonMenu {
			idc = 52;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 1;";
			x = 0.4; y = 0.5;
			w = 0.07; h = 0.07;
		};
		
		class pos3but : RscButtonMenu {
			idc = 53;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 2;";
			x = 0.33; y = 0.5;
			w = 0.07; h = 0.07;
		};
		
		class pos1pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 1;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.43;
			w = 0.07; h = 0.07;
		};
		
		class pos2pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 2;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.5;
			w = 0.07; h = 0.07;
		};
		
		class pos3pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 3;
			text = "MSS\Picture\seat.paa";
			x = 0.33; y = 0.5;
			w = 0.07; h = 0.07;
		};
	};
};
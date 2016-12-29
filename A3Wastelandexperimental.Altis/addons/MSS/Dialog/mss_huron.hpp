class mss_huron {
	idd = 1319199;
	name= "MSS Seat Menu - Huron";
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
			text = "\a3\air_f_heli\Heli_Transport_03\Data\UI\map_heli_transport_03_base_ca.paa";
			x = 0.2; y = 0.3;
			w = 0.4; h = 0.4;
		};
		
		class pos1but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 1;";
			x = 0.35; y = 0.35;
			w = 0.04; h = 0.04;
		};
		
		class pos9but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 9;";
			x = 0.35; y = 0.39;
			w = 0.04; h = 0.04;
		};
		
		class pos2but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 2;";
			x = 0.35; y = 0.43;
			w = 0.04; h = 0.04;
		};
		
		class pos3but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 3;";
			x = 0.35; y = 0.47;
			w = 0.04; h = 0.04;
		};
		
		class pos4but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 4;";
			x = 0.35; y = 0.51;
			w = 0.04; h = 0.04;
		};
		
		class pos5but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 5;";
			x = 0.35; y = 0.55;
			w = 0.04; h = 0.04;
		};
		
		class pos0but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 0;";
			x = 0.35; y = 0.59;
			w = 0.04; h = 0.04;
		};
		
		class pos15but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 15;";
			x = 0.35; y = 0.63;
			w = 0.04; h = 0.04;
		};
		
		class pos6but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 6;";
			x = 0.4; y = 0.35;
			w = 0.04; h = 0.04;
		};
		
		class pos7but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 7;";
			x = 0.4; y = 0.39;
			w = 0.04; h = 0.04;
		};
		
		class pos8but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 8;";
			x = 0.4; y = 0.43;
			w = 0.04; h = 0.04;
		};
		
		class pos12but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 12;";
			x = 0.4; y = 0.47;
			w = 0.04; h = 0.04;
		};
		
		class pos10but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 10;";
			x = 0.4; y = 0.51;
			w = 0.04; h = 0.04;
		};
		
		class pos11but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 11;";
			x = 0.4; y = 0.55;
			w = 0.04; h = 0.04;
		};
		
		class pos13but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 13;";
			x = 0.4; y = 0.59;
			w = 0.04; h = 0.04;
		};
		
		class pos14but : RscButtonMenu {
			idc = -1;
			onButtonClick = "execVM 'MSS\mss_change.sqf'; closeDialog 0; CargoNumber = 14;";
			x = 0.4; y = 0.63;
			w = 0.04; h = 0.04;
		};
		
		class pos1pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 2;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.35;
			w = 0.04; h = 0.04;
		};
		
		class pos9pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 10;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.39;
			w = 0.04; h = 0.04;
		};
		
		class pos2pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 3;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.43;
			w = 0.04; h = 0.04;
		};
		
		class pos3pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 4;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.47;
			w = 0.04; h = 0.04;
		};
		
		class pos4pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 5;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.51;
			w = 0.04; h = 0.04;
		};
		
		class pos5pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 6;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.55;
			w = 0.04; h = 0.04;
		};
		
		class pos0pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 1;
			text = "MSS\Picture\seat.paa";
			x = 0.35; y = 0.59;
			w = 0.04; h = 0.04;
		};
		
		class pos15pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 16;
			text = "MSS\Picture\seatwep.paa";
			x = 0.35; y = 0.63;
			w = 0.04; h = 0.04;
		};
		
		class pos6pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 7;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.35;
			w = 0.04; h = 0.04;
		};
		
		class pos7pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 8;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.39;
			w = 0.04; h = 0.04;
		};
		
		class pos8pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 9;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.43;
			w = 0.04; h = 0.04;
		};
		
		class pos12pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 13;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.47;
			w = 0.04; h = 0.04;
		};
		
		class pos10pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 11;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.51;
			w = 0.04; h = 0.04;
		};
		
		class pos11pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 12;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.55;
			w = 0.04; h = 0.04;
		};
		
		class pos13pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 14;
			text = "MSS\Picture\seat.paa";
			x = 0.4; y = 0.59;
			w = 0.04; h = 0.04;
		};
		
		class pos14pic : RscPicture {
			colorBackground[] = {0, 0, 0, 1};
			idc = 15;
			text = "MSS\Picture\seatwep.paa";
			x = 0.4; y = 0.63;
			w = 0.04; h = 0.04;
		};
	};
};
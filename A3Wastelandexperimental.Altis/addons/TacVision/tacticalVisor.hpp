////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by HairBall, v1.063, #Pyzaxi)
////////////////////////////////////////////////////////	
class tacVisor
	{
		
		idd = 17100;
		duration = 1.0e+11; 
		movingEnable = 0;
		enableSimulation = 1;
		name = "tacVision_HUD";
		onLoad = "uiNamespace setVariable ['tacVision_HUD', _this select 0]";
		controlsBackground[] = {};
		objects[] = {};
    
        class Controls 
        {	
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by HairBall, v1.063, #Fenuxy)
////////////////////////////////////////////////////////

class tacv_info_top_right_guiback: IGUIBack
{
	idc = 17200;

	x = 0.237031 * safezoneW + safezoneX;
	y = 0.00500001 * safezoneH + safezoneY;
	w = 0.520781 * safezoneW;
	h = 0.044 * safezoneH;
};
class tacV_info_text_currentDirection: RscStructuredText
{
	idc = 17210;

	text = "CDir: 138"; //--- ToDo: Localize;
	x = 0.597969 * safezoneW + safezoneX;
	y = 0.016 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.022 * safezoneH;
};
class tacV_logo: RscStructuredText
{
	idc = 17213;

	text = "<t align='left' size='0.8'>TacVision v1.0</t>"; //--- ToDo: Localize;
	x = 61.5 * GUI_GRID_W + GUI_GRID_X;
	y = 34 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.49999 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
};
class tacV_info_text_windDirection: RscStructuredText
{
	idc = 17214;

	text = "WDir: 138"; //--- ToDo: Localize;
	x = 0.335 * safezoneW + safezoneX;
	y = 0.016 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.022 * safezoneH;
};
class tacV_info_text_currentGPS: RscStructuredText
{
	idc = 17215;

	text = "124115"; //--- ToDo: Localize;
	x = 0.54125 * safezoneW + safezoneX;
	y = 0.016 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.022 * safezoneH;
};
class tacV_info_text_currentTime: RscStructuredText
{
	idc = 17216;

	text = "12:43"; //--- ToDo: Localize;
	x = 0.396875 * safezoneW + safezoneX;
	y = 0.016 * safezoneH + safezoneY;
	w = 0.0567187 * safezoneW;
	h = 0.022 * safezoneH;
};
class tacV_info_text_currentSW: RscStructuredText
{
	idc = 17218;

	text = "SRRadio: 420.5Mhz"; //--- ToDo: Localize;
	x = 0.242187 * safezoneW + safezoneX;
	y = 0.016 * safezoneH + safezoneY;
	w = 0.0876563 * safezoneW;
	h = 0.022 * safezoneH;
};
class tacV_info_text_currentLR: RscStructuredText
{
	idc = 17220;

	text = "RadioLR: 60.1Mhz"; //--- ToDo: Localize;
	x = 0.659844 * safezoneW + safezoneX;
	y = 0.016 * safezoneH + safezoneY;
	w = 0.0928125 * safezoneW;
	h = 0.022 * safezoneH;
};
class TacV_info_currentHeading: RscStructuredText
{
	idc = 17222;

	text = "Heading: N"; //--- ToDo: Localize;
	x = 0.45875 * safezoneW + safezoneX;
	y = 0.016 * safezoneH + safezoneY;
	w = 0.0773437 * safezoneW;
	h = 0.022 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////



		};
	};

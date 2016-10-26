class killfeed_board
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	fadeout=0;
	fadein=0;
	duration = 9999999;
	onLoad = "uiNamespace setVariable ['killfeed_board',_this select 0]";
	class controls {
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 0;
			x = 0.008 * safezoneW + safezoneX;
			y = 0.1 * safezoneH + safezoneY;
			w = 0.56 * safezoneW;
			h = 0.46 * safezoneH;
		};
	};
};

class killfeed_picture
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	fadeout=0;
	fadein=0;
	duration = 9999999;
	onLoad = "uiNamespace setVariable ['killfeed_picture',_this select 0]";
	class controls {
		class RscPicture_1101: RscPicture
        {
          idc = 1;
          x = 0.1 * safezoneW + safezoneX;
          y = 0.1 * safezoneH + safezoneY;
         w = 0.10 * safezoneW;
          h = 0.09 * safezoneH;
        };
	};
};
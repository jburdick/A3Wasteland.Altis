/*#include "vehiclestoredefines_new.hpp"*/


class DynamicVicStore
{
	idd = 273301;
	movingenable = true;

	class Controls
	{

		class Background: RscText
		{
			idc = 9001;
			x = -11 * GUI_GRID_W + GUI_GRID_X;
			y = -5 * GUI_GRID_H + GUI_GRID_Y;
			w = 66.5 * GUI_GRID_W;
			h = 33 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.75};
		};
		class VicStoreMain: RscFrame
		{
			idc = 9002;
			text = "Vehicle Store"; //--- ToDo: Localize;
			x = -10.5 * GUI_GRID_W + GUI_GRID_X;
			y = -5 * GUI_GRID_H + GUI_GRID_Y;
			w = 65.5 * GUI_GRID_W;
			h = 32.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class VehicleSelectFrame: RscFrame
		{
			idc = 9003;
			text = "Vehicle Options"; //--- ToDo: Localize;
			x = -9.5 * GUI_GRID_W + GUI_GRID_X;
			y = -4 * GUI_GRID_H + GUI_GRID_Y;
			w = 63.5 * GUI_GRID_W;
			h = 4.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class PylonsFrame: RscFrame
		{
			idc = 9004;
			text = "Pylon Options"; //--- ToDo: Localize;
			x = 7 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 47 * GUI_GRID_W;
			h = 23 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class ArmamentOptionsFrame: RscFrame
		{
			idc = 9005;
			text = "Armament Options"; //--- ToDo: Localize;
			x = -9.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 23 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class CostFrame: RscFrame
		{
			idc = 9006;
			text = "Cost"; //--- ToDo: Localize;
			x = 19.5 * GUI_GRID_W + GUI_GRID_X;
			y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class BuyButton: RscButton
		{
			idc = 9007;
			text = "Buy"; //--- ToDo: Localize;
			x = 43.5 * GUI_GRID_W + GUI_GRID_X;
			y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,0,0,1};
			colorBackground[] = {0,0,0,1};
			colorActive[] = {0,0,0,1};
		};
		class BuyButtonFrame: RscFrame
		{
			idc = 9008;
			x = 43.5 * GUI_GRID_W + GUI_GRID_X;
			y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			colorBackground[] = {0,0,0,0};
		};
		class CancelButton: RscButton
		{
			idc = 9009;
			text = "Cancel"; //--- ToDo: Localize;
			x = 49.5 * GUI_GRID_W + GUI_GRID_X;
			y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class CancelButtonFrame: RscFrame
		{
			idc = 9010;
			x = 49.5 * GUI_GRID_W + GUI_GRID_X;
			y = 24.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class VehicleTypeText: RscText
		{
			idc = 9011;
			text = "Select Vehicle Type"; //--- ToDo: Localize;
			x = -1.5 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class VehicleTypeSelector: RscCombo
		{
			idc = 9012;
			text = "test"; //--- ToDo: Localize;
			x = -3.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 12 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class VehicleSelectText: RscText
		{
			idc = 9013;
			text = "Select Vehicle"; //--- ToDo: Localize;
			x = 20.5 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 5.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class VehicleSelect: RscCombo
		{
			idc = 9014;
			x = 16.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class CamoSelectText: RscText
		{
			idc = 9015;
			text = "Select Camo"; //--- ToDo: Localize;
			x = 40.5 * GUI_GRID_W + GUI_GRID_X;
			y = -3 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class CamoSelect: RscCombo
		{
			idc = 9016;
			x = 36.5 * GUI_GRID_W + GUI_GRID_X;
			y = -1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class ArmText_1: RscText
		{
			idc = 9017;
			text = "Armament Option 1"; //--- ToDo: Localize;
			x = -6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 2 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class ArmSelect_1: RscCombo
		{
			idc = 9018;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class ArmText_2: RscText
		{
			idc = 9019;
			text = "Armament Option 2"; //--- ToDo: Localize;
			x = -6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class ArmText_3: RscText
		{
			idc = 9020;
			text = "Armament Option 3"; //--- ToDo: Localize;
			x = -6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class ArmText4: RscText
		{
			idc = 9021;
			text = "Armament Option 4"; //--- ToDo: Localize;
			x = -6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 11 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class ArmSelect2: RscCombo
		{
			idc = 9023;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class ArmSelect3: RscCombo
		{
			idc = 9024;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class ArmSelect4: RscCombo
		{
			idc = 9025;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class ArmSelect5: RscCombo
		{
			idc = 9026;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 15.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class ArmSelect6: RscCombo
		{
			idc = 9027;
			x = -9 * GUI_GRID_W + GUI_GRID_X;
			y = 18.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
		};
		class ArmText_5: RscText
		{
			idc = 9028;
			text = "Armament Option 5"; //--- ToDo: Localize;
			x = -6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 14 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class ArmText_6: RscText
		{
			idc = 9029;
			text = "Armament Option 6"; //--- ToDo: Localize;
			x = -6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class ArmText_7: RscText
		{
			idc = 9030;
			text = "Armament Option 7"; //--- ToDo: Localize;
			x = -6.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20 * GUI_GRID_H + GUI_GRID_Y;
			w = 8.5 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class CostText: RscText
		{
			idc = 9031;
			x = 19.5 * GUI_GRID_W + GUI_GRID_X;
			y = 25 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class LeftPylonFrame: RscFrame
		{
			idc = 9032;
			text = "Left Pylon Options"; //--- ToDo: Localize;
			x = 10.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 18 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class RscFrame_1808: RscFrame
		{
			idc = 9033;
			text = "Left Pylon Options"; //--- ToDo: Localize;
			x = 26 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 18 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class RscFrame_1809: RscFrame
		{
			idc = 9035;
			text = "Left Pylon Options"; //--- ToDo: Localize;
			x = 41.5 * GUI_GRID_W + GUI_GRID_X;
			y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 18 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class Left1: RscCombo
		{
			idc = 9036;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Left2: RscCombo
		{
			idc = 9037;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Left3: RscCombo
		{
			idc = 9038;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Left4: RscCombo
		{
			idc = 9039;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Left5: RscCombo
		{
			idc = 9040;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Left6: RscCombo
		{
			idc = 9041;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Left7: RscCombo
		{
			idc = 9042;
			x = 11 * GUI_GRID_W + GUI_GRID_X;
			y = 20 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Center1: RscCombo
		{
			idc = 9043;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Center2: RscCombo
		{
			idc = 9044;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Center3: RscCombo
		{
			idc = 9045;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Center4: RscCombo
		{
			idc = 9046;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Center5: RscCombo
		{
			idc = 9047;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Center6: RscCombo
		{
			idc = 9048;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Center7: RscCombo
		{
			idc = 9049;
			x = 26.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Right1: RscCombo
		{
			idc = 9050;
			x = 42 * GUI_GRID_W + GUI_GRID_X;
			y = 5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Right2: RscCombo
		{
			idc = 9051;
			x = 42 * GUI_GRID_W + GUI_GRID_X;
			y = 7.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Right3: RscCombo
		{
			idc = 9052;
			x = 42 * GUI_GRID_W + GUI_GRID_X;
			y = 10 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Right4: RscCombo
		{
			idc = 9053;
			x = 42 * GUI_GRID_W + GUI_GRID_X;
			y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Right5: RscCombo
		{
			idc = 9054;
			x = 42 * GUI_GRID_W + GUI_GRID_X;
			y = 15 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Right6: RscCombo
		{
			idc = 9055;
			x = 42 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Right7: RscCombo
		{
			idc = 9056;
			x = 42 * GUI_GRID_W + GUI_GRID_X;
			y = 20 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Info1: RscText
		{
			idc = 9057;
			text = "Inboard"; //--- ToDo: Localize;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Info2: RscText
		{
			idc = 9058;
			text = "Inboard"; //--- ToDo: Localize;
			x = 45 * GUI_GRID_W + GUI_GRID_X;
			y = 1.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
		};
		class Info3: RscText
		{
			idc = 9059;
			text = "OutBoard"; //--- ToDo: Localize;
			x = 13.5 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
		class Info4: RscText
		{
			idc = 9060;
			text = "OutBoard"; //--- ToDo: Localize;
			x = 45 * GUI_GRID_W + GUI_GRID_X;
			y = 21 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			colorText[] = {1,-1,-1,1};
			sizeEx = 1 * GUI_GRID_H;
		};
	};
};

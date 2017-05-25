class RscText_1000: RscText
{
	idc = 1000;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 25 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.75};
};
class Main_Frame: RscFrame
{
	idc = 1802;
	text = "Vehicle Store"; //--- ToDo: Localize;
	x = 0 * GUI_GRID_W + GUI_GRID_X;
	y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 40 * GUI_GRID_W;
	h = 25.5 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0,0,0,1};
	sizeEx = 1 * GUI_GRID_H;
};
class Vehicle_Type: RscText
{
	idc = 1001;
	text = "Choose Vehicle Type"; //--- ToDo: Localize;
	x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 8 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RscCombo_2100: RscCombo
{
	idc = 2100;
	x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	y = 2 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class Vehicle_Select: RscText
{
	idc = 1002;
	text = "Select Vehicle"; //--- ToDo: Localize;
	x = 16.5 * GUI_GRID_W + GUI_GRID_X;
	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RscCombo_2101: RscCombo
{
	idc = 2101;
	x = 16 * GUI_GRID_W + GUI_GRID_X;
	y = 2 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RscText_1004: RscText
{
	idc = 1004;
	text = "Select Camo"; //--- ToDo: Localize;
	x = 30 * GUI_GRID_W + GUI_GRID_X;
	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RscCombo_2102: RscCombo
{
	idc = 2102;
	x = 28.5 * GUI_GRID_W + GUI_GRID_X;
	y = 2 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_Select_1: RscCombo
{
	idc = 2103;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,1};
};
class LeftPylon_1: RscText
{
	idc = 1003;
	text = "Left Pylon 1"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_4: RscText
{
	idc = 1005;
	text = "Center Pylon 4"; //--- ToDo: Localize;
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_2: RscText
{
	idc = 1006;
	text = "Left Pylon 2"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_3: RscText
{
	idc = 1007;
	text = "Center Pylon 3"; //--- ToDo: Localize;
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_Select_5: RscCombo
{
	idc = 2104;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_Select_2: RscCombo
{
	idc = 2105;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_Select_5: RscCombo
{
	idc = 2106;
	x = 31 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_Select_4: RscCombo
{
	idc = 2107;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_Select_3: RscCombo
{
	idc = 2108;
	x = 31 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_Select_3: RscCombo
{
	idc = 2109;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_Select_4: RscCombo
{
	idc = 2110;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_Select_3: RscCombo
{
	idc = 2111;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 10 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_Select_5: RscCombo
{
	idc = 2112;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 14 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_Select_1: RscCombo
{
	idc = 2113;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_3: RscText
{
	idc = 1008;
	text = "Left Pylon 3"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_5: RscText
{
	idc = 1009;
	text = "Left Pylon 5"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_5: RscText
{
	idc = 1010;
	text = "Right Pylon 5"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_5: RscText
{
	idc = 1011;
	text = "Center Pylon 5"; //--- ToDo: Localize;
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 12.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class LeftPylon_4: RscText
{
	idc = 1012;
	text = "Left Pylon 4"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_1: RscText
{
	idc = 1013;
	text = "Right Pylon 1"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_2: RscText
{
	idc = 1014;
	text = "Center Pylon 2"; //--- ToDo: Localize;
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_1: RscText
{
	idc = 1015;
	text = "Center Pylon 1"; //--- ToDo: Localize;
	x = 17 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_4: RscText
{
	idc = 1016;
	text = "Right Pylon 4"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 10.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_3: RscText
{
	idc = 1017;
	text = "Right Pylon 3"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_2: RscText
{
	idc = 1018;
	text = "Right Pylon 2"; //--- ToDo: Localize;
	x = 32.5 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class CenterPylon_Select_2: RscCombo
{
	idc = 2114;
	x = 15.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_Select_1: RscCombo
{
	idc = 2115;
	x = 31 * GUI_GRID_W + GUI_GRID_X;
	y = 6 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_Select_2: RscCombo
{
	idc = 2116;
	x = 31 * GUI_GRID_W + GUI_GRID_X;
	y = 8 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RightPylon_Select_4: RscCombo
{
	idc = 2117;
	x = 31 * GUI_GRID_W + GUI_GRID_X;
	y = 12 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class PriceBox: RscFrame
{
	idc = 1800;
	text = "Cost: "; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 21.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 8.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
	colorBackground[] = {0,0,0,1};
	sizeEx = 1 * GUI_GRID_H;
};
class Price: RscText
{
	idc = 1019;
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 22 * GUI_GRID_H + GUI_GRID_Y;
	w = 6.5 * GUI_GRID_W;
	h = 2 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RscButtonMenuOK_2600: RscButtonMenuOK
{
	text = "Buy"; //--- ToDo: Localize;
	x = 24 * GUI_GRID_W + GUI_GRID_X;
	y = 23 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};
class RscButtonMenuCancel_2700: RscButtonMenuCancel
{
	x = 32 * GUI_GRID_W + GUI_GRID_X;
	y = 23 * GUI_GRID_H + GUI_GRID_Y;
	w = 7.5 * GUI_GRID_W;
	h = 1.5 * GUI_GRID_H;
	colorText[] = {1,0,0,1};
};

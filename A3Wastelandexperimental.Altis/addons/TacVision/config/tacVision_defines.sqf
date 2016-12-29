/*
	TacVision 0.01a (Tactical Vision)
	
	Provides the user with a Tactical overview/display/hud when wearing tactical glasses/shades.

	Author: Spliffz <theSpliffz@gmail.com>
*/


MISSION_ROOT = call {
	private "_arr";
	_arr = toArray str missionConfigFile; 
	_arr resize (count _arr - 15); 
	toString _arr 
};



// defines
#define TACVISION_MARKER_INFANTRY "TacVision\markers\marker_eti_target.paa"
#define TACVISION_MARKER_VEHICLE "TacVision\markers\marker_eti_target.paa"
#define TACVISION_MARKER_MINE "TacVision\markers\marker_eti_target.paa"
#define TACVISION_MARKER_STATIC "TacVision\markers\marker_eti_target.paa"
#define TACVISION_MARKER_ARMORED "TacVision\markers\marker_eti_target.paa"
#define TACVISION_MARKER_AIR "TacVision\markers\marker_eti_target.paa"
#define TACVISION_MARKER_SHIP "TacVision\markers\marker_eti_target.paa"
#define TACVISION_MARKER_SUBMARINE "TacVision\markers\marker_eti_target.paa"

#define TACVISION_MARKER_SIZE_SMALL 1
#define TACVISION_MARKER_SIZE_MEDIUMSMALL 1.5
#define TACVISION_MARKER_SIZE_MEDIUM 2.5
#define TACVISION_MARKER_SIZE_LARGE 5

#define TACVISION_HUDCOLOR [0,0.97,0.87,1]

#define TACVISION_TI_SCANNER_INFANTRY_RANGE 100
#define TACVISION_TI_SCANNER_VEHICLE_RANGE 200
#define TACVISION_TI_SCANNER_MINE_RANGE 30
#define TACVISION_TI_SCANNER_STATIC_RANGE 200
#define TACVISION_TI_SCANNER_ARMORED_RANGE 300
#define TACVISION_TI_SCANNER_AIR_RANGE 2000
#define TACVISION_TI_SCANNER_SHIP_RANGE 1000
#define TACVISION_TI_SCANNER_SUBMARINE_RANGE 500

#define TACVISION_TI_SCANNER_MAXRANGE 5000
#define TACVISION_TI_SCANNER_OBJECTLIST ["Man", "ManDiver", "ManStory", "Static", "Air", "Autonomous", "Car", "Armored", "Support", "Ship", "SubMmarine"]


// important vars
TacVision_Enabled = true;
TacVision_ETI_Intel = [];
TacVision_goggles = ["G_Tactical_Clear", "G_Tactical_Black"];
TacVision_FFID = [];

// EOF
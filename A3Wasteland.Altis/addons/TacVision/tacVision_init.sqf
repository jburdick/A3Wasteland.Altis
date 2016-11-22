// TacVision (Tactical Vision)
// tacVision_init.sqf
// 2014 - Spliffz <theSpliffz@gmail.com>

// only run locally on player
if(isServer) exitWith {};
//if!(local player) exitWith {};


waitUntil {!isNull findDisplay 46};
disableSerialization;

TacVision_enabled = false;
TacVision_enabledGlasses = ["G_Tactical_Clear","G_Tactical_Black"];

// if player already has the tactical glasses on
if(((goggles player) in TacVision_enabledGlasses)) then {
    // start TacVision
    TacVision_enabled = true;
    
    // show hud overlay
    48101 cutRsc ["tacVisor", "PLAIN", 1, false];
    
    // start functions
    [] call TacVision_init_startup;
    
} else {  // if not, but player puts them on
    player addEventHandler ["Take", {
        if(((_this select 2) in TacVision_enabledGlasses)) then {
            diag_log format ["## TacVision ## - tacVision_init.sqf - Take EH - HAS GOGGLES!"];
            
            // start TacVision
            TacVision_enabled = true;
            
            // show hud overlay
            48100 cutRsc ["tacVisor", "PLAIN", 1, false];
            
            [] call TacVision_init_startup;
        };
    }];
};

// take of glasses, disable TacVision
player addEventHandler ["Put", {
    diag_log format ["## TacVision ## - tacVision_init.sqf - PUT EH - _this: %1", _this];
    if((_this select 2) in TacVision_enabledGlasses) then {
        // start TacVision
        TacVision_enabled = false;
        
        // show hud overlay
        48100 cutRsc ["Default", "PLAIN", 1, false];
        
        
    };
}];

// EOF
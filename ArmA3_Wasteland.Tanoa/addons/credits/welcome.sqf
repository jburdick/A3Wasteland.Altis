//	@file Version: 1.0
//	@file Name: intro.sqf
//	@file Author: Cael817, original file by HellsGateGaming.com and IT07
//	@file Created: 20140724 19:34

_onScreenTime = 8;

sleep 20;

_role1 = "Tanoa Wasteland";
_role1names = ["Original Mod by AgentRev, edited by SZ"];
_role2 = "";
_role2names = [""]; 
_role3 = "BLUFOR";
_role3names = ["Gendarmerie"]; 
_role4 = "INDEPENDENT";
_role4names = ["Several groups of Bandits"]; 
_role5 = "OPFOR";
_role5names = ["Paramilitary AI - roaming on land, water, air"];
_role6 = "CIVILIANS";
_role6names = ["Bandit AI at over 60 missions"];
_role7 = "Objectives";
_role7names = ["10 different objective categories"];
_role8 = "Main, Money, Side";
_role8names = ["19 missions"];
_role9 = "Air, Transport, Town";
_role9names = ["21 missions"];
_role10 = "Special, Base, Occupation, Water";
_role10names = ["26 missions"];
_role11 = "Basebuilding";
_role11names = ["Over 180 objects in general store. Do NOT build at mission spawns nor on mission ways. Respect others' property, effort and invested time and money!"];
_role12 = "Server";
_role12names = ["Restarts at 6:00 and 18:00. 5 minutes before restart, the server is locked!"];


{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.50' color='#92c63d' align='left'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='left'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names],
[_role12, _role12names]
];
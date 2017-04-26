//BIB TerritoryCapture System
//Author BIB_Monkey



//List available territories
//["Marker Name", "Name to display when captured", Payout when captured, "Territory Type(Currently Not Used)"]
_TerritoryList =
[
	["TERRITORY_1_ABDERA", "Abdera", 5000, "CITY"],
	["TERRITORY_2_OREOKASTRO", "Oreokastro", 5000, "CITY"],
	["TERRITORY_3_KOREFACTORY", "Kore Factory", 5000, "CITY"],
	["TERRITORY_4_KALOCHORI", "Kalochori", 5000, "CITY"],
	["TERRITORY_5_MILHILL", "Military Hill", 5000, "CITY"],
	["TERRITORY_6_THERISA", "Therisa", 5000, "CITY"],
	["TERRITORY_7_GHOSTHOTEL", "Ghost Hotel", 5000, "CITY"],
	["TERRITORY_8_MOLOS", "Molos", 5000, "CITY"],
	["TERRITORY_9_SFAKA", "Sfaka", 5000, "CITY"],
	["TERRITORY_10_PANAGIA", "Panagia", 5000, "CITY"],
	["TERRITORY_11_Docks", "Docks", 5000, "CITY"]
];
_ActiveTerritory = selectRandom _TerritoryList

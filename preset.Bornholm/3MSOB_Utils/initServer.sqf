//Clear out Sequence so no issues, if client needs to sync
ThreeMSOB_Seq = 0;
publicVariable "ThreeMSOB_Seq";

//Inits empty array for sitting players... this is a bad idea
ThreeMSOB_SittingPlayers = [ ];
publicVariable "ThreeMSOB_SittingPlayers";

//Hide visibility of markers for players
// 0 to Hide, 1 to Show
_mkrArr = [ "baseHQ" ]; //TODO: ADD MARKERS HERE
[_mkrArr, 0 ] call ThreeMSOB_setMarkerVisibility;

//Init UPS Mon
call compile preprocessFileLineNumbers "scripts\Init_UPSMON.sqf";

//Handlers for the server to use
"ThreeMSOB_Seq" addPublicVariableEventHandler
{
	publicVariable "ThreeMSOB_Seq";
	switch ( ThreeMSOB_Seq ) do
	{
		case 0: {};
		case 1: {};
		case 2: {};
		default {};
	};
};
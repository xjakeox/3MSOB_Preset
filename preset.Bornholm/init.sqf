//Remove Saving and team switching
enableSaving [false, false];
enableTeamswitch false;

//Cached Functions that can be used later on
ThreeMSOB_setMarkerVisibility = compile preprocessFileLineNumbers "3MSOB_Utils\setMarkerVisibility.sqf";

cutText[ "", "BLACK", .01 ];

waitUntil { !isNull player || isServer }; // waitUntil the player variable exists 

if ( isServer ) then
{
	execVM "3MSOB_Utils\initServer.sqf";
};

if ( local player ) then
{
	execVM "3MSOB_Utils\initClient.sqf";
};

cutText[ "", "BLACK IN", 5 ];
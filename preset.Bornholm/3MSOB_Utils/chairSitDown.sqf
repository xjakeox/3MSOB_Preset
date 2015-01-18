_chair = _this select 0;

//Sets pos, blah blah blah
player setPos [ getPos _chair select 0, getPos _chair select 1, getPos _chair select 2 ];
player setDir ( getDir _chair - 180 );

//Player sits, kicks off notification for other clients
player switchMove "Crew";
ThreeMSOB_SittingPlayers set [ count ThreeMSOB_SittingPlayers, player ];
publicVariable "ThreeMSOB_SittingPlayers";

//Sitting in another chair, remove current standUp action
if ( ThreeMSOB_ChairAction != -1 ) then { player removeAction ThreeMSOB_ChairAction; };
ThreeMSOB_ChairAction = player addAction ["<t color='#0099FF'>Stand Up</t>","3MSOB_Utils\chairStandUp.sqf"]
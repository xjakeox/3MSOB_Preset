//Removes Action
player removeAction ThreeMSOB_ChairAction;

//Player stands, kicks off notification for other clients
player switchMove "";
ThreeMSOB_SittingPlayers = ThreeMSOB_SittingPlayers - [ player ];
publicVariable "ThreeMSOB_SittingPlayers";
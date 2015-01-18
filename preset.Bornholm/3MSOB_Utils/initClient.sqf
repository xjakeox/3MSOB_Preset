////////////////////////////////
///////////Functions////////////
////////////////////////////////

// ChairFunc
// Takes nothing / returns nothing
// Simply iterates through all playable characters, and sets the correct move from the eye of the current clients
// TODO: Make sure this doesn't fuck up other clients...
ThreeMSOB_ChairFunc =
{
	{
		_sit = false;
		if ( player != _x ) then
		{
			_tgtUnit = _x;
			{
				if ( _tgtUnit == _x ) exitWith { _sit = true; };
			} forEach ThreeMSOB_SittingPlayers;
			
			if ( _sit == true ) then { _x switchMove "Crew"; }
			else { _x switchMove "" };
		};
	} forEach playableUnits;
};

////////////////////////////////
/////////ENTRY POINT////////////
////////////////////////////////
//Throw Insignia on player
[ player , "THREEMSOB_PATCH" ] call BIS_fnc_setUnitInsignia;\

//Chair actions for clients
ThreeMSOB_ChairAction = -1;

_chairTypes = [ "Land_CampingChair_V1_F", "Land_CampingChair_V2_F", "Land_Sun_chair_green_F" ];
_chairs = nearestObjects[ getMarkerPos "baseHQ", _chairTypes, getMarkerSize "baseHQ" select 0 ];
{
	_x addAction ["<t color='#0099FF'>Sit Down</t>","3MSOB_Utils\chairSitDown.sqf"]
} forEach _chairs;

"ThreeMSOB_SittingPlayers" addPublicVariableEventHandler { call ThreeMSOB_ChairFunc; };
call ThreeMSOB_ChairFunc;
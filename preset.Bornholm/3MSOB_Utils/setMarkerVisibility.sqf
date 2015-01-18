//Grab Marker Array
_markerArr = _this select 0;

//Set visibility based on True/False
_visible = _this select 1;

//Hide Markers
{
	_x setMarkerAlpha _visible;
} forEach _markerArr;
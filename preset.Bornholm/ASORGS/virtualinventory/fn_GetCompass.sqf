#include "macro.sqf"
_Compass = "";
_items = (ASORGS_CurrentInventory select GSVI_Items);
for [{_i = 0}, {(_i < count _items) && (_Compass == "")}, {_i = _i + 1}] do
{
	_item = _items select _i;
	if(getText (configFile >> "cfgWeapons" >> _item >> "simulation") == "ItemCompass") then {
		_Compass = _item;
	};
};
_Compass

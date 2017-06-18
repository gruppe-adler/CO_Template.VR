#include "component.hpp"

private _allGroupNames = [[],[],[]];
{
    _allGroupConfigs = "true" configClasses (missionConfigFile >> "missionSettings" >> "groupSettings" >> _x);
    _groupNameArray = _allGroupNames select _forEachIndex;

    {
        _name = [_x,"groupName",""] call BIS_fnc_returnConfigEntry;
        _groupNameArray pushBack _name;
    } forEach _allGroupConfigs;
} forEach ["BLUFOR","OPFOR","INDEPENDENT"];

_allGroupNames

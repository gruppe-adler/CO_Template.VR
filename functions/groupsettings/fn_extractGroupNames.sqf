#include "component.hpp"

_allGroupConfigs = "true" configClasses (missionConfigFile >> "missionSettings" >> "groupSettings");

private _allGroupNames = [];
{
    _name = [_x,"groupName",""] call BIS_fnc_returnConfigEntry;
    _allGroupNames pushBack _name;
} forEach _allGroupConfigs;

_allGroupNames

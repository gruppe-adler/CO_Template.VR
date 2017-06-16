#include "component.hpp"

params ["_radioType"];

_cfg = missionConfigFile >> "missionSettings" >> "radioSettings" >> _radioType;
_allChannels = "true" configClasses _cfg;

_freqs = [];
{
    _freqs pushBack ([_x,"freq",50] call BIS_fnc_returnConfigEntry);
} forEach _allChannels;

_freqs

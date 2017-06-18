#include "component.hpp"

params ["_callsign","_group"];

private _sideConfigName = switch (side _group) do {
    case (WEST): {"BLUFOR"};
    case (EAST): {"OPFOR"};
    case (INDEPENDENT): {"INDEPENDENT"};
    default {""};
};

private _allGroupConfigs = "true" configClasses (missionConfigFile >> "missionSettings" >> "groupsettings" >> _sideConfigName);

private _groupConfig = configNull;
{
    if (configName _x == _callsign) exitWith {_groupConfig = _x};
    _groupName = [_x,"groupName",""] call BIS_fnc_returnConfigEntry;
    if (_groupName == _callsign) exitWith {_groupConfig = _x};

    false
} count _allGroupConfigs;

_groupConfig

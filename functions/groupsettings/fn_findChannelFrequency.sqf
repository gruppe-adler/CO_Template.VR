#include "component.hpp"

params ["_type","_channelName"];

if (_channelName == "") exitWith {-1};

_allChannelConfigs = "true" configClasses (missionConfigFile >> "missionSettings" >> "radiosettings" >> _type);
_frequency = -1;

{
    _testName = [_x,"name",""] call BIS_fnc_returnConfigEntry;
    if (_testName == _channelName) exitWith {
        _frequency = [_x,"freq",50] call BIS_fnc_returnConfigEntry;
    };
} forEach _allChannelConfigs;

_frequency

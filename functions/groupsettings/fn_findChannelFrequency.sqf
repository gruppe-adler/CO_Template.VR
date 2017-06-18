#include "component.hpp"

params ["_type","_channelName"];

if (_channelName == "") exitWith {-1};

private _allNetConfigs = "true" configClasses (missionConfigFile >> "missionSettings" >> "radiosettings" >> _type);
private _frequency = -1;

{
    _configName = configName _x;
    if (_configName find "net" == 0 && {_configName == _channelName}) exitWith {
        _frequency = [_x,"freq",-1] call BIS_fnc_returnConfigEntry;
    };

    _testName = [_x,"name",""] call BIS_fnc_returnConfigEntry;
    if (_testName == _channelName) exitWith {
        _frequency = [_x,"freq",-1] call BIS_fnc_returnConfigEntry;
    };
} forEach _allNetConfigs;

_frequency

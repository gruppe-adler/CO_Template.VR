#include "component.hpp"

_radioCfg = missionConfigFile >> "missionSettings" >> "radioSettings";
_shortRangeChannels = "true" configClasses (_radioCfg >> "shortrange");
_longRangeChannels = "true" configClasses (_radioCfg >> "longrange");

_channelNames = [];
{
    {
        _freq = [_x,"freq",-1] call BIS_fnc_returnConfigEntry;
        _name = [_x,"name",""] call BIS_fnc_returnConfigEntry;

        if (_freq > 0 && count _name > 0) then {
            _channelNames pushBack [_freq,_name];
        };
    } forEach _x;
} forEach [_shortRangeChannels,_longRangeChannels];

_channelNames

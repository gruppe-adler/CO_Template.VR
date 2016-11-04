#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_radiosettings_fnc_extractChannelNames

Description: Extracts channel names from settings.

Parameters: [settings]

Returns:  [channel names]

Examples:
          [] call GRAD_radiosettings_fnc_extractChannelNames;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

params ["_settings"];
_settings params [["_shortRangeSettings",[]], ["_longrangeSettings", []]];

_channelNames = [];

{
    _type = _x;
    {
        if (typeName _x == "ARRAY") then {
            _channelNames pushBack _x;
        };
    } forEach _type;
} forEach _settings;

_channelNames

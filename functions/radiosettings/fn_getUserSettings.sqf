#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_radiosettings_fnc_getUserSettings

Description: Gets radio settings defined by user in USERSCRIPTS.

Parameters: []

Returns:  [[shortrange settings], [longrange settings]]

Examples:
          [] call GRAD_radiosettings_fnc_getUserSettings;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */
private ["_settings"];

if (hasInterface) then {
    if (["USERSCRIPTS\radioSettings.sqf"] call KK_fnc_fileExists) then {
        _settings = call compile preprocessFileLineNumbers "USERSCRIPTS\radioSettings.sqf";
    };
} else {
    _settings = call compile preprocessFileLineNumbers "USERSCRIPTS\radioSettings.sqf";
};

if (isNil "_settings") then {
    _settings = [[50,60,70,80,90,100,110,120],[30,31,32,33,34,35,36,37]];
};

_settings

#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_getUserSettings

Description: Gets group settings defined by user in USERSCRIPTS.

Parameters: []

Returns:  [groupsettings]

Examples:
          [] call GRAD_groupsettings_fnc_getUserSettings;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

if (hasInterface && !(["USERSCRIPTS\groupSettings.sqf"] call KK_fnc_fileExists)) exitWith {[]};
_userSettings = call compile preprocessFileLineNumbers "USERSCRIPTS\groupSettings.sqf";
if (isNil "_userSettings") exitWith {[]};

_userSettings

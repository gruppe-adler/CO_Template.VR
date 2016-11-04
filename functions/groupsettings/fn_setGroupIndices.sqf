#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_setGroupIndices

Description: Saves group index in groups.

Parameters: [allgroups]

Returns:  []

Examples:
          [_allgroups] call GRAD_groupsettings_fnc_setGroupIndices;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */
params ["_allgroups"];

{
    _sidegroups = _x;
    {
        _group = _x;
        _group setVariable ["grad_groupIndex", _forEachIndex, true];
    } forEach _sidegroups;
} forEach _allgroups;

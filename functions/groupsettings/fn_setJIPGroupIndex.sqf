#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_setJIPGroupIndex

Description: Saves group index in JIP unit's group.

Parameters: [unit]

Returns:  []

Examples:
          [player] call GRAD_groupsettings_fnc_setJIPGroupIndex;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */
private ["_index"];
params ["_unit"];

_group = group _unit;

//unit already has index --> rebroadcast
if (_group getVariable ["grad_groupIndex", -1] > 0) exitWith {_group setVariable ["grad_groupIndex", _group getVariable "grad_groupIndex", true]};

//find group index
_allgroups = [] call GRAD_groupsettings_fnc_findPlayableGroups;
{
    _sideGroups = _x;
    {
        _sidegroup = _x;
        if (player in _sidegroup) exitWith {_index = _forEachIndex};
    } forEach _sideGroups;

    if (!isNil "_index") exitWith {};
} forEach _allgroups;

if (isNil "_index") then {_index = 9999};

_group setVariable ["grad_groupIndex", _index, true];

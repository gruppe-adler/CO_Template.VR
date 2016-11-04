#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_setDynamicGroupNames

Description: Sets dynamic group names for groups, based on settings defined by user in USERSCRIPTS.

Parameters: [[blufor groups, opfor groups, independent groups], groupsettings]

Returns:  []

Examples:
          [] call GRAD_groupsettings_fnc_setDynamicGroupNames;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */
params ["_allgroups", "_groupSettings"];

//set names
{
  for [{_i=0}, {_i < (count _groupSettings min count _x)}, {_i=_i+1}] do {
    _name = (_groupSettings select _i) select 0;
    _group = _x select _i;
    _leader = leader _group;
    _data = [nil, _name, false];
    ["RegisterGroup", [_group, _leader, _data]] call BIS_fnc_dynamicGroups;
  };
} forEach _allgroups;

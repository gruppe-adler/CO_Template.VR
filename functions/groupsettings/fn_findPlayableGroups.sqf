#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_findPlayableGroups

Description: Finds all groups with players as leaders.

Parameters: []

Returns:  [blufor groups, opfor groups, independent groups]

Examples:
          _allgroups = [] call GRAD_groupsettings_fnc_findPlayableGroups;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */
_blugroups = [];
_opfgroups = [];
_indgroups = [];

{
    if ((leader _x) in playableUnits) then {
        switch (side _x) do {
            case west: {_blugroups pushBack _x};
            case east: {_opfgroups pushBack _x};
            case independent: {_indgroups pushBack _x};
            default {WARNING(format["Could not find side of group: %1", _x])};
        };
    };
} forEach allGroups;

[_blugroups,_opfgroups,_indgroups]

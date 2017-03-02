#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"

params ["_allgroups", "_groupNames"];

//set names
{
    for [{_i=0}, {_i < (count _groupNames min count _x)}, {_i=_i+1}] do {
        _name = _groupNames select _i;
        _group = _x select _i;
        _leader = leader _group;
        _data = [nil, _name, false];
        ["RegisterGroup", [_group, _leader, _data]] call BIS_fnc_dynamicGroups;
    };
} forEach _allgroups;

#include "component.hpp"

params ["_allgroups", "_allGroupNames"];

//set names
{
    _groups = _x;
    _groupNames = _allGroupNames select _forEachIndex;

    for [{_i=0}, {_i < ((count _groupNames) min (count _groups))}, {_i=_i+1}] do {
        _name = _groupNames select _i;
        _group = _groups select _i;
        
        _leader = leader _group;
        _data = [nil, _name, false];
        ["RegisterGroup", [_group, _leader, _data]] call BIS_fnc_dynamicGroups;
    };
} forEach _allgroups;

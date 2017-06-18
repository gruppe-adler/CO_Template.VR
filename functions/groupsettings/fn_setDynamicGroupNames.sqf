#include "component.hpp"

params ["_allgroups"];

//set names
{
    {
        _callsign = [_x] call grad_groupsettings_fnc_getCallsign;
        _leader = leader _x;
        _data = [nil, _callsign, false];
        ["RegisterGroup", [_x, _leader, _data]] call BIS_fnc_dynamicGroups;

        false
    } count _x;

    false
} count _allgroups;

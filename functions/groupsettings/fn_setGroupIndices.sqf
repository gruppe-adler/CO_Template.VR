#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"

params ["_allgroups"];

private _groupIndex = 0;
{
    _sidegroups = _x;
    {
        _group = _x;
        _group setVariable ["grad_groupIndex", _groupIndex, false];
        _groupIndex = _groupIndex + 1;
    } forEach _sidegroups;
} forEach _allgroups;

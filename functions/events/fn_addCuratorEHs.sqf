#include "component.hpp"

params [["_curatorLogic",objNull]];


// EH is aLocal
_curatorLogic addEventHandler ["CuratorGroupPlaced", {
    params ["", "_group"];

    {
        [_x] call GRAD_Loadout_fnc_doLoadoutForUnit;
    } forEach (units _group);
}];


// EH is aLocal
_curatorLogic addEventHandler ["CuratorObjectPlaced", {
    params ["", "_object"];

    if (_object isKindOf "CAManBase") then {
        if (count units _object == 1) then {
            [_object] call GRAD_Loadout_fnc_doLoadoutForUnit;
        };
    } else {
        if (count crew _object == 1) then {
            [(crew _object) select 0] call GRAD_Loadout_fnc_doLoadoutForUnit;
        };
    };
}];

#include "component.hpp"

params ["", "_object"];

if (_object isKindOf "CAManBase") then {
    [_object] call GRAD_Loadout_fnc_doLoadoutForUnit;
} else {
    if (count crew _object > 0) then {
        {[_x] call GRAD_Loadout_fnc_doLoadoutForUnit} forEach (crew _object);
    };
};

#include "component.hpp"

params [["_curatorLogic",objNull]];


// EH is aLocal
_curatorLogic addEventHandler ["CuratorGroupPlaced", {
    params ["", "_group"];
    ["grad_zeus_setServerAsOwner", [_group]] call CBA_fnc_serverEvent;
}];


// EH is aLocal
_curatorLogic addEventHandler ["CuratorObjectPlaced", {
    params ["", "_object"];

    if (_object isKindOf "CAManBase") then {
        if (count units _object == 1) then {
            ["grad_zeus_setServerAsOwner", [group _object]] call CBA_fnc_serverEvent;
        };
    } else {
        if (count crew _object > 1) then {
            ["grad_zeus_setServerAsOwner", [group (crew _object select 0)]] call CBA_fnc_serverEvent;
        };
    };
}];

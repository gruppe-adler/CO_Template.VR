#include "component.hpp"

if (!isServer) exitWith {};

params ["_unit"];
{
    _x addCuratorEditableObjects [[_unit], true];
} forEach allCurators;

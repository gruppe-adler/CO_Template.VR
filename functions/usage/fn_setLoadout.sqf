If(!local player) exitWith {};
#include "script_component.hpp"


/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_setLayout

Description: Set the Player saved Loadout!

Parameters: [BOOL]

           BOOL: Rearm Player

Returns: BOOL

Examples:
          _setLoadout = [false] call GRAD_usage_fnc_setLayout;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output"];
params ["_rearm"];

_output = true;

If(!(isNil {player getVariable "grad_loadout"}))then
{
  player setUnitLoadout [(player getVariable "grad_loadout"), _rearm];
}else{_output = false;};

_output

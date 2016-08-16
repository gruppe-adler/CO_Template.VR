#include "script_component.hpp"
/* -----------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_isWater

Description: Returns whether water is at given position.

Parameters: [position]

Returns: BOOL

Examples:
          _iswater = [_position] call GRAD_spawnhelp_fnc_isWater;

Author: Fry

-------------------------------------------------------------------------------------------------- */

private ["_x_k","_y_k","_is_water"];
params ["_pos"];

_x_k = _pos select 0;
_y_k = _pos select 1;


_is_water = surfaceIsWater [_x_k,_y_k];
_is_water

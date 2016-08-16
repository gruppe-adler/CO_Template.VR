#include "script_component.hpp"

/* ----------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_dataType

Description: Returns the data type of an expression.

Parameters: [_var_name]

Returns: String

Examples:

      _data_type = [_var_name] call GRAD_spawnhelp_fnc_dataType;

Author: Fry

---------------------------------------------------------------------------- */
private ["_output"];
params ["_data"];
_output = "";

_output = typeName _data;
_output

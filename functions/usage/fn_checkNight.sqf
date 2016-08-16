#include "script_component.hpp"
/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_checkNight

Description: Check for Night.

Parameters:


Returns: BOOL

Examples:
          _isnight = call GRAD_usage_fnc_checkNight;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output"];

_output = false;

If(sunOrMoon >= 0.6)then{_output = true;};
_output

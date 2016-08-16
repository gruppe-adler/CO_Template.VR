If(!local player) exitWith {};
#include "script_component.hpp"


/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_getLayout

Description: Get Players Loadout!

Parameters: []

           Info: Save the Loadout in "player setVariable ["grad_loadout",_loadout, false]"

Returns: BOOL

Examples:
          _Loadout = [player] call GRAD_usage_fnc_getLayout;

Author: Fry

-------------------------------------------------------------------------------------------------- */

player setVariable ["grad_loadout",(getUnitLoadout player),false];
true

#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_checkParachute

Description: Check and add a Parachute to given Unit.

Parameters: [Unitname]


Returns: BOOL

Examples:
          _have_para = [Soldier2] spawn GRAD_usage_fnc_checkParachute;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_backpack"];
params ["_para_man"];

_backpack = backpack _para_man;

If(_backpack == "")then
{
	_para_man addBackpack "B_Parachute";
}else{
        If(_backpack != "B_Parachute")then
        {
					removeBackpack _para_man;
					_para_man addBackpack "B_Parachute";
				};
      };
true

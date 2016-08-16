#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_conview_fnc_getWeaponMagazines

Description: Find all Magazines of Weaponclassname.

Parameters: [Weapon Classname]



Returns: Array with Magazine Types

Examples:
          _mag_arr = ["arifle_MXC_ACO_pointer_F"] call GRAD_conview_fnc_getWeaponMagazines;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_config_path"];
params ["_weapon_class"];

_output = [];
_config_path = (configFile >> "CfgWeapons" >> _weapon_class);

If(isClass _config_path)then
{
  _output = getArray (_config_path >> "magazines");
};
_output

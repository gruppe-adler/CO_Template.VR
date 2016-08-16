#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_checkEntities

Description: Find entities in the sphere with given radius.

Parameters: [position/object,typeName/Array of Strings,Radius,(optional: true - List Objects)]

           typeName/Array of Strings: "Man" / ["Man","Static","Truck"]

Returns: Array with Objects / Number

Examples:
          _arrow = [_position,["Man","Static","Truck"],200] call GRAD_spawnhelp_fnc_checkEntities;

Author: Fry

-------------------------------------------------------------------------------------------------- */

private ["_output","_found"];
params ["_posobj","_types","_radius","_list"];

If(isNil "_list")then{_list = false;};
_output = 0;
_found = _posobj nearEntities [_types,_radius];
If(count _found > 0)then
{
  If(_list)then{_output = _found}else{_output = (count _found);}
};
_output

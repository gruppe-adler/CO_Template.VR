#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_checkObjects

Description: Find Objects with given radius.

Parameters: [position/Object,Array of Strings,Radius,(optional: true - List Objects)]

           Array of Strings(TYPENAME-ARRAY) - ["Man","Truck"]

Returns: Array with Objects / Number

Examples:
          _number = [_position,["Static","house","Tank","Car","StaticWeapon"],200] call GRAD_spawnhelp_fnc_checkObjects;

Author: Fry

-------------------------------------------------------------------------------------------------- */

private ["_position","_output","_found"];
params ["_pos","_types","_radius","_list"];

If(isNil "_list")then{_list = false;};
_output = If(_list)then{[]}else{0};
_position = [];
switch(typeName _pos)do
{
  case "OBJECT":{_position = position _pos;};
  case "ARRAY":{_position = _pos;};
  default {LOG_ERR("GRAD_spawnhelp_fnc_checkObjects: NO OBJECT OR POSITION")};
};
_found = nearestObjects [_position,_types,_radius];
If(count _found > 0)then
{
  If(_list)then{_output = _found}else{_output = (count _found);};
};
_output

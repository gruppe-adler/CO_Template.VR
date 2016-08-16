#include "script_component.hpp"
/* -----------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_checkTerrainObj

Description: Returns a list of nearest terrain objects of the given types to the given position or object, within the specified distance.

Parameters: [position/object,Array of Strings,Radius,(optional: true - List Objects)]

           Array of Strings(TYPENAME-ARRAY) - ["House","Tree","Bush"]

Returns: Array with Objects / Number

Examples:
          _list = [player,["House","Tree","Bush"],200,true] call GRAD_spawnhelp_fnc_checkTerrainObj;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_arr"];
params ["_center","_types","_radius","_list"];

If((typeName _types) != "ARRAY") exitWith {LOG_ERR("GRAD_spawnhelp_fnc_checkTerrainObj: NO TYPENAME-ARRAY DETECTED")};
If(isNil "_list")then{_list = false;};
_output = If(_list)then{[]}else{0};
_arr = [];
switch(typeName _center)do
{
  case "OBJECT":{_arr = nearestTerrainObjects [_center, _types, _radius];};
  case "ARRAY":{If(count _center > 2 && (typeName (_center select 0) == "SCALAR") && (typeName (_center select 1) == "SCALAR"))then
                {_arr = nearestTerrainObjects [[(_center select 0),(_center select 1),0], _types, _radius];};
               };
  default{LOG_ERR("GRAD_spawnhelp_fnc_checkTerrainObj: NO OBJECT OR POSITION")};
};
If(count _arr > 0)then
{
  If(_list)then{_output = _arr;}else{_output = count _arr;};
};
_output

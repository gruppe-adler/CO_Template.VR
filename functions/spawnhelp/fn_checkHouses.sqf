#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_checkHouses

Description: Find Houses with given radius.

Parameters: [position/Object,Radius,check positions,(optional: true - List Objects)]

            -check positions (BOOL): Find Houses with available Housepositions

Returns: Array with Objects / Number

Examples:
          _house_list = [_position,200,true,true] call GRAD_spawnhelp_fnc_checkHouses;
          _house_count = [Tank,200,true] call GRAD_spawnhelp_fnc_checkHouses;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_position","_house_arr","_house_list","_good_houses"];
params ["_posobj","_radius","_check_pos","_list"];

If(isNil "_list")then{_list = false;};
_output = If(_list)then{[]}else{0};
_house_arr = [];
_position = [];
switch(typeName _posobj)do
{
  case "OBJECT":{_position = position _posobj;};
  case "ARRAY":{_position = _posobj;};
  default {If(true) exitWith {LOG_ERR("GRAD_spawnhelp_fnc_checkHouses: NO OBJECT OR POSITION")};};
};

_house_list = [_position,["House"],_radius,true] call FNC_SMC(spawnhelp,checkTerrainObj);
If(count _house_list > 0)then
{
  {If(typeOf _x != "")then{_house_arr pushBack _x;};}forEach _house_list;
};
If(count _house_arr > 0)then
{
   _good_houses = [];
 {
   switch(true)do
   {
     case ((damage _x) < 0.4 && _check_pos):{If(([_x] call FNC_SMC(spawnhelp,checkHousePos)) > 0)then{_good_houses pushBack _x;};};
     case ((damage _x) < 0.4 && !_check_pos):{_good_houses pushBack _x;};
   };
 }forEach _house_arr;
 If(count _good_houses > 0)then
 {
   If(_list)then{_output = _good_houses;}else{_output = (count _good_houses);};
 };
};
_output

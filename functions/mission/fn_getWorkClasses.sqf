If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "script_component.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: GRAD_mission_fnc_getWorkClasses

Description: Search for available Unit Classes!.

Parameters: [CLASSNAME INDEX, NUMBER]

            CLASSNAME INDEX - "NORMAL_UNITS","URBAN_UNITS","SPECIAL_UNITS","MIXED_NORMSPEC","MIXED_NORMSNIP","MIXED_ALL"
                              "CIV_MEN" - (Ignores NUMBER of CLasses and return a List of all available Classnames)


Returns: ARRAY - with List of Unit Classes

Examples:
            _isStored = ["NORMAL_UNITS",5] call GRAD_mission_fnc_getWorkClasses;

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_output","_holder_arr","_store_arr","_i"];
params ["_idx","_chk_num"];


_output = [];
_holder_arr = [];
_store_arr = [];

switch(_idx)do
{
  case "NORMAL_UNITS":{If(count GRAD_MEN > 0)then{_store_arr = GRAD_MEN;}else{If(count GRAD_SFMEN > 0)then{_store_arr = GRAD_SFMEN;};};};
  case "URBAN_UNITS":{If(count GRAD_MENURBAN > 0)then{_store_arr = GRAD_MENURBAN;}else{If(count GRAD_MEN > 0)then{_store_arr = GRAD_MEN;};};};
  case "SPECIAL_UNITS":{If(count GRAD_SFMEN > 0)then{_store_arr = GRAD_SFMEN;}else{If(count GRAD_MEN > 0)then{_store_arr = GRAD_MEN;};};};
  case "SNIPER_UNITS":{If(count GRAD_SNIPER > 0)then{_store_arr = GRAD_SNIPER;}else{If(count GRAD_MEN > 0)then{_store_arr = GRAD_MEN;};};};
  case "MIXED_NORMSPEC":{
                          If(count GRAD_MEN > 0)then{_holder_arr append GRAD_MEN;};If(count GRAD_SFMEN > 0)then{_holder_arr append GRAD_SFMEN;};
                          If(count _holder_arr > 0)then{_store_arr = _holder_arr call FNC_BIS(arrayShuffle);};
                        };
  case "MIXED_NORMSNIP":{
                          If(count GRAD_MEN > 0)then{_holder_arr append GRAD_MEN;};If(count GRAD_SNIPER > 0)then{_holder_arr append GRAD_SNIPER;};
                          If(count _holder_arr > 0)then{_store_arr = _holder_arr call FNC_BIS(arrayShuffle);};
                        };
  case "MIXED_ALL":{
                     If(count GRAD_MEN > 0)then{_holder_arr append GRAD_MEN;};
                     If(count GRAD_MENURBAN > 0)then{_holder_arr append GRAD_MENURBAN;};
                     If(count GRAD_SFMEN > 0)then{_holder_arr append GRAD_SFMEN;};
                     If(count GRAD_SNIPER > 0)then{_holder_arr append GRAD_SNIPER;};
                     If(count _holder_arr > 0)then{_store_arr = _holder_arr call FNC_BIS(arrayShuffle);};
                   };
  case "CIV_MEN":{If(count GRAD_CIVMEN > 0)then{_output = GRAD_CIVMEN;};};
  case "CIV_VEC":{If(count GRAD_CIVCAR > 0)then{_output = GRAD_CIVCAR;};};
};

If(count _store_arr > 0)then
{
  for "_i" from 1 to _chk_num do
  {
    _output pushBack (selectRandom _store_arr);
  };
};
_output

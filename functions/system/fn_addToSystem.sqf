If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "script_component.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: GRAD_system_fnc_addToSystem

Description: Stores Units/Vehicles etc in System.

Parameters: [StoreName,Position,Array with Names,(Optional: Number)]

            StoreName     -    "GROUPS","VEHICLES","MORTARS","ARTILLERY"
            Position      -     position Array
            Array with Names  - Array with Names of Units/Vehicles
            Number        -     Optional: count of Units for HeadlessClient

Returns: Bool

Examples:
            _isStored = ["GROUPS",(getMarkerPos "TargetTown"),[S1,....,S10]] call GRAD_system_fnc_addToSystem;

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_work_arr","_run","_selector","_hc_count","_new_add_arr","_ctrl_num","_found_it","_i","_looked_arr","_looked_pos","_looked_store"];
params ["_store_name","_chk_pos","_add_it_arr","_num"];

If(isNil "_num")then{_num = 0;};
_work_arr = [];
_run = true;
_selector = 0;
_new_add_arr = [];

If(missionNamespace getVariable [VAR_SMA(delete_from_system),false])then
{waitUntil{!(missionNamespace getVariable [VAR_SMA(delete_from_system),false])};};

missionNamespace setVariable[VAR_SMA(write_to_system),true,false];

switch(_store_name)do
{
  case "GROUPS":{_work_arr = missionNamespace getVariable[VAR_SMA(group_store),[]];_selector = 1;};
  case "VEHICLES":{_work_arr = missionNamespace getVariable[VAR_SMA(vehicle_store),[]];_selector = 2;};
  case "MORTARS":{_work_arr = missionNamespace getVariable[VAR_SMA(mortar_store),[]];_selector = 3;};
  case "ARTILLERY":{_work_arr = missionNamespace getVariable[VAR_SMA(artillery_store),[]];_selector = 3;};
  default {_run = false;};
};
If(_run)then
{
switch(true)do
{
  case (count _work_arr > 0):{
                               switch(true)do
                               {
                                 case (_selector < 3):{
                                                        _ctrl_num = 0;
                                                        _found_it = false;
                                                        for "_i" from 0 to ((count _work_arr) - 1) do
                                                        {
                                                          _looked_arr = _work_arr select _i;
                                                          _looked_pos = _looked_arr select 0;
                                                          _looked_store = _looked_arr select 1;
                                                          If((_chk_pos select 0) == (_looked_pos select 0) && (_chk_pos select 1) == (_looked_pos select 1))then
                                                          {_ctrl_num = _i; _found_it = true;};
                                                        };
                                                        If(_found_it)then
                                                        {
                                                          _looked_arr = _work_arr select _ctrl_num;_looked_pos = _looked_arr select 0;_looked_store = _looked_arr select 1;
                                                          switch(_selector)do
                                                          {
                                                            case 1:{
                                                                     _hc_count = _looked_arr select 2;
                                                                     If(_num > 0)then{_hc_count = _hc_count + _num;};
                                                                     _looked_store append _add_it_arr;
                                                                     _work_arr set [_ctrl_num,[_looked_pos,_looked_store,_hc_count]];
                                                                   };
                                                            case 2:{
                                                                     _looked_store append _add_it_arr;
                                                                     _work_arr set [_ctrl_num,[_looked_pos,_looked_store]];
                                                                   };
                                                          };
                                                          _new_add_arr = _work_arr;
                                                        }else{
                                                               switch(_selector)do
                                                               {
                                                                 case 1:{_work_arr pushBack [_chk_pos,_add_it_arr,_num];};
                                                                 case 2:{_work_arr pushBack [_chk_pos,_add_it_arr];}
                                                               };
                                                               _new_add_arr = _work_arr;
                                                             };
                                                      };
                                 case (_selector > 2):{
                                                        _work_arr append _add_it_arr;
                                                        _new_add_arr = _work_arr;
                                                      };
                               };
                             };
  case (count _work_arr < 1):{
                                switch(_selector)do
                                {
                                  case 1:{_new_add_arr = [[_chk_pos,_add_it_arr,_num]];};
                                  case 2:{_new_add_arr = [[_chk_pos,_add_it_arr]];};
                                  case 3:{_new_add_arr = _add_it_arr};
                                };
                              };
};

switch(_store_name)do
{
  case "GROUPS":{missionNamespace setVariable[VAR_SMA(group_store),_new_add_arr,false];};
  case "VEHICLES":{missionNamespace setVariable[VAR_SMA(vehicle_store),_new_add_arr,false];};
  case "MORTARS":{missionNamespace setVariable[VAR_SMA(mortar_store),_new_add_arr,false];};
  case "ARTILLERY":{missionNamespace setVariable[VAR_SMA(artillery_store),_new_add_arr,false];};
};
};
missionNamespace setVariable[VAR_SMA(write_to_system),false,false];
_run

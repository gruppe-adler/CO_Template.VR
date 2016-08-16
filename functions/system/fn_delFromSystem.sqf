If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "script_component.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: GRAD_system_fnc_delFromSystem

Description: Delete stored Units/Vehicles from System!

Parameters: [Position]

Returns: Bool

Examples:
            _isStored = [(getMarkerPos "TargetTown")] call GRAD_system_fnc_delFromSystem;

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_hc_info","_output","_vec_store","_grp_store","_mortar_store","_artillery_store","_holder","_found","_ctrl_num","_store_arr","_del",
         "_looked_arr","_looked_pos","_looked_store","_looked_num","_i","_del_grps","_vec"];
params ["_del_pos"];

_hc_info = missionNamespace getVariable [VAR_SMA(hc_info),[false,[]]];
If((_hc_info select 0) && isDedicated)then
{
  RE_SMC_ATS([_del_pos],system,delFromSystem,-2);
};

If(missionNamespace getVariable[VAR_SMA(write_to_system),false])then
{waitUntil{!(missionNamespace getVariable[VAR_SMA(write_to_system),false])};};

missionNamespace setVariable[VAR_SMA(delete_from_system),true,false];

_output = false;
_grp_store = missionNamespace getVariable[VAR_SMA(group_store),[]];
_vec_store = missionNamespace getVariable[VAR_SMA(vehicle_store),[]];
_mortar_store = missionNamespace getVariable[VAR_SMA(mortar_store),[]];
_artillery_store = missionNamespace getVariable[VAR_SMA(artillery_store),[]];
_holder = [_grp_store,_vec_store];


for "_del" from 0 to 1 do
{
  _found = false;
  _ctrl_num = 0;
  _looked_num = 0;
  _store_arr = [];
  switch(_del)do
  {
    case 0:{_store_arr = _grp_store;};
    case 1:{_store_arr = _vec_store;};
  };
  If(count _store_arr > 0)then
  {
    for "_i" from 0 to ((count _store_arr) -  1) do
    {
      _looked_arr = (_store_arr select _i);
      _looked_pos = _looked_arr select 0;
      If((_looked_pos select 0) == (_del_pos select 0) && (_looked_pos select 1) == (_del_pos select 1))then
      {
        _found = true;
        _ctrl_num = _i;
      };
    };
    If(_found)then
    {
      _looked_arr = (_store_arr select _ctrl_num);_looked_store = (_looked_arr select 1);If(_del == 0)then{_looked_num = (_looked_arr select 2);};

        switch(_del) do
        {
          case 0:{
                  for "_del_grps" from 0 to ((count _looked_store) - 1) do
                  {
                   If(!isNull (_looked_store select _del_grps))then
                   {
                     {deleteVehicle _x;}forEach units (_looked_store select _del_grps);
                   };
                  };
                  _store_arr set [_ctrl_num,(_ctrl_num * -1)];
                  _store_arr = _store_arr - [(_ctrl_num * -1)];
                  missionNamespace setVariable[VAR_SMA(group_store),_store_arr,false];
                  If(!isDedicated && _looked_num > 0)then{[_looked_num,true] call FNC_SMC(hc,statusHClients);};
                 };
          case 1:{
                  {
                    _vec = _x;
                    If(isDedicated)then
                    {
                      If(count _mortar_store > 0 && _vec In _mortar_store)then{_mortar_store = _mortar_store - [_vec];};
                      If(count _artillery_store > 0 && _vec In _artillery_store)then{_artillery_store = _artillery_store - [_vec];};
                    };
                    If(local _vec)then{deleteVehicle _vec;};
                  }forEach _looked_store;
                  _store_arr set [_ctrl_num,(_ctrl_num * -1)];
                  _store_arr = _store_arr - [(_ctrl_num * -1)];
                  missionNamespace setVariable[VAR_SMA(vehicle_store),_store_arr,false];
                  If(isDedicated)then
                  {
                    missionNamespace setVariable[VAR_SMA(mortar_store),_mortar_store,false];
                    missionNamespace setVariable[VAR_SMA(artillery_store),_artillery_store,false];
                  };
                 };
        };
      _output = true;
    };
  };
};


missionNamespace setVariable[VAR_SMA(delete_from_system),false,false];
_output

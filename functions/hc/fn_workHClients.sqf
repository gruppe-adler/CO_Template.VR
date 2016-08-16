If(isMultiplayer)then{If(!isDedicated) exitWith {};};
#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_hc_fnc_workHClients

Description: Check for Unit count on Headless Clients!

Parameters: []

Dedicated Only


Returns: [BOOL,CLIENT_ID]

Examples:
            [] call GRAD_hc_fnc_workHClients;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_max_hc_count","_min","_counter","_hc_number_holder","_hc_info","_hcs_arr","_hc_number","_x"];
params ["_num"];

_output = [false,-1];
_max_hc_count = 200;
_min = _max_hc_count;


_hc_info = missionNamespace getVariable [VAR_SMA(hc_info),[false,[]]];

If(_hc_info select 0)then
{
 _hcs_arr = _hc_info select 1;
 If(count _hcs_arr > 1)then
 {
   _hc_number_holder = -1;
   {
     _counter = missionNamespace getVariable [VAR_SMC(hc,_x),0];
     If((_counter + _num) <= _max_hc_count)then
     {
       If(_counter < _min)then
       {
         _min = _counter;
         _hc_number_holder = _x;
       };
     };
   }forEach _hcs_arr;
   If(_hc_number_holder > -1)then{_output = [true,_hc_number_holder];};
 }else{
        _hc_number = (_hcs_arr select 0);
        _counter = missionNamespace getVariable [VAR_SMC(hc,_hc_number),0];
        If((_counter + _num) <= _max_hc_count)then{_output = [true,_hc_number];};
      };
};

_output

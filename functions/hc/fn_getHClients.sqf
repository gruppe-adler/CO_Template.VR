If(isMultiplayer)then{If(hasInterface || isDedicated) exitWith {};};
#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_hc_fnc_getHClients

Description: Check for Headless Clients and reads their Owner ID!

Parameters: []

Headless Client only!!

Returns: Nothing

Examples:
            [] call GRAD_hc_fnc_getHClients;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_hc_info","_hcs_arr"];

sleep (random 15);

_hc_info = missionNamespace getVariable [VAR_SMA(hc_info),[false,[]]];

If(_hc_info select 0)then
{
  _hcs_arr = (_hc_info select 1);
  _hcs_arr pushBack (clientOwner);
  _hc_info set[1,_hcs_arr];
  missionNamespace setVariable [VAR_SMA(hc_info),_hc_info,true];
}else{
       missionNamespace setVariable [VAR_SMA(hc_info),[true,[clientOwner]],true];
     };
 

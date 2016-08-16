If(isMultiplayer)then{If(hasInterface || isDedicated) exitWith {};};
#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_hc_fnc_statusHClients

Description: Updated unit count on Headless Clients!

Parameters: [NUMBER,BOOL]

            NUMBER :  Number to Add/Subtract from unit count
            BOOL :    (Optional) true - subtract NUMBER from unit count

HEADLESS CLIENT ONLY !!!

Returns: Number - current unit count

Examples:
            _counter = [45] call GRAD_hc_fnc_statusHClients;

Author: Fry
-------------------------------------------------------------------------------------------------- */
private ["_hc_id","_hc_count_holder"];
params ["_number","_subtract"];

if(isNil "_subtract")then{_subtract = false;};

_hc_id = clientOwner;
_hc_count_holder = missionNamespace getVariable [VAR_SMC(hc,_hc_id),0];

If(_subtract)then
{
  If((_hc_count_holder - _number) <= 0)then
  {
    _hc_count_holder = 0;
    missionNamespace setVariable [VAR_SMC(hc,_hc_id),0,true];
  }else{
         _hc_count_holder = _hc_count_holder - _number;
         missionNamespace setVariable [VAR_SMC(hc,_hc_id),_hc_count_holder,true];
       };
}else{
       _hc_count_holder = _hc_count_holder + _number;
       missionNamespace setVariable [VAR_SMC(hc,_hc_id),_hc_count_holder,true];
     };

_hc_count_holder

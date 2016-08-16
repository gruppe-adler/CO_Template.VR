If(!hasInterface) exitWith {};
#include "script_component.hpp"

// Set Client Interaction for Satphone
// Pre Defined Function

private ["_action"];
params ["_idx","_first_start"];

_action = [];

If(isNil "_first_start")then{_first_start = false;};

switch(_idx)do
{
  case 0:{
           If(!_first_start)then
           {
             [typeOf player, 1,["ACE_SelfActions","sat_phone_close"]] call ace_interact_menu_fnc_removeActionFromClass;
           };
           _action = ["sat_phone_open", (localize "STR_OPEN_SAT"), "", {[1] call GRAD_dial_fnc_getSatPhoneData;}, {true}] call ace_interact_menu_fnc_createAction;
           [typeOf player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
         };
  case 1:{
           [typeOf player, 1,["ACE_SelfActions","sat_phone_open"]] call ace_interact_menu_fnc_removeActionFromClass;
           _action = ["sat_phone_close", (localize "STR_CLOSE_SAT"), "", {[2] call GRAD_dial_fnc_getSatPhoneData;}, {true}] call ace_interact_menu_fnc_createAction;
           [typeOf player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
         };
};
true

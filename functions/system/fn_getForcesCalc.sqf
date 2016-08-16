If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "script_component.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: GRAD_system_fnc_getForcesCalc

Description: Calculated number of enemies, depending on the number of players!

Parameters: [NUMBER,(Optional:NUMBER/BOOL)]

            NUMBER :  Number of player or number of Enemy Groups
            OPTIONAL: Number - Number of Soldiers in a Enemy Group (Calculate Soldiers for House Positions)
                      BOOL - true/false (dividing the number of groups and soldiers for Night Effect)


Returns: ARRAY

Examples:
            [NUMBER GROUPS,NUMBER SOLDIERS,NUMBER VEHICLES,NUMBER STATICWEAPONS] = [12,true] call GRAD_system_fnc_getForcesCalc;
            [6,3,4,5] = [12,true] call GRAD_system_fnc_getForcesCalc; (with NightEffect)
            [11,5,4,5] = [12,false] call GRAD_system_fnc_getForcesCalc; (without NightEffect)

            [NUMBER GROUPS,NUMBER SOLDIERS] = [6,3] call GRAD_system_fnc_getForcesCalc; (For House Spawn)



Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_output","_human_dep_forces","_unit_calc","_group_calc","_vehicle_calc","_static_weapon_calc"];
params ["_group_count","_men_count"];

_human_dep_forces = false;
_night_check = false;
If(isNil "_men_count")then{_human_dep_forces = true;}else{If(typeName _men_count == "BOOL")then{_night_check = _men_count;};};

_output = [];
_unit_calc = 0;
_group_calc = 0;
_vehicle_calc = 0;
_static_weapon_calc = 0;

If(_human_dep_forces)then
{
  switch("difficulty" call FNC_BIS(getParamValue))do
  {
    case 0:{_group_calc = 1.1;_unit_calc = 3;};
    case 1:{_group_calc = 1.1;_unit_calc = 4;};
    case 2:{_group_calc = 0.9;_unit_calc = 5;_vehicle_calc = 0.2;};
    case 3:{_group_calc = 0.9;_unit_calc = 5;_vehicle_calc = 0.3;_static_weapon_calc = 0.4;};
    default {_group_calc = 0.9;_unit_calc = 6;_vehicle_calc = 0.3;_static_weapon_calc = 0.4;};
  };
  If(_night_check)then
  {
    _output = [
                (If((round(_group_count * _group_calc)) > 22)then{(22 * 0.5)}else{(round((_group_count * _group_calc) * 0.5))}),
                (round(_unit_calc * 0.5)),
                (If((round(_group_count * _vehicle_calc)) > 12)then{12}else{(round(_group_count * _vehicle_calc))}),
                (If((round(_group_count * _static_weapon_calc)) > 15)then{15}else{(round(_group_count * _static_weapon_calc))})
              ];
  }else{
        _output = [
                    (If((round(_group_count * _group_calc)) > 22)then{22}else{(round(_group_count * _group_calc))}),
                    _unit_calc,
                    (If((round(_group_count * _vehicle_calc)) > 12)then{12}else{(round(_group_count * _vehicle_calc))}),
                    (If((round(_group_count * _static_weapon_calc)) > 15)then{15}else{(round(_group_count * _static_weapon_calc))})
                  ];
       };
}else{

  switch("difficulty" call FNC_BIS(getParamValue))do
  {
    case 0:{_group_calc = 0.1;_unit_calc = 1;};
    case 1:{_group_calc = 0.1;_unit_calc = 1;};
    case 2:{_group_calc = 0.2;_unit_calc = 1;};
    case 3:{_group_calc = 0.3;_unit_calc = 2;};
    default {_group_calc = 0.4;_unit_calc = 2;};
  };

  _output = [
              (If((round((_group_count * _men_count) * _group_calc)) > 10)then{10}else{(round((_group_count * _men_count) * _group_calc))}),
              _unit_calc
            ];
};
_output

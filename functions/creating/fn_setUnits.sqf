If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "script_component.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: GRAD_creating_fnc_setUnits

Description: Creates Groups of Units on Battlefield.

              SERVER/HEADLESS CLIENT

Parameters: [POSITION,RADIUS,NUMBER GROUPS,NUMBER UNITS,GROUP INDEX,LOCATION,(BEHAVIORMODE),(COMBATMODE)]

            POSITION  -  ARRAY with Position or ARRAY with 2 Position Arrays
                         1 Positionarray is the Main- and Spawnposition together to add the Units in System
                         2 Positionarrays the 1st is the Mainposition to add the Units in System & the 2nd to spawn the Units on Battlefield

            RADIUS    -  the Distance where the Units will spawn around the Spawnpoint

            NUMBER GROUPS -  NUMBER of all Groups (new Calculation in the LOCATION Mode "MIXED")

            NUMBER UNITS  -  Number of Units in the Group

            GROUP INDEX   -  Index of Different Classnames(if Classnames available!)
                             "NORMAL_UNITS","URBAN_UNITS","SPECIAL_UNITS","MIXED_NORMSPEC","MIXED_NORMSNIP","MIXED_ALL"

            LOCATION      -  Location where will spawn the Groups
                             "AREA" :   Everywhere on Area around the Spawnpoint
                             "BORDER" : Randomized Spawnpoint at the Border of Area
                             "HOUSE"  : If Houses available, random House Position will used
                             "HOUSE_TOP" : If Houses available, highest House Position will used
                             "MIXED"  : A Mix between AREA and HOUSE if Houses available

             (BEHAVIORMODE) - Optional: default "CARELESS"

             (COMBATMODE)   - Optional : default "YELLOW"

             !INFORMATION!: "CIV_MEN" at GROUP INDEX is not supported!

Returns: [ARRAY with Names of all created Groups]

Examples:
            _isStored = [(getMarkerPos "start"), 200, 20, 5, "NORMAL_UNITS","MIXED"] call GRAD_creating_fnc_setUnits;

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_output","_do_your_job","_get_number_enemies","_hc_info","_chk_hc","_main_pos","_spawn_pos","_work_arr","_allowed_to_create","_calculate_units","_house_arr",
         "_x","_setting_grp_num","_setting_unit_num","_grp_crea","_group_classes","_unit_crea","_grp_arr","_grp","_house_ctrl_arr","_set_in_house","_house_ctrl",
         "_ctrl_num","_house_lvl","_unit","_spawn_pos_holder","_unit_counter","_housew_arr","_everyhouse","_gethouse","_house_spawn","_border_pos"];
params ["_position","_radius","_grp_num","_units_in_grp_num","_group_choice","_location_idx","_behaviour_idx","_combat_idx"];

If(isNil "_behaviour_idx")then{_behaviour_idx = "CARELESS";};
If(isNil "combat_idx")then{_combat_idx = "YELLOW";};

IF(count GRAD_MEN == 0 && count GRAD_SFMEN == 0) exitWith {LOG_ERR("Control GRAD_MEN ARRAY or fn_WorkClasses");};

_output = [];
_do_your_job = If(_group_choice != "CIV_MEN")then{true}else{false};

_hc_info = missionNamespace getVariable [VAR_SMA(hc_info),[false,[]]];
_get_number_enemies = If(_location_idx == "MIXED")then{[_grp_num,_units_in_grp_num] call FNC_SMC(system,getForcesCalc)}else{[]};
If((_hc_info select 0) && isDedicated)then
{
  _chk_hc = [false];
  If(_location_idx == "MIXED" && count _get_number_enemies > 0)then
  {
    _chk_hc = [(round(_grp_num * _units_in_grp_num)) + (round((_get_number_enemies select 0) * (_get_number_enemies select 1)))] call FNC_SMC(hc,workHClients);
  }else{
         _chk_hc = [(round(_grp_num * _units_in_grp_num))] call FNC_SMC(hc,workHClients);
       };
  If(_chk_hc select 0)then
  {
    RE_SMC_AT(_this,creating,setUnits,(_chk_hc select 1));_do_your_job = false;
  };
};
If(_do_your_job)then
{
  _main_pos = [];_spawn_pos = [];_work_arr = [];_house_arr = [];_housew_arr = [];_allowed_to_create = true;_calculate_units = false;_grp_arr = [];_unit_counter = 0;
  _everyhouse = false;
  switch(true)do
  {
    case (typeName (_position select 0) == "ARRAY" && typeName (_position select 1) == "ARRAY"):{_main_pos = (_position select 0);_spawn_pos = (_position select 1);};
    case (typeName (_position select 0) == "SCALAR" && typeName (_position select 1) == "SCALAR"):{_main_pos = _position;_spawn_pos = _position;};
  };
  switch(_location_idx)do
  {
    case "AREA":{_work_arr pushBack "AREA";};
    case "BORDER":{_work_arr pushBack "BORDER";};
    case "HOUSE":{
                   _house_arr = [_position,_radius,true,true] call FNC_SMC(spawnhelp,checkHouses);
                   If(count _house_arr > 0)then{_work_arr pushBack "HOUSE";};
                 };
    case "HOUSE_TOP":{
                       _housew_arr = [_position,_radius,true,true] call FNC_SMC(spawnhelp,checkHouses);
                       If(count _housew_arr > 0)then
                       {{
                          If(count ([_x,"LEVELS"] call FNC_SMC(spawnhelp,checkHousePos)) >= 2)then
                          {_house_arr pushBack _x;};
                        }forEach _housew_arr;
                        switch(true)do
                        {
                          case (count _house_arr >= (2 * _grp_num)):{_work_arr pushBack "HOUSE_TOP";};
                          case (count _house_arr >= _grp_num):{_work_arr pushBack "HOUSE_TOP";_everyhouse = false;};
                        };
                       };
                     };
    case "MIXED":{
                   _calculate_units = true;_work_arr pushBack "AREA";
                   _house_arr = [_position,_radius,true,true] call FNC_SMC(spawnhelp,checkHouses);
                   If(count _house_arr > 0)then{_work_arr pushBack "HOUSE";};
                 };
    default {_allowed_to_create = false;LOG_ERR("Check Function Call! fn_setUnits");};
  };

  If(_allowed_to_create)then
  {{
    _setting_grp_num = 0;
    _setting_unit_num = 0;
    _house_ctrl_arr = [];
    _set_in_house = false;
    _border_pos = [];
    switch(_x)do
    {
      case "AREA":{_setting_grp_num = _grp_num;_setting_unit_num = _units_in_grp_num;};
      case "BORDER":{_setting_grp_num = _grp_num;_setting_unit_num = _units_in_grp_num;
                     _border_pos = (([_spawn_pos,(round(_radius * 4))] call FNC_SMC(geometry,getCircleBorderPos)) select 0);
                     If(!isMultiplayer)then{player setPos _border_pos;};
                    };
      case "HOUSE":{
                     If(_calculate_units)then{_setting_grp_num = (_get_number_enemies select 0);_setting_unit_num = (_get_number_enemies select 1);
                    }else{_setting_grp_num = _grp_num;_setting_unit_num = _units_in_grp_num;};
                   };
      case "HOUSE_TOP":{_setting_grp_num = _grp_num;_setting_unit_num = _units_in_grp_num;};
    };
    for "_grp_crea" from 1 to _setting_grp_num do
    {
      _group_classes = [_group_choice,_setting_unit_num] call FNC_SMC(mission,getWorkClasses);
      If(count _group_classes > 0)then
      {
        _spawn_at_pos = [];
        _house_spawn = [];
        switch(_x)do
        {
          case "AREA":{_spawn_at_pos = [_spawn_pos,_radius] call FNC_SMC(geometry,getCirclePos);};
          case "BORDER":{_spawn_at_pos = [_border_pos,_radius] call FNC_SMC(geometry,getCirclePos);};
          case "HOUSE":{ _ctrl_num = 0;
                         _house_ctrl = (selectRandom _house_arr);
                         while{_house_ctrl In _house_ctrl_arr && _ctrl_num < (count _house_arr)}do
                         {_house_ctrl = (selectRandom _house_arr);_ctrl_num = _ctrl_num + 1;sleep 0.01;};
                          _house_ctrl_arr pushBack _house_ctrl;_spawn_at_pos = [_house_ctrl];_set_in_house = true;
                        };
          case "HOUSE_TOP":{_ctrl_num = 0;
                            If(_everyhouse)then
                            { _ctrl_num = ((count _house_arr) - 1);
                              for "_gethouse" from 0 to _ctrl_num do
                              {If(!(_house_arr select _gethouse) In _house_ctrl_arr)then
                              {_house_ctrl_arr pushBack (_house_arr select _gethouse);_ctrl_num = _gethouse;};sleep 0.01;};
                              _house_lvl = [(_house_arr select _gethouse),"LEVELS"] call FNC_SMC(spawnhelp,checkHousePos);
                              _spawn_at_pos = (_house_lvl select ((count _house_lvl) - 1));
                              _house_spawn = _spawn_at_pos;
                            }else{ _house_ctrl = (selectRandom _house_arr);
                                   while{_house_ctrl In _house_ctrl_arr && _ctrl_num < (count _house_arr)}do
                                   {_house_ctrl = (selectRandom _house_arr);_ctrl_num = _ctrl_num + 1;sleep 0.01;};
                                   _house_lvl = [_house_ctrl,"LEVELS"] call FNC_SMC(spawnhelp,checkHousePos);
                                   _spawn_at_pos = (_house_lvl select ((count _house_lvl) - 1));
                                   _house_spawn = _spawn_at_pos;
                                 };
                            _set_in_house = true;
                           };
        };
        If(count _spawn_at_pos > 0)then
        {
          _grp = createGroup GRAD_ENEMY_SIDE;
          for "_unit_crea" from 0 to ((count _group_classes) - 1) do
          {
            switch(_x)do
            {
              case "HOUSE":{_spawn_pos_holder = [(_spawn_at_pos select 0),"ALL"] call FNC_SMC(spawnhelp,checkHousePos);
                            _spawn_at_pos = (selectRandom _spawn_pos_holder);
                           };
              case "HOUSE_TOP":{
                                 _spawn_at_pos = (selectRandom _house_spawn);
                               };
            };
            _unit = _grp createUnit [(_group_classes select _unit_crea), _spawn_at_pos, [], 1,"CAN_COLLIDE"];
            _unit_counter = _unit_counter + 1;
            If(_set_in_house)then{_unit setPosATL _spawn_at_pos;_unit moveTo _spawn_at_pos;_unit allowFleeing 0;
                                  If(!isMultiplayer)then{[_spawn_at_pos,0] call FNC_SMC(spawnhelp,setDebugMarker);};};
            sleep 0.04;
          };
          If(!_set_in_house)then
          {
            _grp enableAttack true;
		        _grp enableGunLights "AUTO";
            If(_x == "BORDER")then{
             [_grp,_spawn_pos] call FNC_BIS(taskAttack);
             _behaviour_idx = "AWARE";
            }else{[_grp,_spawn_pos,(round(_radius * 0.5))] call FNC_BIS(taskPatrol);};
          };
          _grp setBehaviour _behaviour_idx;
	        _grp setCombatMode _combat_idx;
          [_grp] call FNC_SMC(system,setUnitSkill);
          _grp_arr pushBack _grp;

        };
      };
    };

   }forEach _work_arr;
  };
  If(count _grp_arr > 0)then
  {_output = _grp_arr;
   ["GROUPS",_main_pos,_grp_arr,_unit_counter] call FNC_SMC(system,addToSystem);
   If(hasInterface || isDedicated)then{[_unit_counter] call FNC_SMC(hc,statusHClients);};
  };
};
_output

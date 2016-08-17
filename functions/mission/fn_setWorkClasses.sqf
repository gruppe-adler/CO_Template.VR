If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_mission_fnc_setWorkClasses

Description: Set Variables with Unit-,Vehicle Classnames etc.

Parameters: [paramsArray_idx]


Returns: Bool

Examples:
            _classes_available = [0] call GRAD_mission_fnc_setWorkClasses;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_faction","_civ_faction","_faction_classes","_strsintxt","_weapon_arr","_x","_men_trans","_chk_weapmag",
         "_turrets","_mag_count","_mag_con","_cl","_i","_ct","_config_mag","_random_class","_magazines","_mag_rounds"];
params ["_idx"];

_output = true;
_faction = "";
_civ_faction = "";
_special_search = false;

//Available Global Variables___________________________________________________________________________________________
GRAD_MEN = [];
GRAD_MENURBAN = [];
GRAD_SFMEN = [];
GRAD_SNIPER = [];
GRAD_DIVER = [];
GRAD_PILOT = [];
GRAD_PARACHUT = [];
GRAD_TANKS = [];
GRAD_ARTILLERY = [];
GRAD_CARS = [];
GRAD_TRANSPORT = [];
GRAD_APC = [];
GRAD_BOATS = [];
GRAD_DRONES = [];
GRAD_ANTIAIR = [];
GRAD_TRANSHELI = [];
GRAD_AIRFORCE = [];
GRAD_STATICWEAPONS = [];
GRAD_CIVMEN = [];
GRAD_CIVCAR = [];
GRAD_OWN_SIDE = WEST;
GRAD_ENEMY_SIDE = EAST;
GRAD_C4_CLASSES = [
                   "FuelExplosionBig","DemoCharge_Remote_Ammo","SatchelCharge_Remote_Ammo","SatchelCharge_Remote_Ammo_Scripted",
                   "DemoCharge_Remote_Ammo_Scripted","rhsusf_m112_ammo","rhsusf_m112x4_ammo"
                  ];
//DONT TOUCH THIS______________________________________________________________________________________________________

GRAD_EMYTR_SIDE = GRAD_ENEMY_SIDE;
switch(true)do
{
  case (GRAD_ENEMY_SIDE == resistance):{GRAD_EMYTR_SIDE = GUER;};
  case (GRAD_ENEMY_SIDE == independent):{GRAD_EMYTR_SIDE = GUER;};
};
GRAD_FRLYTR_SIDE = GRAD_OWN_SIDE;
switch(true)do
{
  case (GRAD_OWN_SIDE == resistance):{GRAD_FRLYTR_SIDE = GUER;};
  case (GRAD_OWN_SIDE == independent):{GRAD_FRLYTR_SIDE = GUER;};
};

//_____________________________________________________________________________________________________________________
switch(_idx)do
{
  case 0:{_faction = "OPF_F";_civ_faction = "CIV_F";};
  case 1:{_faction = "COREV_CDF";_civ_faction = "COREV_CDFCiv";_special_search = true;};
  case 2:{_faction = "rhs_faction_vdv";_civ_faction = "rds_rus_civ";};
  case 3:{_faction = "rhs_faction_vv";_civ_faction = "rds_rus_civ";};
  case 4:{_faction = "OPF_G_F";_civ_faction = "rds_rus_civ";};
  case 5:{_faction = "COREV_CDFLocal";_civ_faction = "COREV_CDFCiv";_special_search = true;};
  case 6:{_faction = "COREV_TKArmy";_special_search = true;};
  case 7:{_faction = "COREV_TKLocal";_special_search = true;};
  case 8:{_faction = "COREV_TME";_special_search = true;};
  case 9:{_faction = "COREV_AFArmy";_civ_faction = "CIV_F";_special_search = true;};
  case 10:{_faction = "COREV_AFG";_civ_faction = "CIV_F";_special_search = true;};
  case 11:{_faction = "COREV_PirateAf";_civ_faction = "CIV_F";_special_search = true;};
  default {_output = false;};
};
If(_output)then
{
   _config_path = (configFile >> "CfgVehicles");
   _faction_classes = [_faction] call FNC_SMC(conview,getFactionClasses);
   If(count _faction_classes > 0)then
   {
     for "_cl" from 0 to ((count _faction_classes) - 1) do
     {
        _boxed_classes = (_faction_classes select _cl);
        //hint format ["%1",_boxed_classes];
        switch(_boxed_classes select 0)do
        {
          case "men_normal":{
                             {
                               If(_special_search)then
                               {
                                 switch(true)do
                                 {
                                   case (["Crew",_x,true] call FNC_BIS(inString)):{GRAD_PILOT pushBack _x;};
                                   case (["Pilot",_x,true] call FNC_BIS(inString)):{GRAD_PILOT pushBack _x;};
                                   case (["Marksman",_x,true] call FNC_BIS(inString)):{GRAD_SNIPER pushBack _x;};
                                   default {GRAD_MEN pushBack _x;};
                                 };
                               }else{
                                       _strsintxt = getText (_config_path >> _x >> "textSingular");
                                       _weapon_arr = getArray (_config_path >> _x >> "weapons");
                                       switch(_strsintxt)do
                                       {
                                         case (localize "STR_FUNC_SNIPER"):{If(count _weapon_arr > 2)then{GRAD_SNIPER pushBack _x;};};
                                         case (localize "STR_FUNC_INF"):{
                                                                          If(count _weapon_arr > 2)then
                                                                          {
                                                                            If(getText (_config_path >> _x >> "backpack") == "B_Parachute")then
                                                                            {
                                                                              GRAD_PARACHUT pushBack _x;
                                                                            }else{
                                                                                    GRAD_MEN  pushBack _x;
                                                                                 };
                                                                          };
                                                                        };
                                          case (localize "STR_FUNC_PILOT"):{If(count _weapon_arr > 2)then{GRAD_PILOT pushBack _x;};};
                                       };
                                    };
                              }forEach (_boxed_classes select 1);
                            };
          case "men_urban":{
                             {
                               _strsintxt = getText (_config_path >> _x >> "textSingular");
                               _weapon_arr = getArray (_config_path >> _x >> "weapons");
                               switch(_strsintxt)do
                               {
                                 case (localize "STR_FUNC_SNIPER"):{If(count _weapon_arr > 2)then{GRAD_SNIPER pushBack _x;};};
                                 case (localize "STR_FUNC_INF"):{
                                                                  If(count _weapon_arr > 2)then
                                                                  {
                                                                    If(getText (_config_path >> _x >> "backpack") == "B_Parachute")then
                                                                    {
                                                                      GRAD_PARACHUT pushBack _x;
                                                                    }else{
                                                                          GRAD_MENURBAN pushBack _x;
                                                                         };
                                                                  };
                                                                };
                                 case (localize "STR_FUNC_PILOT"):{If(count _weapon_arr > 2)then{GRAD_PILOT pushBack _x;};};
                               };
                             }forEach (_boxed_classes select 1);
                           };
          case "men_specops":{
                               {
                                 _strsintxt = getText (_config_path >> _x >> "textSingular");
                                 _weapon_arr = getArray (_config_path >> _x >> "weapons");
                                 switch(_strsintxt)do
                                 {
                                   case (localize "STR_FUNC_DIVER"):{If(count _weapon_arr > 2)then{GRAD_DIVER pushBack _x;};};
                                   default {If(count _weapon_arr > 2)then{GRAD_SFMEN pushBack _x;};};
                                 };
                               }forEach (_boxed_classes select 1);
                             };
          case "cars":{
                        {
                           _chk_weapmag = false;
                           _mag_count = 0;
                           _strsintxt = getText (_config_path >> _x >> "textSingular");
                           _men_trans = [_x,true] call FNC_BIS(crewCount);
                           _turrets = (configFile >> "CfgVehicles" >> _x >> "Turrets");

                           switch(_strsintxt)do
                           {
                             case (localize "STR_FUNC_TRUCK"):{If(_men_trans > 10)then{GRAD_TRANSPORT pushBack _x;};};
                             case (localize "STR_FUNC_CAR"):{If(count _turrets > 0)then{_chk_weapmag = true;};};
                             case (localize "STR_FUNC_MRAP"):{If(count _turrets > 0)then{_chk_weapmag = true;};};
                           };
                           If(_chk_weapmag)then
                           {
                             for "_i" from 0 to ((count _turrets) - 1) do
                             {
                               _mag_con = (configFile >> "CfgVehicles" >> _x >> "Turrets") select _i;
                               If(count (getArray (_mag_con >> "magazines")) > 0)then{_mag_count = _mag_count + 1;};
                             };
                             If(_mag_count > 0)then{GRAD_CARS pushBack _x};
                           };

                        }forEach (_boxed_classes select 1);
                      };
          case "artillery":{GRAD_ARTILLERY = (_boxed_classes select 1);};
          case "boats":{GRAD_BOATS = (_boxed_classes select 1);};
          case "drones":{GRAD_DRONES = (_boxed_classes select 1);};
          case "anti_air":{GRAD_ANTIAIR = (_boxed_classes select 1);};
          case "planes":{GRAD_AIRFORCE append (_boxed_classes select 1);};
          case "turrets":{GRAD_STATICWEAPONS = (_boxed_classes select 1);};
          case "helicopters":{
                               {
                                 _men_trans = [_x,true] call FNC_BIS(crewCount);
                                 _weapon_arr = getArray (_config_path >> _x >> "weapons");
                                 switch(true)do
                                 {
                                   case (_men_trans > 8 && count _weapon_arr < 2):{GRAD_TRANSHELI pushBack _x;};
                                   case (_men_trans <= 8 && count _weapon_arr > 1):{GRAD_AIRFORCE pushBack _x;};
                                 };
                               }forEach (_boxed_classes select 1);
                             };
          case "tanks":{GRAD_TANKS = (_boxed_classes select 1);};
          case "apc":{GRAD_APC = (_boxed_classes select 1);};
        };
      sleep 0.02;
     };
     If(count GRAD_TRANSHELI > 0 && count GRAD_PARACHUT == 0)then
     {
       If(count GRAD_MEN > 0)then
       {
         _config_mag = (configFile >> "CfgMagazines");
         _ct = 0;
         _random_class = selectRandom GRAD_MEN;
         _magazines = getArray (_config_path >> _random_class >> "magazines");
         If(count _magazines > 0)then
         {
           _mag_rounds = getNumber (_config_mag >> (_magazines select 0) >> "count");
           If(_mag_rounds > 20 && _mag_rounds < 50)then{GRAD_PARACHUT pushBack _random_class;};
         };
         while{count GRAD_PARACHUT == 0 && _ct < (count GRAD_MEN)}do
         {
           _random_class = selectRandom GRAD_MEN;
           _magazines = getArray (_config_path >> _random_class >> "magazines");
           If(count _magazines > 0)then
           {
             _mag_rounds = getNumber (_config_mag >> (_magazines select 0) >> "count");
             If(_mag_rounds > 20 && _mag_rounds < 50)then{GRAD_PARACHUT pushBack _random_class;};
           };
           _ct = _ct + 1;
           sleep 0.02;
         };
       };
     };
   };
   If(_civ_faction != "")then
   {
     _faction_classes = [_civ_faction] call FNC_SMC(conview,getFactionClasses);
     If(count _faction_classes > 0)then
     {
       {
         switch(_x select 0)do
         {
           case "men_normal":{GRAD_CIVMEN append (_x select 1);};
           case "cars":{GRAD_CIVCAR = (_x select 1);};
           case "men_african":{GRAD_CIVMEN append (_x select 1);};
           case "men_asien":{GRAD_CIVMEN append (_x select 1);};
           case "men_europe":{GRAD_CIVMEN append (_x select 1);};
         };
       }forEach _faction_classes;
     };
   };
   If(isDedicated)then{missionNamespace setVariable [VAR_SMC(c4,explosives),GRAD_C4_CLASSES,true];};
};
_output

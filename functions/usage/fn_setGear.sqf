If(!local player) exitWith {};
#include "script_component.hpp"


/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_setGear

Description: Set Gear to Player!

Parameters: [Classname,(Optional: true/false)]

           Classname - Support Classnames from Backpack, Vest & Uniform
           Optional - true : save the old Gear / default: false
                      save it in:
                                  Array = player getVariable "grad_old_uniform"
                                  Array = player getVariable "grad_old_vest"
                                  Array = player getVariable "grad_old_backpack"

Returns: BOOL

Examples:
          _setGear = ["ARC_GER_Backpack_Carryall_Tropentarn"] call GRAD_usage_fnc_setGear;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_config","_gear","_gear_name","_items","_mags","_weap","_idx","_item_arr","_chk_layout","_x","_bool","_uni_count","_back_count",
         "_vest_count","_w","_chk_class_weap","_chk_class_vec"];
params ["_classname","_save_it"];

If(isNil "_save_it")then{_save_it = false;};
_output = true;
_config = "";
_gear = "";
_gear_name = "";
_items = [];
_mags = [];
_weap = [];
_idx = 0;
_item_arr = [];
_chk_layout = false;
_chk_class_weap = false;
_chk_class_vec = false;
_uni_count = 0;
_back_count = 0;
_vest_count = 0;

/*
"HelmetBase"
"H_HelmetB"
"Uniform_Base"
"Vest_NoCamo_Base"
"Vest_Camo_Base"
*/
  switch(true)do
  {
    case (isClass (configFile >> "CfgWeapons" >> _classname)):{_config = (configFile >> "CfgWeapons");_chk_class_weap = true;};
    case (isClass (configFile >> "CfgVehicles" >> _classname)):{_config = (configFile >> "CfgVehicles");_chk_class_vec = true;};
    default {_output = false;};
  };
  switch(true) do
  {
    case (({_classname isKindOf [_x, _config]} count ["Bag_Base"]) > 0 && _chk_class_vec):{_gear = "BACKPACK";};
    case (({_classname isKindOf [_x, _config]} count ["Uniform_Base"]) > 0 && _chk_class_weap):{_gear = "UNIFORM";};
    case (({_classname isKindOf [_x, _config]} count ["Vest_NoCamo_Base","Vest_Camo_Base"]) > 0 && _chk_class_weap):{_gear = "VEST";};
    /*
    case "EdSubcat_Uniforms":{_gear = "UNIFORM";};
    case "EdSubcat_Vests":{_gear = "VEST";};
    case "EdSubcat_Backpacks":{_gear = "BACKPACK";};
    */
  };
  //hint format ["%1",_gear];
  switch(_gear)do
  {
    case "UNIFORM":{
                     If((uniform player) != "")then
                     {
                       _item_arr = (uniformItems player);
                       _idx = 1;_chk_layout = true;_gear_name = (uniform player);
                       If(_save_it)then{player setVariable ["grad_old_uniform",[_gear_name],false];};
                     };
                   };
     case "VEST":{
                   If((vest player) != "")then
                   {
                     _item_arr = (vestItems player);
                     _idx = 2;_chk_layout = true;_gear_name = (vest player);
                     If(_save_it)then{player setVariable ["grad_old_vest",[_gear_name],false];};
                   };
                 };
     case "BACKPACK":{
                       If((backpack player) != "")then
                       {
                         _item_arr = (backpackItems player);
                         _idx = 3;_chk_layout = true;_gear_name = (backpack player);
                         If(_save_it)then{player setVariable ["grad_old_backpack",[_gear_name],false];};
                       };
                     };
  };
  If(_chk_layout)then
  {
    {
      switch(true)do
       {
         case (!(isClass (configFile >> "cfgMagazines" >> _x))):{_items pushBack _x;};
         case ((isClass (configFile >> "cfgMagazines" >> _x)) && (getNumber(configFile >> "cfgMagazines" >> _x >> "count") < 2)):{_mags pushBack _x;};
       };
    }forEach _item_arr;
    {
     if(!(_x select 2)) then
     {
        _bool = (getNumber(configFile >> "cfgMagazines" >> (_x select 0) >> "count") > 1);
        switch (true) do
        {
         case ((_x select 4) == "Vest" && ((_x select 3) != 0) && _bool && _idx == 2) : {_mags pushBack [(_x select 0),(_x select 1)];};
         case ((_x select 4) == "Uniform" && ((_x select 3) != 0) && _bool && _idx == 1)  : {_mags pushBack [(_x select 0),(_x select 1)];};
         case ((_x select 4) == "Backpack" && ((_x select 3) != 0) && _bool && _idx == 3) : {_mags pushBack [(_x select 0),(_x select 1)];};
        };
      };
    }foreach (magazinesAmmoFull player);
    switch(_gear)do
    {
      case "UNIFORM":{_weap = getWeaponCargo (uniformContainer player);};
      case "VEST":{_weap = getWeaponCargo (vestContainer player);};
      case "BACKPACK":{_weap = getWeaponCargo (unitBackpack player);};
    };
  };
  switch(_gear)do
  {
    case "UNIFORM":{player forceAddUniform _classname};
    case "VEST":{
                  If(_gear_name != "")then{removeVest player;};player addVest _classname;
                  If(!(player canAddItemToVest "itemWatch"))then{_chk_layout = false;};
                };
    case "BACKPACK":{If(_gear_name != "")then{removeBackpack player;};player addBackpackGlobal _classname;};
  };
  If(_chk_layout)then
  {
    switch(_gear)do
    {
      case "UNIFORM":{
                      If((backpack player) != "")then
                      {
                        while{player canAddItemToBackpack "itemWatch"}do
                        {
                          (backpackContainer player) addItemCargo ["itemWatch",1];
                          _back_count = _back_count + 1;
                          sleep 0.01;
                        };
                      };
                      If((vest player) != "")then
                      {
                        while{player canAddItemToVest "itemWatch"}do
                        {
                          (vestContainer player) addItemCargo ["itemWatch",1];
                          _vest_count = _vest_count + 1;
                          sleep 0.01;
                        };
                      };
                      If(count _items > 0)then{{player addItemToUniform _x;}forEach _items;};
                     };
      case "VEST":{
                    If((uniform player) != "")then
                    {
                      while{player canAddItemToUniform "itemWatch"}do
                      {
                        (uniformContainer player) addItemCargo ["itemWatch",1];
                        _uni_count = _uni_count + 1;
                        sleep 0.01;
                      };
                    };
                    If((backpack player) != "")then
                    {
                      while{player canAddItemToBackpack "itemWatch"}do
                      {
                        (backpackContainer player) addItemCargo ["itemWatch",1];
                        _back_count = _back_count + 1;
                        sleep 0.01;
                      };
                    };
                    If(count _items > 0)then{{player addItemToVest _x;}forEach _items;};
                  };
       case "BACKPACK":{
                         If((uniform player) != "")then
                         {
                           while{player canAddItemToUniform "itemWatch"}do
                           {
                             (uniformContainer player) addItemCargo ["itemWatch",1];
                             _uni_count = _uni_count + 1;
                             sleep 0.01;
                           };
                         };
                         If((vest player) != "")then
                         {
                           while{player canAddItemToVest "itemWatch"}do
                           {
                             (vestContainer player) addItemCargo ["itemWatch",1];
                             _vest_count = _vest_count + 1;
                             sleep 0.01;
                           };
                         };
                         If(count _items > 0)then{{player addItemToBackpack _x;}forEach _items;};
                       };
    };
    If(count _mags > 0)then{{player addMagazine _x;}forEach _mags;};
    If(count (_weap select 0) > 0)then{
                                        for "_w" from 0 to ((count (_weap select 0)) - 1) do
                                        {
                                          player addweaponCargoGlobal [((_weap select 0) select _w),((_weap select 1) select _w)];
                                        };
                                      };
    while{_uni_count > 0}do{player removeItemFromUniform "itemWatch";_uni_count = _uni_count - 1;};
    while{_vest_count > 0}do{player removeItemFromVest "itemWatch";_vest_count = _vest_count - 1;};
    while{_back_count > 0}do{player removeItemFromBackpack "itemWatch";_back_count = _back_count - 1;};
  };


_output

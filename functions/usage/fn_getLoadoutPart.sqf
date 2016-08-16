If(!local player) exitWith {};
#include "script_component.hpp"


/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_getLoadoutPart

Description: Get the Part of Players Loadout!

Parameters: ["PART"]

           "Part" - can be "VEST","BACKPACK","UNIFORM"

Returns: BOOL

Examples:
          _getLoadout = ["BACKPACK"] call GRAD_usage_fnc_getLoadoutPart;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_holder","_items","_item_holder","_mags","_mag_holder","_weap","_weap_holder","_getpart","_item_arr","_idx","_bool","_chk_arr"];
params ["_part","_loadout"];

If(isNil "_loadout")then{_loadout = false;};
_output = true;
_holder = [0,[]];
_items = ["ITEMS",[]];
_item_holder = [];
_mags = ["MAG",[]];
_mag_holder = [];
_weap = ["WEAP",[]];
_weap_holder = [];
_getpart = "";
_item_arr = [];
_idx = 0;
_chk_arr = [];

switch(toUpper(_part))do
{
  case "UNIFORM":{_getpart = uniform player;};
  case "VEST":{_getpart = vest player;};
  case "BACKPACK":{_getpart = backpack player;};
};

If(_getpart != "")then
{
     _holder set[0,_getpart];   
     switch(toUpper(_part))do
     {
       case "UNIFORM":{_item_arr = (uniformItems player);_idx = 1;};
       case "VEST":{_item_arr = (vestItems player);_idx = 2;};
       case "BACKPACK":{_item_arr = (backpackItems player);_idx = 3;};
     };
     {
       switch(true)do
        {
          case (!(isClass (configFile >> "cfgMagazines" >> _x))):{_item_holder pushBack _x;};
          case ((isClass (configFile >> "cfgMagazines" >> _x)) && (getNumber(configFile >> "cfgMagazines" >> _x >> "count") < 2)):{_mag_holder pushBack _x;};
        };
     }forEach _item_arr;
     {
   		if(!(_x select 2)) then
   		{
         _bool = (getNumber(configFile >> "cfgMagazines" >> (_x select 0) >> "count") > 1);
   		 	 switch (true) do
   			 {
   				case ((_x select 4) == "Vest" && ((_x select 3) != 0) && _bool && _idx == 2) : {_mag_holder pushBack [(_x select 0),(_x select 1)];};
   				case ((_x select 4) == "Uniform" && ((_x select 3) != 0) && _bool && _idx == 1)  : {_mag_holder pushBack [(_x select 0),(_x select 1)];};
   				case ((_x select 4) == "Backpack" && ((_x select 3) != 0) && _bool && _idx == 3) : {_mag_holder pushBack [(_x select 0),(_x select 1)];};
   			 };
   		 };
     }foreach (magazinesAmmoFull player);
     switch(toUpper(_part))do
     {
       case "UNIFORM":{_weap_holder = getWeaponCargo (uniformContainer player);};
       case "VEST":{_weap_holder = getWeaponCargo (vestContainer player);};
       case "BACKPACK":{_weap_holder = getWeaponCargo (unitBackpack player);};
     };
     If(count _item_holder > 0)then{_items set[1,_item_holder];_chk_arr pushBack _items;};
     If(count _mag_holder > 0)then{_mags set[1,_mag_holder];_chk_arr pushBack _mags;};
     If(count (_weap_holder select 0) > 0)then{_weap set[1,_weap_holder];_chk_arr pushBack _weap;};
     If(count _chk_arr > 0)then{_holder set[1,_chk_arr];};

   switch(toUpper(_part))do
   {
     case "UNIFORM":{player setVariable["grad_uniform_load",_holder,false];};
     case "VEST":{player setVariable["grad_vest_load",_holder,false];};
     case "BACKPACK":{player setVariable["grad_backpack_load",_holder,false];};
   };
}else{_output = false;};
_output

If(!local player) exitWith {};
#include "script_component.hpp"


/* -----------------------------------------------------------------------------------------------
Function: GRAD_usage_fnc_setLoadoutPart

Description: Set the saved Part of Players Loadout!

Parameters: ["PART"]

           "Part" - can be "VEST","BACKPACK","UNIFORM"

Returns: BOOL

Examples:
          _setLoadout = ["BACKPACK"] call GRAD_usage_fnc_setLoadoutPart;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_work","_cargo","_uni_count","_vest_count","_back_count","_equip","_i","_sel_equip","_sel_equip_arr","_w"];
params ["_part"];

_output = true;
_work = false;
_cargo = [];
_uni_count = 0;
_vest_count = 0;
_back_count = 0;

switch(toUpper(_part))do
{
  case "UNIFORM":{
                  If(isNil {player getVariable "grad_uniform_load"}) exitWith {};
                  If(count (player getVariable "grad_uniform_load") > 0)then
                  {_cargo = (player getVariable "grad_uniform_load");
                   _work = true;
                   player setVariable["grad_uniform_load",[],false];
                  };
                };
  case "VEST":{If(isNil {player getVariable "grad_vest_load"}) exitWith {};
               If(count (player getVariable "grad_vest_load") > 0)then
               {_cargo = (player getVariable "grad_vest_load");
                _work = true;
                player setVariable["grad_vest_load",[],false];
               };
              };
  case "BACKPACK":{If(isNil {player getVariable "grad_backpack_load"}) exitWith {};
                   If(count (player getVariable "grad_backpack_load") > 0)then
                   {_cargo = (player getVariable "grad_backpack_load");
                    _work = true;
                    player setVariable["grad_backpack_load",[],false];
                   };
                  };
};

If(_work)then
{
  switch(toUpper(_part))do
  {
    case "UNIFORM":{
                    player forceAddUniform (_cargo select 0);
                    If(count (_cargo select 1) > 0)then
                    {
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
                    };
                   };
    case "VEST":{
                  player addVest (_cargo select 0);
                  If(count (_cargo select 1) > 0)then
                  {
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
                  };
                };
    case "BACKPACK":{
                      removeBackpackGlobal player;
                      player addBackpackGlobal (_cargo select 0);
                      If(count (_cargo select 1) > 0)then
                      {
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
                      };
                    };
  };
  If(count (_cargo select 1) > 0)then
  {
     _equip = (_cargo select 1);
     for "_i" from 0 to ((count _equip) - 1) do
     {
       _sel_equip = (_equip select _i);
       switch(_sel_equip select 0)do
       {
         case "ITEMS":{
                        _sel_equip_arr = (_sel_equip select 1);
                        If(count _sel_equip_arr > 0)then
                        {
                          switch(toUpper(_part))do
                          {
                            case "UNIFORM":{{player addItemToUniform _x;}forEach _sel_equip_arr;};
                            case "VEST":{{player addItemToVest _x;}forEach _sel_equip_arr;};
                            case "BACKPACK":{{player addItemToBackpack _x;}forEach _sel_equip_arr;};
                          };
                        };
                      };
         case "MAG":{
                      _sel_equip_arr = (_sel_equip select 1);
                      {player addMagazine _x;}forEach _sel_equip_arr;
                    };
         case "WEAP":{
                       _sel_equip_arr = (_sel_equip select 1);
                       If(count (_sel_equip_arr select 0) > 0)then
                       {
                         for "_w" from 0 to ((count (_sel_equip_arr select 0)) - 1) do
                         {
                           player addweaponCargoGlobal [((_sel_equip_arr select 0) select _w),((_sel_equip_arr select 1) select _w)];
                         };
                       };
                     };
       };
       sleep 0.01;
     };
  };
  while{_uni_count > 0}do{player removeItemFromUniform "itemWatch";_uni_count = _uni_count - 1;};
  while{_vest_count > 0}do{player removeItemFromVest "itemWatch";_vest_count = _vest_count - 1;};
  while{_back_count > 0}do{player removeItemFromBackpack "itemWatch";_back_count = _back_count - 1;};
}else{_output = false;};
_output

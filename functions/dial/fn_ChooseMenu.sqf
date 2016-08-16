If(!hasInterface) exitWith {};
#include "script_component.hpp"


//Function for Choose Menu in the Begin of Mission

private ["_noth_info"];
params ["_idx"];
disableSerialization;

switch(_idx)do
{
  case 0:{
           ctrlSetText [52685, (localize "STR_DLG_CHOOSEMENUE_DIVING")];
           _noth_info = player getVariable ["grad_choose_usage",["NOTHING",2,false]];
           If(_noth_info select 2)then
           {
             player setVariable ["grad_choose_usage",["DIVER",(_noth_info select 1),true],false];
           }else{
                  player setVariable ["grad_choose_usage",["DIVER",0,false],false];
                };
         };
  case 1:{
            ctrlSetText [52685, (localize "STR_DLG_CHOOSEMENUE_PARA")];
            _noth_info = player getVariable ["grad_choose_usage",["NOTHING",2,false]];
            If(_noth_info select 2)then
            {
              player setVariable ["grad_choose_usage",["PARA",(_noth_info select 1),true],false];
            }else{
                   player setVariable ["grad_choose_usage",["PARA",1,false],false];
                 };
         };
  case 2:{
           ctrlSetText [52685, (localize "STR_DLG_CHOOSEMENUE_NOTH")];
           _noth_info = player getVariable ["grad_choose_usage",["NOTHING",2,false]];
           If(_noth_info select 2)then
           {
             player setVariable ["grad_choose_usage",["NOTHING",(_noth_info select 1),true],false];
           }else{
                  player setVariable ["grad_choose_usage",["NOTHING",2,false], false];
                };
         };
  case 3:{
            _noth_info = player getVariable ["grad_choose_usage",["NOTHING",2,false]];
            If(_noth_info select 2)then
            {
                switch(_noth_info select 1)do
                {
                  case 0:{
                           ["VEST"] call FNC_SMC(usage,setLoadoutPart);
                           [((player getVariable "grad_old_uniform") select 0)] call FNC_SMC(usage,setGear);
                           If(count (player getVariable ["grad_old_goggles",[]]) > 0)then
                           {
                             player addGoggles ((player getVariable "grad_old_goggles") select 0);
                             player setVariable ["grad_old_goggles",[],false];
                           }else{removeGoggles player;};
                         };
                  case 1:{
                           ["BACKPACK"] call FNC_SMC(usage,setLoadoutPart);
                         };
                };
                switch(_noth_info select 0)do
                {
                  case "DIVER":{
                                 ["VEST"] call FNC_SMC(usage,getLoadoutPart);
                                 player addVest "V_RebreatherB";
                                 ["U_B_Wetsuit",true] call FNC_SMC(usage,setGear);
                                 If(goggles player != "")then
                                 {
                                   player setVariable ["grad_old_goggles",[(goggles player)],false];
                                 };
                                 player addGoggles "G_Diving";
                                 player setVariable ["grad_choose_usage",["DIVER",0,true],false];
                               };
                   case "PARA":{
                                 ["BACKPACK"] call FNC_SMC(usage,getLoadoutPart);
                                 player addBackpack "B_Parachute";
                                 player setVariable ["grad_choose_usage",["PARA",1,true],false];
                               };
                   case "NOTHING":{player setVariable ["grad_choose_usage",["NOTHING",2,true], false];};
                };
            }else{
                   switch(_noth_info select 0)do
                   {
                     case "DIVER":{
                                    ["VEST"] call FNC_SMC(usage,getLoadoutPart);
                                    player addVest "V_RebreatherB";
                                    ["U_B_Wetsuit",true] call FNC_SMC(usage,setGear);
                                    If(goggles player != "")then
                                    {
                                      player setVariable ["grad_old_goggles",[(goggles player)],false];
                                    };
                                    player addGoggles "G_Diving";
                                    player setVariable ["grad_choose_usage",["DIVER",0,true],false];
                                  };
                      case "PARA":{
                                    ["BACKPACK"] call FNC_SMC(usage,getLoadoutPart);
                                    player addBackpack "B_Parachute";
                                    player setVariable ["grad_choose_usage",["PARA",1,true],false];
                                  };
                      case "NOTHING":{player setVariable ["grad_choose_usage",["NOTHING",2,true], false];};
                   };
                 };
            closeDialog 0;
         };
};

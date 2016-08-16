If(!hasInterface) exitWith {};
#include "script_component.hpp"

//Function to get and set Informations about SatPhone
private ["_idx","_ring_count"];
params["_insertion"];

_idx = -1;

switch(true)do
{
  case (typeName _insertion == "STRING"):{_idx = 0;};
  case (typeName _insertion == "SCALAR"):{_idx = _insertion;};
};

switch(_idx)do
{
  case 0:{
           If(player getVariable "grad_phone_open")then
           {
             [2] spawn GRAD_dial_fnc_getSatPhoneData;
             waitUntil{!(player getVariable "grad_phone_open")};
             sleep 2;
           };
           If(isLocalized _insertion)then
           {
             missionNamespace setVariable ["grad_mission_text",(localize _insertion),false];
           }else{
                  missionNamespace setVariable ["grad_mission_text",_insertion,false];
                };
           player setVariable ["grad_show_phoneinfo",true,false];
           _ring_count = 0;
           while{(player getVariable "grad_show_phoneinfo")}do
           {
             If(!(player getVariable ["ACE_isUnconscious", false]) && alive player)then
             {
               If(_ring_count < 4)then{playSound "PhoneSound";_ring_count = _ring_count + 1;};
               cutRsc ["PhoneInfo", "PLAIN"];
             };
             sleep 3.2;
           };
         };
   case 1:{
            If(player getVariable ["grad_show_phoneinfo",false])then{player setVariable ["grad_show_phoneinfo",false,false];};
            missionNamespace setVariable ["grad_phone_duration",2,false];
            missionNamespace setVariable ["grad_phone_dsp",[(1.0 * safezoneW + safezoneX),(1.075187 * safezoneW + safezoneX),0.2],false];
            player setVariable ["grad_satphone_ctrl",0,false];
            cutRsc ["ShowPhone", "PLAIN"];
            [1] call FNC_SMC(client,setClientAction);
          };
   case 2:{
            [(format["%1_satphone",name player]),"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
            missionNamespace setVariable ["grad_phone_duration",2,false];
            missionNamespace setVariable ["grad_phone_dsp",[(0.7445 * safezoneW + safezoneX),(0.819687 * safezoneW + safezoneX),0.2],false];
            player setVariable ["grad_satphone_ctrl",2,false];
            cutRsc ["ShowPhone", "PLAIN"];
            [0] call FNC_SMC(client,setClientAction);
          };
};

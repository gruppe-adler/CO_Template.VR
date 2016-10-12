If(!hasInterface) exitWith {};
#include "script_component.hpp"

//Function to get and set Informations about SatPhone
private ["_idx","_ring_count","_type","_txt_holder"];
params["_insertion"];

If(missionNamespace getVariable [VAR_SMA(allowed_informations),false])then
{
_idx = -1;

switch(true)do
{
  case (typeName _insertion == "STRING"):{_idx = 0;_type = "STRING";};
  case (typeName _insertion == "SCALAR"):{_idx = _insertion;};
  case (typeName _insertion == "ARRAY"):{_idx = 0;_type = "ARRAY";};
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
           switch(_type)do
           {
             case "STRING":{
                            If(isLocalized _insertion)then
                            {
                              missionNamespace setVariable ["grad_mission_text",(localize _insertion),false];
                            }else{
                                    missionNamespace setVariable ["grad_mission_text",_insertion,false];
                                 };
                           };
             case "ARRAY":{
                            If(count _insertion < 2 || !isLocalized (_insertion select 0))exitWith {LOG_ERR("Check choice for Showing Text in SatPhone!");};
                            _txt_holder = "";
                            If(isLocalized (_insertion select 1))then{_txt_holder = (localize (_insertion select 1));}else{_txt_holder = (_insertion select 1);};
                            missionNamespace setVariable ["grad_mission_text",(format [(localize (_insertion select 0)),_txt_holder]),false];
                          };
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
};

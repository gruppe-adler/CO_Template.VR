//Function to move Phone from right Border into Screen

private ["_display","_idc_phone","_idc_text","_ctrl_phone","_ctrl_text"];
disableSerialization;
_display = _this select 0;

_idc_phone = 48445;
_idc_text = 48446;
_ctrl_phone = _display displayCtrl _idc_phone;
_ctrl_text = _display displayCtrl _idc_text;

switch(player getVariable "grad_satphone_ctrl")do
{
  case 0:{

          _ctrl_phone ctrlSetPosition [(0.7445 * safezoneW + safezoneX),(0.313 * safezoneH + safezoneY)];
          _ctrl_text ctrlSetPosition [(0.819687 * safezoneW + safezoneX), (0.401 * safezoneH + safezoneY)];
          _ctrl_text ctrlSetText (missionNamespace getVariable ["grad_mission_text",(localize "STR_Mission_txt1")]);
          _ctrl_phone ctrlCommit ((missionNamespace getVariable "grad_phone_dsp") select 2);
          _ctrl_text ctrlCommit((missionNamespace getVariable "grad_phone_dsp") select 2);
          player setVariable ["grad_satphone_ctrl",1,false];
          missionNamespace setVariable ["grad_phone_duration",0.1,false];
          sleep 1;
          missionNamespace setVariable ["grad_phone_dsp",[(0.7445 * safezoneW + safezoneX),(0.819687 * safezoneW + safezoneX),0],false];
          [(format["%1_satphone",name player]),"onEachFrame",{cutRsc ["ShowPhone", "PLAIN"]}] call BIS_fnc_addStackedEventHandler;
          player setVariable ["grad_phone_open",true,false];
         };
  case 1:{
          _ctrl_text ctrlSetText (missionNamespace getVariable ["grad_mission_text",(localize "STR_Mission_txt1")]);
          If((player getVariable ["ACE_isUnconscious", false]) || !alive player)then
          {
           [(format["%1_satphone",name player]),"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
           player setVariable ["grad_phone_open",false,false];
           switch(true)do
           {
             case (player getVariable "ACE_isUnconscious"):{[0] call GRAD_client_fnc_setClientAction;};
             case (!alive player):{waitUntil{alive player};[0] call GRAD_client_fnc_setClientAction;};
           };
          };
         };
  case 2:{ _ctrl_text ctrlSetText (missionNamespace getVariable ["grad_mission_text",(localize "STR_Mission_txt1")]);
           sleep 1;
           _ctrl_phone ctrlSetPosition [(1.0 * safezoneW + safezoneX),(0.313 * safezoneH + safezoneY)];
           _ctrl_text ctrlSetPosition [(1.075187 * safezoneW + safezoneX), (0.401 * safezoneH + safezoneY)];
           _ctrl_text ctrlSetText "";
           _ctrl_phone ctrlCommit ((missionNamespace getVariable "grad_phone_dsp") select 2);
           _ctrl_text ctrlCommit ((missionNamespace getVariable "grad_phone_dsp") select 2);
           player setVariable ["grad_phone_open",false,false];
         };
};

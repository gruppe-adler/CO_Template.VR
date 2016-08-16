If(!hasInterface) exitWith {};
/* -----------------------------------------------------------------------------------------------
Function: GRAD_dial_fnc_ProBar

Description: Send SatPhone Information to Client!

Parameters: ["Text",TIME,1,1]

            STRING - The Text you want to show in Satphonedisplay
            TIME - Time in Seconds
            NUMBER - 0 : is filled the Progress Bar / 1 : clear the Progress Bar
            NUMBER - 0 : run from green to red / 1 : run from red to green

            for Stop the ProgressBar set "player setVariable ["grad_stop_pbar",true,false];"

            CLIENT ONLY!

Returns: BOOL

Examples:
          _test = [(localize "STR_Mission_txt2"),60,0,1] call GRAD_rsc_fnc_ProBar;

          waitUntil{(player getVariable "grad_result_pbar") != 0};

          switch(player getVariable "grad_result_pbar")do
          {
           case 1:{_mission = "SUCCESS";};
           case 2:{_mission = "FAILED";};
          };

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_stored_arr","_do_it","_time_stamp"];
player setVariable ["grad_stop_pbar",false,false];
player setVariable ["grad_result_pbar",0,false];
missionNamespace setVariable ["grad_pbar_duration",0.1,false];
missionNamespace setVariable ["grad_pbar_txt",(_this select 0),false];

_stored_arr = _this;

_do_it = {
          private ["_timer","_value_set","_bar_text","_bar_state"];

          _timer = time;

          If(!(player getVariable "grad_stop_pbar"))then
          {
            switch(true)do
            {
              case ((player getVariable ["ACE_isUnconscious", false]) || !alive player):{player setVariable ["grad_stop_pbar",false,false];};
              case (_timer >= (_this select 4)):{
                                                 player setVariable ["grad_result_pbar",1,false];
                                                 [(format["%1_pbar",name player]),"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
                                                };
              case (_timer < (_this select 4)):{

                                                _value_set = ((_timer - (_this select 5))/(_this select 1));


                                                switch(_this select 2)do
                                                {
                                                  case 0:{missionNamespace setVariable ["grad_pbar_state",_value_set,false];};
                                                  case 1:{missionNamespace setVariable ["grad_pbar_state",(1 - _value_set),false];};
                                                };
                                                switch(_this select 3)do
                                                {
                                                  case 0:{missionNamespace setVariable ["grad_pbar_cstate",[_value_set,(1 - _value_set), 0, 1],false];};
                                                  case 1:{missionNamespace setVariable ["grad_pbar_cstate",[(1 - _value_set),_value_set, 0, 1],false];};
                                                };
                                                cutRsc ["ProBar", "PLAIN"];
                                               };
            };
          }else{
                player setVariable ["grad_result_pbar",2,false];
                [(format["%1_pbar",name player]),"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
                missionNamespace setVariable ["grad_pbar_duration",3,false];
                missionNamespace setVariable ["grad_pbar_txt",(localize "STR_PBAR_CANCELED"),false];
                cutRsc ["ProBar", "PLAIN"];
               };

};
_time_stamp = (time);
_stored_arr append [(_time_stamp + (_this select 1)),(_time_stamp)];
[(format["%1_pbar",name player]),"onEachFrame",_do_it,_stored_arr] call BIS_fnc_addStackedEventHandler;

true

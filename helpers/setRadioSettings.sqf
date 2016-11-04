private ["_settings"];

//get settings
_settings = [] call GRAD_radiosettings_fnc_getUserSettings;
_freqs = [_settings] call GRAD_radiosettings_fnc_extractFrequencies;
_freqs params ["_shortRangeFreqs", "_longRangeFreqs"];

//set settings
_guerCode = if ([west, independent] call BIS_fnc_sideIsFriendly) then {"_bluefor"} else {"_guer"};
tf_freq_west = [0,7,_shortRangeFreqs,0,"_bluefor",-1,0,getplayerUID player,false];
tf_freq_east = [0,7,_shortRangeFreqs,0,"_opfor",-1,0,getplayerUID player,false];
tf_freq_guer = [0,7,_shortRangeFreqs,0,_guerCode,-1,0,getplayerUID player,false];
tf_freq_west_lr = [0,7,_longRangeFreqs,0,"_bluefor",-1,0,false];
tf_freq_east_lr = [0,7,_longRangeFreqs,0,"_opfor",-1,0,false];
tf_freq_guer_lr = [0,7,_longRangeFreqs,0,_guerCode,-1,0,false];

if (hasInterface) then {
    //activate settings
    _loadoutWaitCondition = if (isClass (missionConfigFile >> "CfgFunctions" >> "GRAD_loadout")) then {{player getVariable ["GRAD_loadout_applicationCount", 0] > 0}} else {true};
    [{player getvariable ["tf_handlers_set", false] && _this select 0}, {
        [{[] call GRAD_radiosettings_fnc_activateSettings}, [], 5] call CBA_fnc_waitAndExecute;
    }, [_loadoutWaitCondition]] call CBA_fnc_waitUntilAndExecute;
};

if (isServer) then {
    //create markers
    _channelNames = [_settings] call GRAD_radiosettings_fnc_extractChannelNames;
    [_channelNames] call GRAD_radiosettings_fnc_createChannelMarkers;
};

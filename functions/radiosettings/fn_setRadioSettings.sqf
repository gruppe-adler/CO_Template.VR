private ["_settings"];

_shortRangeFreqs = ["shortrange"] call GRAD_radiosettings_fnc_extractFrequencies;
_longRangeFreqs = ["longrange"] call GRAD_radiosettings_fnc_extractFrequencies;

if (count _shortRangeFreqs > 8) then {_shortRangeFreqs resize 8};
if (count _longRangeFreqs > 9) then {_longRangeFreqs resize 9};

_shortRangeFreqsStr = _shortRangeFreqs apply {str _x};
_longRangeFreqsStr = _longRangeFreqs apply {str _x};

//set settings
_guerCode = if ([west, independent] call BIS_fnc_sideIsFriendly) then {"_bluefor"} else {"_guer"};
tf_freq_west = [0,7,_shortRangeFreqsStr,0,"_bluefor",-1,0,getplayerUID player,false];
tf_freq_east = [0,7,_shortRangeFreqsStr,0,"_opfor",-1,0,getplayerUID player,false];
tf_freq_guer = [0,7,_shortRangeFreqsStr,0,_guerCode,-1,0,getplayerUID player,false];
tf_freq_west_lr = [0,7,_longRangeFreqsStr,0,"_bluefor",-1,0,false];
tf_freq_east_lr = [0,7,_longRangeFreqsStr,0,"_opfor",-1,0,false];
tf_freq_guer_lr = [0,7,_longRangeFreqsStr,0,_guerCode,-1,0,false];

if (hasInterface) then {
    systemChat "radiosettings: loaded";

    //activate settings
    _loadoutWaitCondition = if (isClass (missionConfigFile >> "CfgFunctions" >> "GRAD_loadout")) then {{player getVariable ["GRAD_loadout_applicationCount", 0] > 0}} else {true};

    [_loadoutWaitCondition, {
        if ((assignedItems player) select 3 == "") exitWith {systemChat "radiosettings: No radio in loadout. Exiting..."};

        [{count (((assignedItems player) select 3) splitString "_") > 2}, {
            [{[] call GRAD_radiosettings_fnc_activateSettings}, [], 1] call CBA_fnc_waitAndExecute;
        }, []] call CBA_fnc_waitUntilAndExecute;
    }, []] call CBA_fnc_waitUntilAndExecute;
};

if (isServer) then {
    //create markers
    _channelNames = [] call GRAD_radiosettings_fnc_extractChannelNames;
    [_channelNames] call GRAD_radiosettings_fnc_createChannelMarkers;
};

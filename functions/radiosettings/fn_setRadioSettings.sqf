private ["_settings"];

_shortRangeFreqs = ["shortrange"] call GRAD_radiosettings_fnc_extractFrequencies;
_longRangeFreqs = ["longrange"] call GRAD_radiosettings_fnc_extractFrequencies;

if (count _shortRangeFreqs > 8) then {_shortRangeFreqs resize 8};
if (count _longRangeFreqs > 9) then {_longRangeFreqs resize 9};

_shortRangeFreqsStr = _shortRangeFreqs apply {str _x};
_longRangeFreqsStr = _longRangeFreqs apply {str _x};

//set settings
_guerCode = switch (true) do {
    case ([west, independent] call BIS_fnc_sideIsFriendly): {"_bluefor"};
    case ([east, independent] call BIS_fnc_sideIsFriendly): {"_opfor"};
    default {"_guer"};
};

//default channel, volume, frequencies, ?, encryption, alt channel
tf_freq_west = [0,7,_shortRangeFreqsStr,0,"_bluefor",-1,0,getplayerUID player,false];
tf_freq_east = [0,7,_shortRangeFreqsStr,0,"_opfor",-1,0,getplayerUID player,false];
tf_freq_guer = [0,7,_shortRangeFreqsStr,0,_guerCode,-1,0,getplayerUID player,false];
tf_freq_west_lr = [0,7,_longRangeFreqsStr,0,"_bluefor",-1,0,false];
tf_freq_east_lr = [0,7,_longRangeFreqsStr,0,"_opfor",-1,0,false];
tf_freq_guer_lr = [0,7,_longRangeFreqsStr,0,_guerCode,-1,0,false];

if (isServer) then {
    //create markers
    _channelNames = [] call GRAD_radiosettings_fnc_extractChannelNames;
    [_channelNames] call GRAD_radiosettings_fnc_createChannelMarkers;
};

systemChat "radiosettings: loaded";

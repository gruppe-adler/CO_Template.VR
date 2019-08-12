#include "component.hpp"

params ["_group"];


private _callsign = [_group] call grad_groupsettings_fnc_getCallsign;
if (_callsign == "") exitWith {INFO("No settings for player group.")};

private _groupConfig = [_callsign,_group] call grad_groupsettings_fnc_getGroupConfig;
if (isNil "_groupConfig") exitWith {INFO("No settings for player group.")};


private _tfarSrSettings = switch (playerSide) do {
    case (WEST): {tf_freq_west};
    case (EAST): {tf_freq_east};
    case (INDEPENDENT): {tf_freq_guer};
    default {tf_freq_west};
};
private _tfarSrFreqs = _tfarSrSettings select 2;

private _tfarLrSettings = switch (playerSide) do {
    case (WEST): {tf_freq_west_lr};
    case (EAST): {tf_freq_east_lr};
    case (INDEPENDENT): {tf_freq_guer_lr};
    default {tf_freq_west_lr};
};
private _tfarLrFreqs = _tfarLrSettings select 2;


//SHORTRANGE SETTINGS
_srDefaultChannel = (([_groupConfig >> "shortrange","defaultChannel",1] call BIS_fnc_returnConfigEntry) - 1) max 0;
_srAltChannel = (([_groupConfig >> "shortrange","altChannel",0] call BIS_fnc_returnConfigEntry) - 1) max -1;
_srAltOnlyTL = ([_groupConfig >> "shortrange","altChannelOnlyTL",1] call BIS_fnc_returnConfigEntry) == 1;

if (_srDefaultChannel > 7) then {_srDefaultChannel = 0};
_tfarSrSettings set [0,_srDefaultChannel];

if (_srAltChannel > 7) then {_srAltChannel = 0};
if (leader group player == player || !_srAltOnlyTL) then {
    _tfarSrSettings set [5,_srAltChannel];
};

{
    _channelName = [_groupConfig >> "shortrange",_x,""] call BIS_fnc_returnConfigEntry;
    _channelFreq = ["shortrange",_channelName] call GRAD_groupsettings_fnc_findChannelFrequency;
    if (_channelFreq != -1) then {
        _tfarSrFreqs set [_forEachIndex,str _channelFreq];
    };
} forEach ["channel1","channel2","channel3","channel4","channel5","channel6","channel7","channel8"];


//LONGRANGE SETTINGS
_lrDefaultChannel = (([_groupConfig >> "longrange","defaultChannel",1] call BIS_fnc_returnConfigEntry) - 1) max 0;
_lrAltChannel = (([_groupConfig >> "longrange","altChannel",0] call BIS_fnc_returnConfigEntry) - 1) max -1;
_lrAltOnlyTL = ([_groupConfig >> "longrange","altChannelOnlyTL",1] call BIS_fnc_returnConfigEntry) == 1;

if (_lrDefaultChannel > 8) then {_lrDefaultChannel = 0};
_tfarLrSettings set [0,_lrDefaultChannel];

if (_lrAltChannel > 8) then {_lrAltChannel = 0};
if (leader group player == player || !_lrAltOnlyTL) then {
    _tfarLrSettings set [5,_lrAltChannel];
};

{
    _channelName = [_groupConfig >> "longrange",_x,""] call BIS_fnc_returnConfigEntry;
    _channelFreq = ["longrange",_channelName] call GRAD_groupsettings_fnc_findChannelFrequency;
    if (_channelFreq != -1) then {
        _tfarLrFreqs set [_forEachIndex,str _channelFreq];
    };
} forEach ["channel1","channel2","channel3","channel4","channel5","channel6","channel7","channel8","channel9"];


INFO ("group channels loaded");

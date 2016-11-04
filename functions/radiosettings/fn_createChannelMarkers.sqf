#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_radiosettings_fnc_createChannelMarkers

Description: Creates markers on map for each channel that has a name.

Parameters: [channel names]

Returns:  []

Examples:
          [channel names] call GRAD_radiosettings_fnc_getUserSettings;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

params ["_channelNames"];
if (count _channelNames == 0) exitWith {};

//headline
_pos = [worldSize + 200, worldSize - 100, 0];
_marker = createMarker ["grad_radioMarker_headline", _pos];
_marker setMarkerType "mil_dot";
_marker setMarkerColor "COLORWEST";
_marker setMarkerText "FUNK:";

//channels
{
    _x params ["_freq", "_desc"];

    _name = format ["grad_radioMarker_%1", _forEachIndex];
    _pos = [worldSize + 200, worldSize - 450, 0] vectorAdd [0,_forEachIndex * (-350), 0];
    _marker = createMarker [_name, _pos];
    _marker setMarkerType "mil_dot";
    _marker setMarkerColor "COLORBLACK";
    _marker setMarkerText format ["%1: %2 MHz", _desc, _freq];
} forEach _channelNames;

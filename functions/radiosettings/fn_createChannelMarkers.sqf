#include "component.hpp"

params ["_channelNames"];
if (count _channelNames == 0) exitWith {};

//headline
_pos = if (str getMarkerpos "radiofrequencies" != "[0,0,0]") then {
    getMarkerpos "radiofrequencies";
} else {
    [worldSize + 200, worldSize - 100, 0];
};

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

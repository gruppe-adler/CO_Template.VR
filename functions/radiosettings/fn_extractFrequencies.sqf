#include "component.hpp"

params ["_radioType"];

private _cfg = missionConfigFile >> "missionSettings" >> "radioSettings" >> _radioType;

private _freqs = [];
private _notFoundCount = 0;
for [{_i=1}, {_i<200}, {_i=_i+1}] do {
    _netClassname = format ["net%1",_i];

    if (isClass (_cfg >> _netClassname)) then {_notFoundCount = 0} else {_notFoundCount = _notFoundCount + 1};
    _freqs pushBack ([_cfg >> _netClassname,"freq",30] call BIS_fnc_returnConfigEntry);

    if (_notFoundCount >= 10) exitWith {};
};

_freqs resize ((count _freqs) - 10);

_freqs

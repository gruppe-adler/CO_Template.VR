#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_radiosettings_fnc_extractFrequencies

Description: Extracts frequencies from settings.

Parameters: [settings]

Returns:  [shortrange frequencies, longrange frequencies]

Examples:
          [settings] call GRAD_radiosettings_fnc_extractFrequencies;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

params ["_settings"];
_shortRangeFreqs = [];
_longRangeFreqs = [];

//get frequency values
{
    _type = _x;
    _freqs = if (_forEachIndex == 0) then {_shortRangeFreqs} else {_longRangeFreqs};
    {
        if (typeName _x == "ARRAY") then {
            _freqs pushBack (_x select 0);
        } else {
            _freqs pushBack _x;
        };
    } forEach _type;
} forEach _settings;

//adjust to correct length
while {count _shortRangeFreqs < 8} do {
    _shortRangeFreqs pushBack round ((random (512-30))+30);
};
if (count _shortRangeFreqs > 8) then {
    _shortRangeFreqs resize 8;
};
while {count _longRangeFreqs < 9} do {
    _longRangeFreqs pushBack round ((random (87-30))+30);
};
if (count _longRangeFreqs > 9) then {
    _longRangeFreqs resize 9;
};

//sanitize
_shortRangeFreqs = _shortRangeFreqs apply {if (_x < 30 || _x > 512) then {30} else {_x}};
_longRangeFreqs = _longRangeFreqs apply {if (_x < 30 || _x > 87) then {30} else {_x}};

//convert to string
_shortRangeFreqs = _shortRangeFreqs apply {if (typeName _x != "STRING") then {str _x} else {_x}};
_longRangeFreqs = _longRangeFreqs apply {if (typeName _x != "STRING") then {str _x} else {_x}};

//return
[_shortRangeFreqs,_longRangeFreqs]

#include "component.hpp"

params [["_group",grpNull]];

private _callsign = "";
{
    _callsign = (roleDescription _x) splitString "@" param [1, ""];
    if (_callSign != "") exitWith {false};
    false
} count (units _group);

if (_callsign == "") then {_callsign = groupID _group};

_callsign

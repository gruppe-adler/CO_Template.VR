#include "script_component.hpp"

[] execVM "initcommon.sqf";

["Initialize"] call BIS_fnc_dynamicGroups;
/*[] execVM "helpers\tfarsettings.sqf";*/
[] execVM "helpers\setRadioSettings.sqf";
[] execVM "helpers\setGroupSettings.sqf";

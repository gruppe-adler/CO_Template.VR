#include "USERSCRIPTS\missionsettings.sqf";
#include "script_component.hpp"

enableSentences false;
enableRadio false;

[] execVM "helpers\intro.sqf";
[] execVM "helpers\tfarsettings.sqf";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[0,true] call FNC_SMC(client,setClientAction);

#include "USERSCRIPTS\missionsettings.sqf";

enableSentences false;
enableRadio false;

[] execVM "helpers\intro.sqf";
[] execVM "helpers\tfarsettings.sqf";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

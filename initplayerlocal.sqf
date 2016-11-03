#include "script_component.hpp"

if (!isServer) then {
    [] execVM "initcommon.sqf";
};

if (didJIP) then {
    [[player], "helpers\addjiptozeus.sqf"] remoteExec ["execVM",2,false];
};

[] execVM "helpers\intro.sqf";
/*[] execVM "helpers\tfarsettings.sqf";*/
[] execVM "helpers\setRadioSettings.sqf";
[] execVM "helpers\createDiaryRecords.sqf";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[] execVM "helpers\setGroupSettings.sqf";

/*[0,true] call FNC_SMC(client,setClientAction);*/

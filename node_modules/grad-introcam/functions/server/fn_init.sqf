#include "script_component.hpp"

if !(isServer) exitWith {};

[] call compile preprocessFileLineNumbers "USER\userIntro.sqf";
if (isNil "GRAD_introCam_playOnStart") then {GRAD_introCam_playOnStart = false};
if (isNil "GRAD_introCam_allowForJIP") then {GRAD_introCam_allowForJIP = false};

if (GRAD_introCam_shotDefinitions isEqualTo []) exitWith {};

if (GRAD_introCam_playOnStart) then {
    [
        {time > _this},
        {
            [GRAD_introCam_shotDefinitions, GRAD_introCam_allowForJIP] remoteExec ["GRAD_introCam_fnc_play", [0,-2] select isDedicated, GRAD_introCam_allowForJIP];
        },
        (time + 3)
    ] call CBA_fnc_waitUntilAndExecute;
};

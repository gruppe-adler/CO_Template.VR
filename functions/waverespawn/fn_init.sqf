#include "component.hpp"

if (([missionConfigFile >> "missionSettings" >> "respawnSettings","waveRespawnEnabled",0] call BIS_fnc_returnConfigEntry) == 0) exitWith {};


deadPlayersBlu = [];
deadPlayersOpf = [];
deadPlayersInd = [];
newBluSpawns = [];
newOpfSpawns = [];
newIndSpawns = [];


if (hasInterface) then {
    player setVariable ["joinTime", serverTime];
    [] call grad_waverespawn_fnc_resetPlayerVars;
};

if (isServer) then {
    [] call grad_waverespawn_fnc_startWaveLoops;
    addMissionEventHandler ["HandleDisconnect", {[_this select 0,side (_this select 0)] call uo_waverespawn_fnc_removeFromWave}];
};

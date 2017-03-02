#define PREFIX GRAD
#define COMPONENT waverespawn
#include "\x\cba\addons\main\script_macros_mission.hpp"

[profileName,playerSide] remoteExec ["grad_waverespawn_fnc_removeFromWave",2,false];

setPlayerRespawnTime 99999;

hint "";

[] call grad_waverespawn_fnc_resetPlayerVars;

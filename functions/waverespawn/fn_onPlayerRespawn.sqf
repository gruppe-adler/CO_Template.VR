#include "component.hpp"

[profileName,playerSide] remoteExec ["grad_waverespawn_fnc_removeFromWave",2,false];

setPlayerRespawnTime 99999;

hint "";

[] call grad_waverespawn_fnc_resetPlayerVars;

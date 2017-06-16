#include "component.hpp"

if (player getVariable "wr_interrupted") exitWith {player setVariable ["wr_waveCountdownDone", true]};
if (player getVariable "wr_isFreeRespawn") exitWith {player setVariable ["wr_waveCountdownDone", true]};

INFO("Player countdown done. Starting wave countdown...");

[profileName, playerSide] remoteExec ["grad_waverespawn_fnc_addToWave",2,false];

[{

    _timeOfDeath = (_this select 0) select 0;

    //check interrupt
    if (call (player getVariable "wr_interruptCondition")) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        player setVariable ["wr_interrupted", true];
        player setVariable ["wr_waveCountdownDone", true];
        INFO("Respawn interrupted.");
    };

    //check max respawn time
    if ((time - _timeOfDeath) > MAXRESPAWNTIME) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        player setVariable ["wr_isFreeRespawn", true];
        player setVariable ["wr_waveCountdownDone", true];
        INFO("Max respawn time reached.");
    };

    if (!(call (player getVariable ["wr_waitCondition",{false}])) || player getVariable ["wr_isFreeRespawn", false] || player getVariable ["wr_interrupted", false]) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        player setVariable ["wr_waveCountdownDone", true];
    };

    [playerSide] call grad_waverespawn_fnc_respawnHint;

}, 1, _this] call CBA_fnc_addPerFrameHandler;

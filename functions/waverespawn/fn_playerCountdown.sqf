#include "component.hpp"

params ["_timeOfDeath"];

INFO("Starting player countdown...");

[{
    _timeOfDeath = (_this select 0) select 0;

    //check interrupt
    if (player getVariable "wr_interrupted") exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        player setVariable ["wr_playerCountdownDone", true];
    };

    if (call (player getVariable "wr_interruptCondition")) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        player setVariable ["wr_interrupted", true];
        player setVariable ["wr_playerCountdownDone", true];
        INFO("Respawn interrupted.");
    };

    if (time - _timeOfDeath > MAXRESPAWNTIME) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        player setVariable ["wr_isFreeRespawn", true];
        player setVariable ["wr_playerCountdownDone", true];
        INFO("Max respawn time reached.");
    };

    _playerTimeLeft = (player getVariable "wr_playerRespawnTimeLeft") - 1;
    player setVariable ["wr_playerRespawnTimeLeft", _playerTimeLeft];
    [playerSide,"Waiting for player-countdown."] call grad_waverespawn_fnc_respawnHint;

    if (_playerTimeLeft <= 0) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        player setVariable ["wr_playerCountdownDone", true];
    };
}, 1, [_timeOfDeath]] call CBA_fnc_addPerFrameHandler;

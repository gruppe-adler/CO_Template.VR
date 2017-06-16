/*    handles player respawn
*
*     executed locally when player dies
*/

#include "component.hpp"

if (player getVariable ["wr_interrupted", false]) exitWith {};

[] call grad_waverespawn_fnc_resetPlayerVars;

//check JIP player is spawning for the first time
_joinTime = player getVariable ["joinTime", 0];
if (serverTime - _joinTime < 30 && didJIP) exitWith {INFO("Player is JIP. Exiting onPlayerKilled.")};

["Terminate"] call BIS_fnc_EGSpectator;
["Initialize", [player, [playerside], false, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;

INFO("Starting waverespawn procedure...");
_timeOfDeath = time;
player setVariable ["wr_timeOfDeath",time];

setPlayerRespawnTime 99999;

//do the steps
[_timeOfDeath] call grad_waverespawn_fnc_playerCountdown;
[{player getVariable "wr_playerCountdownDone"}, {_this call grad_waverespawn_fnc_waveCountdown}, [_timeOfDeath]] call CBA_fnc_waitUntilAndExecute;
[{player getVariable "wr_waveCountdownDone"}, {[] call grad_waverespawn_fnc_prepareRespawn}, []] call CBA_fnc_waitUntilAndExecute;

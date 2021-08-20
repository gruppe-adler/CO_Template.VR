/*    handles player respawn
*
*     executed locally when player dies
*/

#include "component.hpp"

["Terminate"] call BIS_fnc_EGSpectator;
["Initialize", [player, [playerside], false, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;

_timeOfDeath = time;
player setVariable ["wr_timeOfDeath",time];

setPlayerRespawnTime 99999;

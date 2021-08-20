/*    handles player respawn
*
*     executed locally when player dies
*/

["Terminate"] call BIS_fnc_EGSpectator;
["Initialize", [player, [playerside], false, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;

setPlayerRespawnTime 99999;

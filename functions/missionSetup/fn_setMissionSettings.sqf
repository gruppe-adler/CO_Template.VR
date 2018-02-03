#include "component.hpp"

private _timeMultiplication = [missionConfigFile >> "missionSettings","timeMultiplier",1] call BIS_fnc_returnConfigEntry;
setTimeMultiplier _timeMultiplication;

private _ambientLife = ([missionConfigFile >> "missionSettings","ambientLife",0] call BIS_fnc_returnConfigEntry) == 1;
private _ambientSound = ([missionConfigFile >> "missionSettings","ambientSound",1] call BIS_fnc_returnConfigEntry) == 1;
[{time > 10},{enableEnvironment _this},[_ambientLife,_ambientSound]] call CBA_fnc_waitUntilAndExecute;

private _sideChannel = ([missionConfigFile >> "missionSettings","sideChannel",0] call BIS_fnc_returnConfigEntry) == 1;
1 enableChannel [_sideChannel,false];

private _engineArtillery = ([missionConfigFile >> "missionSettings","artilleryComputer",0] call BIS_fnc_returnConfigEntry) == 1;
enableEngineArtillery _engineArtillery;

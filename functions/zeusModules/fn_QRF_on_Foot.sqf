params ["_modulePosition"];

#include "..\..\USER\zeusModulesParameters.hpp"

_acceptablePositionFound = false;
_blacklistPos = [];
_numberOfIterations = 1;

_allCuratorsVariable = [];
{
	_allCuratorsVariable pushBackUnique (getAssignedCuratorUnit _x);     
} forEach allCurators;	

if (_UNITS_TO_SPAWN isEqualTo []) exitWith {["_UNITS_TO_SPAWN needs to be defined, before using this module! You can define the variable in the zeusModulesParameters.hpp, under the USER folder."] remoteExec ["systemChat", _allCuratorsVariable];};
if (_SIDE_OF_UNITS isEqualTo "") exitWith {["_SIDE_OF_UNITS needs to be defined, before using this module! You can define the variable in the zeusModulesParameters.hpp, under the USER folder."] remoteExec ["systemChat", _allCuratorsVariable];};
if (surfaceIsWater _modulePosition) exitWith {["The module must be placed on land!"] remoteExec ["systemChat", _allCuratorsVariable];};

scopeName "Main";
while {!(_acceptablePositionFound)} do {
	scopeName "Loop1";
	if !(_acceptablePositionFound) then {
		scopeName "Reset";
		_initialSpawnPoint = [_modulePosition, 200, 650, 4, 0, 0, 0, _blacklistPos] call BIS_fnc_findSafePos;
		 _posHigh = [_initialSpawnPoint#0,_initialSpawnPoint#1,1.8];

		{
			// Check if position is in the player's view (filter virtual units)
			if (side _x != sideLogic) then {
				
				private _eyePos = eyePos _x;
				if ((([objNull, "VIEW"] checkVisibility [_eyePos, _posHigh]) > 0.1) || (((ASLtoAGl _eyePos) distance (ASLtoAGl _posHigh)) < 100)) then {
					[format["Iteration %1 failed to find a suitable spawn position. Searching new spawn point...", _numberOfIterations]] remoteExec ["systemChat", _allCuratorsVariable];
					_blacklistPos pushBackUnique [_initialSpawnPoint, 1];
					_numberOfIterations = _numberOfIterations + 1;
					breakOut "Reset";

				};
			};
		} forEach allPlayers;


		_attackGroup = createGroup [_SIDE_OF_UNITS, true];
		while {(count (units _attackGroup)) < 5} do {
			_type = selectRandom _UNITS_TO_SPAWN;
			_type createUnit [_initialSpawnPoint findEmptyPosition [1,5,_type], _attackGroup]; 
		};

		_waypoint = _attackGroup addWayPoint [_modulePosition, -1, 1];
		_waypoint setWaypointType "SAD";
		_waypoint setWaypointBehaviour "AWARE";
		_waypoint setWaypointSpeed "FULL";
		
		_acceptablePositionFound = true;
	};
};
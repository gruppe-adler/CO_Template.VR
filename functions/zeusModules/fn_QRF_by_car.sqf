params ["_modulePosition"];

#include "..\..\USER\zeusModulesParameters.hpp"

_acceptablePositionFound = false;
_numberOfIterations = 1;

_allCuratorsVariable = [];
{
	_allCuratorsVariable pushBackUnique (getAssignedCuratorUnit _x);     
} forEach allCurators;	

if ((_UNITS_TO_SPAWN isEqualTo []) || (_CARS_TO_SPAWN isEqualTo [])) exitWith {["_UNITS_TO_SPAWN and _CARS_TO_SPAWN need to be defined, before using this module! You can define them in the zeusModulesParameters.hpp, under the USER folder."] remoteExec ["systemChat", _allCuratorsVariable];};
if (_SIDE_OF_UNITS isEqualTo "") exitWith {["_SIDE_OF_UNITS needs to be defined, before using this module! You can define the variable in the zeusModulesParameters.hpp, under the USER folder."] remoteExec ["systemChat", _allCuratorsVariable];};
if (surfaceIsWater _modulePosition) exitWith {["The module must be placed on land!"] remoteExec ["systemChat", _allCuratorsVariable];};

scopeName "Main";
while {!(_acceptablePositionFound)} do {
	scopeName "loop1";
	if (_numberOfIterations > 100) exitWith {["No suitable spawn position could be found. Please check the module's position and try again."] remoteExec ["systemChat", _allCuratorsVariable];};
	if !(_acceptablePositionFound) then {
		scopeName "Reset";
		
		_blacklistPos = [];
		
		_initialSearchPoint = [_modulePosition, 900, 1500, 0, 0, 0, 0, _blacklistPos] call BIS_fnc_findSafePos;
		_nearestRoad = [_initialSearchPoint, 350] call BIS_fnc_nearestRoad;
		if (isNull _nearestRoad) then {
			[format["Iteration %1 failed to find a suitable spawn position. Searching new Road...", _numberOfIterations]] remoteExec ["systemChat", _allCuratorsVariable];
			_blacklistPos pushBackUnique [_initialSearchPoint, 10];
			_numberOfIterations = _numberOfIterations + 1;
			breakOut "Reset";
		};
		_nearestRoadPosition = getPosASL _nearestRoad;


		{
			if (side _x != sideLogic) then {
				private _eyePos = eyePos _x;
				private _nearestRoadPositionHigh = _nearestRoadPosition;
				_nearestRoadPositionHigh set [2, (__nearestRoadPositionHigh#2) + 2];
				if ((([objNull, "VIEW"] checkVisibility [_eyePos, _nearestRoadPositionHigh]) > 0.1) || (([objNull, "VIEW"] checkVisibility [_eyePos, _nearestRoadPosition]) > 0.1)) then {		
					[format["Iteration %1 failed to find a suitable spawn position. Searching new Road...", _numberOfIterations]] remoteExec ["systemChat", _allCuratorsVariable];
					_numberOfIterations = _numberOfIterations + 1;
					_blacklistPos pushBackUnique [_initialSearchPoint, 10];
					breakOut "Reset";
				};
			};
		} foreach allplayers;


		// Klassennamen einfügen //
		//_UNITS_TO_SPAWN = ["I_C_Soldier_Para_4_F", "I_C_Soldier_Para_1_F", "I_C_Soldier_Para_7_F", "I_C_Soldier_Para_2_F"];
		//_CARS_TO_SPAWN = ["I_C_Van_02_transport_F", "I_C_Van_01_transport_F", "I_C_Offroad_02_unarmed_F"];

		_carClass = selectRandom _CARS_TO_SPAWN;
		_carPosition = _nearestRoadPosition findEmptyPosition [0,0,_carClass];
		if ((_carPosition isEqualTo []) || !(isOnRoad _nearestRoad)) then {
			[format["Iteration %1 failed to find a suitable spawn position. Searching new Road...", _numberOfIterations]] remoteExec ["systemChat", _allCuratorsVariable];
			_numberOfIterations = _numberOfIterations + 1;
			_blacklistPos pushBackUnique [_initialSearchPoint, 10];
			breakOut "Reset";		
		};

		["spawning units..."] remoteExec ["systemChat", _allCuratorsVariable];
		_car = _carClass createVehicle _carPosition;
		
		if ((((roadsConnectedTo _nearestRoad) # 0) distance2d _modulePosition) < (((roadsConnectedTo _nearestRoad) # 1) distance2d _modulePosition)) then {
			_car setDir (_nearestRoad getDir ((roadsConnectedTo _nearestRoad) # 0));
		}
		else
		{
			_car setDir (_nearestRoad getDir ((roadsConnectedTo _nearestRoad) # 1));
		};
		

		_attackGroup = createGroup [_SIDE_OF_UNITS, true];
		
		while {(count (units _attackGroup)) < ([_carClass, true] call BIS_fnc_crewCount)} do {
			_type = selectRandom _UNITS_TO_SPAWN;
			_type createUnit [_nearestRoadPosition findEmptyPosition [0,10,_type], _attackGroup];
		};

		_getInWaypoint = _attackGroup addWayPoint [_car, -1, 1];
		_getInWaypoint setWaypointType "GETIN";
		_getInWaypoint waypointAttachVehicle _car;
		_getInWaypoint setWaypointBehaviour "AWARE";
		_getInWaypoint setWaypointSpeed "FULL";

		_potTargetRoads = [];
		_searchRadius = 300;
		["searching position to disembark..."] remoteExec ["systemChat", _allCuratorsVariable];
		while {(_searchRadius < 1005) && (_potTargetRoads isEqualTo [])} do {
			{
				if ((isOnRoad _x) && ((_x distance2d _modulePosition) > 250)) then {
					_potTargetRoads pushBackUnique _x;
				};
				
			} foreach (_modulePosition nearRoads _searchRadius);
			_searchRadius = _searchRadius + 5;
		};		

		if !(_potTargetRoads isEqualTo []) then {

			_roadDistance = 10000;
			_bestRoad = selectRandom _potTargetRoads;
			{
				if (((_x distance _carPosition) < _roadDistance) && isOnRoad _x) then {
					_roadDistance = _x distance _carPosition;
					_bestRoad = _x;
				};

			} foreach _potTargetRoads;
			
			[format["Found a suitable position (%1 meters from attack-point)", round (_bestRoad distance2d _modulePosition)]] remoteExec ["systemChat", _allCuratorsVariable];
			
			_getOutWaypoint = _attackGroup addWayPoint [getPosASL _bestRoad, -1, 2];
			_getOutWaypoint setWaypointType "GETOUT";
			_getOutWaypoint setWaypointBehaviour "AWARE";
			_getOutWaypoint setWaypointSpeed "FULL";
		}
		else 
		{
			["Couldn't find a suitable position to disembark, using random position"] remoteExec ["systemChat", _allCuratorsVariable];
			_getOutWaypoint = _attackGroup addWayPoint [[_modulePosition, 600, 1000, 10] call BIS_fnc_findSafePos, -1, 2];
			_getOutWaypoint setWaypointType "GETOUT";
			_getOutWaypoint setWaypointBehaviour "AWARE";
			_getOutWaypoint setWaypointSpeed "FULL";
		};

		_attackWaypoint = _attackGroup addWayPoint [_modulePosition, -1, 3];
		_attackWaypoint setWaypointType "SAD";
		_attackWaypoint setWaypointBehaviour "AWARE";
		_attackWaypoint setWaypointSpeed "FULL";
		
		_acceptablePositionFound = true;
	};
};
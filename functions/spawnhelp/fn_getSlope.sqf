#include "script_component.hpp"
/* -----------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_getSlope

Description: Returns an average slope value of terrain within passed radius.

Parameters: [position]

Returns: BOOL

Examples:
          _streets_arr  = [_position] call GRAD_spawnhelp_fnc_getSlope;

Author: Fry

-------------------------------------------------------------------------------------------------- */

	private ["_output","_slopeObject", "_centerHeight", "_height", "_direction", "_count"];
  params ["_position","_radius"];

  If(isNil "_radius")then{_radius = 5;};
  _output = false;
	_slopeObject = "Logic" createVehicleLocal _position;
	_slopeObject setPos _position;
	_centerHeight = getPosASL _slopeObject select 2;
	_height = 0;_direction = 0;
	for "_count" from 0 to 7 do {
		_slopeObject setPos [(_position select 0)+((sin _direction)*_radius),(_position select 1)+((cos _direction)*_radius),0];
		_direction = _direction + 45;
		_height = _height + abs (_centerHeight - (getPosASL _slopeObject select 2));
	};
	deleteVehicle _slopeObject;
	If((_height / 8) < 0.5)then{_output = true;};
  _output

#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_nearestStreet

Description: Find nearest Street to given Position.

Parameters: [position,Radius]

Returns: String with Streetname

Examples:
          _streetname = [_position,200] call GRAD_spawnhelp_fnc_nearestStreet;

Author: Fry

-------------------------------------------------------------------------------------------------- */

private ["_street_block","_old_distance","_distance","_street_arr"];
params ["_position","_radius"];


_street_block = "";
_old_distance = _radius;
_distance = 0;
_street_arr = [_position,_radius,true] call FNC_SMC(spawnhelp,getStreets);
If(count _street_arr > 0)then
{
 {
	 _distance = (getPos _x) distance _position;
	 If(_distance < _old_distance)then
	 {
		 _old_distance = _distance;
		 _street_block = _x;
	 };
 }forEach _street_arr;
};
_street_block

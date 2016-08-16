#include "script_component.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_geometry_fnc_getCircleBorderPos

Description: Find a random Position on Circle Border with Water,House,Walls,Vehicle and Area check
             (Test a new "Random" Option)

Parameters: [Position,Radius,(Optional:Radius for big Objects)]

            Optional: Radius to find Places for big Objects without Houses,Walls,Vehicles and StaticWeapons

Returns:  [Position,Direction(given Position -> BorderPos)]
Examples:
          _borderpos = [(getMarkerPos "Town"),200] call GRAD_geometry_fnc_getCircleBorderPos;

Author: Fry

------------------------------------------------------------------------------------------------------------- */
private ["_output","_found_pos","_co","_angle","_mran","_point","_dir","_onmap","_statics","_slope"];
params ["_position","_radius","_big_radius"];
If(isNil "_big_radius")then{_big_radius = 5;};
_output = [];
_found_pos = [];
_co = 0;
_angle = 0;
//hint "Hallo";
while{count _found_pos == 0 && _co < 100}do
{
 for "_mran" from 0 to (round(random 10))do
 {
   _angle = floor (random 360);
 };
 _point = [_position,_radius,_angle] call FNC_BIS(relPos);
 If(count _point > 0)then
 {
   _onmap = [_point] call FNC_SMC(spawnhelp,isOnMap);
   _statics = [_point,["Static","House","Tank","Car","StaticWeapon"],_big_radius] call FNC_SMC(spawnhelp,checkObjects);
   _slope = [_point] call FNC_SMC(spawnhelp,getSlope);
   If(!(surfaceIsWater _point) && _onmap && _slope && _statics < 1)then
   {
     _found_pos = _point;
     _dir = [_position,_point] call FNC_BIS(dirTo);
     _output = [_point,_dir];
   }else{_co = _co + 1;};
 };
 sleep 0.02
};
_output

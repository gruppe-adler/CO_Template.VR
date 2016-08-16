#include "script_component.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_geometry_fnc_getCirclePos

Description: Find a random Position in Circle with Water,House,Walls,Vehicle and Area check


Parameters: [Position,Radius,(Optional:Radius for big Objects)]

            Optional: Radius to find Places for big Objects without Houses,Walls,Vehicles and StaticWeapons

Returns:  Position
Examples:
          _pos = [(getMarkerPos "Town"),200] call GRAD_geometry_fnc_getCirclePos;

Author: Fry

------------------------------------------------------------------------------------------------------------- */
private ["_output","_co","_angle","_point","_onmap","_statics","_slope"];
params ["_position","_radius","_big_radius"];
If(isNil "_big_radius")then{_big_radius = 5;};
_output = [];
_co = 0;
while{count _output == 0 && _co < 100}do
{
 _angle = floor (random 360);
 _point = [_position,(round (random _radius)),_angle] call FNC_BIS(relPos);
 If(count _point > 0)then
 {
   _onmap = [_point] call FNC_SMC(spawnhelp,isOnMap);
   _statics = [_point,["Static","House","Tank","Car","StaticWeapon"],_big_radius] call FNC_SMC(spawnhelp,checkObjects);
   _slope = [_point] call FNC_SMC(spawnhelp,getSlope);
   If(!(surfaceIsWater _point) && _onmap && _slope && _statics < 1)then
   {
     _output = _point;
   }else{_co = _co + 1;};
 };
 sleep 0.02
};
_output

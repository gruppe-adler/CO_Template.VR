#include "script_component.hpp"
/* -----------------------------------------------------------------------------------------------
Function: GRAD_geometry_fnc_getImpactPos

Description: Find a random Impact Position for Artillery

Parameters: [Position/Object,Radius,Number of positions]


Returns:  Array with Positions
Examples:
          _pos_list = [TANK,50,10] call GRAD_geometry_fnc_getImpactPos;

Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_output","_co","_angel","_ari_point"];
params ["_center","_radius","_num"];
_output = [];

for "_i" from 1 to _num do
{
  _co = 0;
  _angel = floor (random 360);
  _ari_point = [_ari_pos,(round(random _radius)),_angle] call FNC_BIS(relPos);
  while{count _ari_point == 0 && _co < 20}do
  {
   _angel = floor (random 360);
   _ari_point = [_ari_pos,(round(random _radius)),_angle] call FNC_BIS(relPos);
   _co = _co + 1;
   sleep 0.04;
  };
  If(count _ari_point > 0)then{_output pushBack _ari_point;};
  sleep 0.04;
};
_output

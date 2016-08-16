#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_setDebugMarker

Description: Set a Arrow with different Colors to Position

Parameters: [_position,_color_idx,(optional:true - House-/Ground Positions)]
            0 - Color Red
            1 - Color Blue
            2 - Color Green

Returns: Name of Arrow/Object

Examples:
          _arrow = [_position,1] call GRAD_spawnhelp_fnc_setDebugMarker;

Author: Fry

---------------------------------------------------------------------------- */

private ["_type","_arrow_over_point"];
params ["_position","_idx","_chk_posses"];

If(isNil "_chk_posses")then{_chk_posses = false;};
_type = "";
_arrow_over_point = "";
switch(_idx)do
{
	case 0:{_type = "Sign_Arrow_F";};
	case 1:{_type = "Sign_Arrow_Blue_F";};
	case 2:{_type = "Sign_Arrow_Green_F";};
	default{If(true)exitWith{LOG_WARN("GRAD_spawnhelp_fnc_setDebugMarker: NO AVAILABLE CLASSNAME DETECTED!")};};
};

If(_chk_posses)then
{
  _arrow_over_point = createVehicle [_type,_position, [], 0, "CAN_COLLIDE"];
  _arrow_over_point setPosATL [(_position select 0), (_position select 1),((_position select 2) + 0.2)];
}else{
			_arrow_over_point = createVehicle [_type,_position, [], 0, "CAN_COLLIDE"];
      _arrow_over_point setPosASL [((getPosASL _arrow_over_point) select 0), ((getPosASL _arrow_over_point) select 1),(((getPosASL _arrow_over_point) select 2) + 12)];
     };
_arrow_over_point

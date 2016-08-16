#include "script_component.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_geometry_fnc_getSafePos

Description: Find a Safe Possition in Circle or Circle Border. With Slope Check


Parameters: [Position,Radius,Toleranz,(Optional:Border),(Optional:Degrees)]

            Optional Border: true - Search a Safe Position on Circle Border with given Radius
            Optional Degrees: -1 = random 360 / Number 0 - 360 = Normal Search in the given Vektor
                              (INFO: Degrees-Option possible with Optional Border Function)

Returns:  Position
Examples:
          _safePosArea = [(getMarkerPos "Town"),200,20] call GRAD_geometry_fnc_getSafePos;
          _safePosRandomBorder = [(getMarkerPos "Town"),200,20,true,-1] call GRAD_geometry_fnc_getSafePos;

Author: Fry

------------------------------------------------------------------------------------------------------------- */
private ["_output","_deg_isRandom","_point","_saPos","_slope_chk","_deg_count"];
params ["_center","_radius","_tolerance","_isborder","_degrees"];
If(isNil "_isborder")then{_isborder = false;};
If(isNil "_degrees")then{_degrees = -1;};
_output = [];
_deg_count = 0;
_deg_isRandom = false;
If(_isborder)then
{
   If(_degrees < 0)then{_degrees = (round(random 360));_deg_isRandom = true;};
   _point = [_center,(_radius + _tolerance),_degrees] call FNC_BIS(relPos);
   _saPos = [_point,1,_tolerance,5,20,0] call FNC_BIS(findSafePos);
   If(count _saPos > 0)then
   {
     _slope_chk = [_saPos] call FNC_SMC(spawnhelp,getSlope);
     If(_slope_chk)then{_output = _saPos;};
   };
   If(_deg_isRandom)then
   {
     while{count _output == 0 && _deg_count < 359}do
     {
       _degrees = _degrees + 1;
       If(_degrees > 360)then{_degrees = _degrees - 360;};
       _point = [_center,(_radius + _tolerance),_degrees] call FNC_BIS(relPos);
       _saPos = [_point,1,_tolerance,5,20,0] call FNC_BIS(findSafePos);
       If(count _saPos > 0)then
       {
         _slope_chk = [_saPos] call FNC_SMC(spawnhelp,getSlope);
         If(_slope_chk)then{_output = _saPos;}else{_deg_count = _deg_count + 1;};
       }else{_deg_count = _deg_count + 1;};
       sleep 0.02;
     };
   }else{
          while{count _output == 0 && _deg_count < 10}do
          {
            _saPos = [_point,1,_tolerance,5,20,0] call FNC_BIS(findSafePos);
            If(count _saPos > 0)then
            {
              _slope_chk = [_saPos] call FNC_SMC(spawnhelp,getSlope);
              If(_slope_chk)then{_output = _saPos;}else{_deg_count = _deg_count + 1;};
            }else{_deg_count = _deg_count + 1;};
            sleep 0.02;
          };
        };
}else{
       _saPos = [_center,1,(_radius + _tolerance),5,50,0] call FNC_BIS(findSafePos);
       If(count _saPos > 0)then
       {
         _slope_chk = [_saPos] call FNC_SMC(spawnhelp,getSlope);
         If(_slope_chk)then{_output = _saPos;};
       };
       while{count _output == 0 && _deg_count < 10}do
       {
         _saPos = [_center,1,(_radius + _tolerance),5,50,0] call FNC_BIS(findSafePos);
         If(count _saPos > 0)then
         {
           _slope_chk = [_saPos] call FNC_SMC(spawnhelp,getSlope);
           If(_slope_chk)then{_output = _saPos;}else{_deg_count = _deg_count + 1;};
         }else{_deg_count = _deg_count + 1;};
         sleep 0.02;
       };
     };
_output

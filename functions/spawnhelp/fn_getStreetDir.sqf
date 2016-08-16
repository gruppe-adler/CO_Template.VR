#include "script_component.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_spawnhelp_fnc_getStreetDir

Description: Checks the Direction of given Streetblock

Parameters: [Streetblockname,Index,(Optional:Position)]

            Index - 1 : Normal Direction of the Streetblock (If no Direction found, random 360 is used)
                    2 : Checks Direction of Street is in Line to optional Position
                    3 : Set Direction to optional Position

Returns:  [Position,Direction]
Examples:
          _streetposdir = [Streetblock,1] call GRAD_spawnhelp_fnc_getStreetDir;

Author: Fry

------------------------------------------------------------------------------------------------------------- */
private ["_output","_next_streetsblock","_dir","_is_ok","_check_arr","_chk_dir","_chk_angle"];
params ["_streetblockname","_idx","_optpos"];
_output = [];
_dir = 0;
If(isNil "_optpos")then{_optpos = [];};
If(_idx > 1)then{If(count _optpos <= 2)exitWith {LOG_ERR("GRAD_spawnhelp_fnc_getStreetDir: NO OPTIONAL POSITION FOUND!")};};
_next_streetsblock = roadsConnectedTo _streetblockname;
switch(_idx)do
{
  case 1:{
           If(count _next_streetsblock > 0)then
           {
             _dir = (position _streetblockname) getDir (position (_next_streetsblock select 0));
           }else{_dir = (random 360);};
           _output = [(position _streetblockname),_dir];
         };
   case 2:{
            If(count _next_streetsblock > 0)then
            {
              _is_ok = true;
              _check_arr = [];
              {
                _chk_dir = (position _streetblockname) getDir (position _x);
                _chk_angle = [(position _streetblockname),_chk_dir,180,_optpos] call FNC_BIS(inAngleSector);
                If(_chk_angle && _is_ok)then
                {_check_arr = [_chk_dir]; _is_ok = false;};
              }forEach _next_streetsblock;
              If(count _check_arr > 0)then{_dir = (_check_arr select 0);}else{_dir = (position _streetblockname) getDir _optpos;}
            }else{_dir = (position _streetblockname) getDir _optpos;};
            _output = [(position _streetblockname),_dir];
          };
   case 3:{
            _dir = (position _streetblockname) getDir _optpos;
            _output = [(position _streetblockname),_dir];
          };
  default {LOG_ERR("GRAD_spawnhelp_fnc_getStreetDir: NO POSSIBLE INDEX NUMBER FOUND!")};
};
_output

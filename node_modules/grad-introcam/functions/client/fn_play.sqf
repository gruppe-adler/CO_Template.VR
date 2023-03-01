#include "script_component.hpp"

params ["_camShots", ["_jip", true]];

if(_jip && {didJIP}) exitWith {};

STHud_UIMode = 0;
diwako_dui_main_toggled_off = true;

private _cam = objNull;

private _first = _camShots select 0;
_first params ["_type", "_duration"];

if (_type== "CAMERA") then {
    _cam = _first call GRAD_introCam_fnc_createCam;
    _camShots deleteAt 0;
}else{
    _cam = [[0,0,2],[0,0,0]] call GRAD_introCam_fnc_createCam;
    _duration = 0;
};

[{_this call GRAD_introCam_fnc_handleNextShot;}, [_camShots, _cam], _duration] call CBA_fnc_waitAndExecute;

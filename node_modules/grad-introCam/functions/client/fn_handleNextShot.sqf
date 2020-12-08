#include "script_component.hpp"

params ["_camShots", "_cam"];

if (count _camShots == 0) exitWith {
    _cam cameraEffect ["terminate","back"];
    camDestroy _cam;
    missionNamespace setVariable ["GRAD_INTROCAM_DONE", true];
    STHud_UIMode = 1;
    diwako_dui_main_toggled_off = false;
};

private _waitCondition = nil;
_camShots params ["_nextShot"];
_nextShot params ["_type", "_duration"];


switch (_type) do {
    case "CAMERA": {
    	_cam = _nextShot call GRAD_introCam_fnc_createCam;
    };
    case "MOVE": {
    	[_cam, _nextShot] call GRAD_introCam_fnc_camMove;
    };

    case "ATTACH": {
    	[_cam, _nextShot] call GRAD_introCam_fnc_camAttached;
    };

    case "ROTATE": {
    	[_cam, _nextShot] call GRAD_introCam_fnc_camRotate;
        _waitCondition = {(!(isNil "GRAD_introCam_camRotateFinish") && {GRAD_introCam_camRotateFinish})};
    };
    case "BLEND": {
        _nextShot call GRAD_introCam_fnc_blend;
        if (count _nextShot > 5) then {
            _duration = _duration - (_nextShot select 5);
        };
    };
    default {};
};

_camShots deleteAt 0;

if (isNil "_waitCondition") then {
    [
        {
            _this call GRAD_introCam_fnc_handleNextShot;
        },
        [_camShots, _cam],
        (_duration + 0.01)
    ] call CBA_fnc_waitAndExecute;
}else{
    [
        _waitCondition,
        {
            _this call GRAD_introCam_fnc_handleNextShot;
        },
        [_camShots, _cam],
        (_duration + 1),
        {
            _this call GRAD_introCam_fnc_handleNextShot;
        }
    ] call CBA_fnc_waitUntilAndExecute;
};

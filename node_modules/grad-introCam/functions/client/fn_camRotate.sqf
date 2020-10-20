//#include "script_component.hpp"

params ["_camera", "_args"];
_args params ["", "_duration", "_target", ["_height", 5], ["_radius", 10], ["_startingAngle", 0], ["_endAngle", 180], ["_clockwise", true], ["_rise", 0]];

GRAD_introCam_camRotateFinish = false;

private _angleDistance = _endAngle - _startingAngle;
if (_clockwise) then {
	if (_endAngle < _startingAngle) then {
		_angleDistance = 360 - _startingAngle + _endAngle;
	};
}else{
	if (_endAngle > _startingAngle) then {
	   _angleDistance = (360 - _endAngle) + _startingAngle;
   };
};

private _steps = (_angleDistance / _duration) * 0.01;
private _riseSteps = if (_rise != 0) then {
    ((_rise / _duration) * 0.01)
}else{
    0
};

_duration = _duration* 0.01;

GRAD_introCam_camAngle = _startingAngle;
private _pos = (_target getPos [_radius, _startingAngle]) vectorAdd [0,0, _height];
private _camAttachObj = "HeliHEmpty" createVehicleLocal _pos;
_camAttachObj setPos _pos;
_camera attachTo [_camAttachObj, [0, 0, 0]];
_camera camSetTarget _target;
_camera camCommit 0;

[
    {
        params ["_args", "_handle"];
        _args params ["_camAttachObj", "_cam", "_target", "_steps", "_endAngle", "_endTime", "_riseSteps", "_radius"];
        if (GRAD_introCam_camAngle == _endAngle || {time > _endTime}) exitWith {
            [_handle] call CBA_fnc_removePerFrameHandler;
            detach _cam;
            deleteVehicle _camAttachObj;
            GRAD_introCam_camRotateFinish = true;
            GRAD_introCam_camAngle = nil;
            [{GRAD_introCam_camRotateFinish = nil;},[],1] call CBA_fnc_waitAndExecute;
        };

        GRAD_introCam_camAngle = GRAD_introCam_camAngle + _steps;

        private _newPos = _target getPos [_radius, GRAD_introCam_camAngle];
        private _height = (getPosASL _camAttachObj) select 2;
        if (_riseSteps != 0) then {
            _height = _height + (_riseSteps);
        };

        _newPos set [2, _height];
        _camAttachObj setPosASL _newPos;

    },
    0.01,
    [_camAttachObj, _camera, _target, _steps, _endAngle, (time + (_duration * 100) + 0.1), _riseSteps, _radius]
]call CBA_fnc_addPerFrameHandler;

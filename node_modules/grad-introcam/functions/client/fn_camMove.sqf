//#include "script_component.hpp"

params ["_camera", "_args"];
_args params [
	"",
	"_duration",
	"_camPos",
	"_target",
	["_zoom", 0.75],
	["_offset", [0,0,0]],
	["_commitTime", -1]
];

if !(_camPos isEqualType []) then {
	_camPos = getPos _camPos;
};

_camPos = _camPos vectorAdd _offset;
if (_commitTime < 0) then {
	_commitTime = _duration;
};

// pos 2 - where camera is moving next - target2
_camera camSetPos _camPos;
_camera camSetTarget _target;
_camera camSetFov _zoom;
_camera camCommit _commitTime;

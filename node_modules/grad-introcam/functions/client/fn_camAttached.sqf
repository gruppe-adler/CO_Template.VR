//#include "script_component.hpp"

params ["_camera", "_args"];
_args params ["", "_duration", "_object", "_target",["_zoom", 0.75], ["_offset",[0,0,0]]];

_camera attachTo [_object, _offset];
_camera camSetTarget _target;
_camera camSetFOV _zoom;
_camera camCommit 0;

[
	{
		detach _this;
	},
	_camera,
	_duration
] call CBA_fnc_waitAndExecute;

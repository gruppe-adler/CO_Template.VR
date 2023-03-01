#include "script_component.hpp"

params ["", "", "_pos", "_target", ["_zoom", 0.75], ["_showBorders", true], ["_fade", false], ["_fadeTime", 1], ["_fadeText", ""], ["_effectCam", "internal"], ["_effectCamType", "BACK"]];

if ((typeName _pos) isEqualTo "OBJECT") then {
    _pos = getPos _pos;
};

private _camera = "camera" camCreate _pos;

showCinemaBorder _showBorders;

_camera cameraEffect [_effectCam, _effectCamType];
_camera camCommand "inertia on";
_camera camSetTarget _target;
_camera camSetFOV _zoom;
_camera camCommit 0;

_camera camSetPos _pos;
_camera camSetTarget _target;
_camera camCommit 0;

if (_fade) then {
    cutText [_fadeText, "BLACK IN", _fadeTime];
};

_camera

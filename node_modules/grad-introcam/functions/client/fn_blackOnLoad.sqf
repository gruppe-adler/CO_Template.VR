if !(hasInterface) exitWith {};
if (didJip && !GRAD_introCam_allowForJIP) exitWith {};

[] call compile preprocessFileLineNumbers "USER\userIntro.sqf";
(GRAD_introCam_shotDefinitions select 0) params ["_type", "", "", "", "", "", ["_blackFade", false]];

if (
	GRAD_introCam_playOnStart &&
	{_type isEqualTo "CAMERA"} &&
	{_blackFade}
) then {
	cutText ["", "BLACK FADED", 999];
};

// Preload all camera positions to ensure smooth playback
private _cameraShots = GRAD_introCam_shotDefinitions select {(_x select 0) isEqualTo "CAMERA"};

if !(_cameraShots isEqualTo []) then {
	private _cam = "camera" camCreate [0,0,0];

	private _fnc_preloadNext = {
		params ["_cam", "_shots", "_index", "_fnc"];
		if (_index >= count _shots) exitWith {
			camDestroy _cam;
			GRAD_introCam_preloadDone = true;
		};

		private _shot = _shots select _index;
		_shot params ["", "", "_pos"];
		if (_pos isEqualType objNull) then { _pos = getPos _pos };

		_cam camSetPos _pos;
		_cam camCommit 0;
		_cam camPreload 0;

		private _fnc_next = {
			params ["_cam", "_shots", "_index", "_fnc"];
			[_cam, _shots, _index + 1, _fnc] call _fnc;
		};

		[{
			camPreloaded (_this select 0)
		}, _fnc_next, [_cam, _shots, _index, _fnc], 5, _fnc_next] call CBA_fnc_waitUntilAndExecute;
	};

	[_cam, _cameraShots, 0, _fnc_preloadNext] call _fnc_preloadNext;
} else {
	GRAD_introCam_preloadDone = true;
};

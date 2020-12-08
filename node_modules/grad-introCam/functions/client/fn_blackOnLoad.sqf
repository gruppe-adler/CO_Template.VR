if !(hasInterface) exitWith {};

[] call compile preprocessFileLineNumbers "USER\userIntro.sqf";
(GRAD_introCam_shotDefinitions select 0) params ["_type", "", "", "", "", "", ["_blackFade", false]];

if (
	GRAD_introCam_playOnStart && 
	{_type isEqualTo "CAMERA"} &&
	{_blackFade}
) then {
	cutText ["", "BLACK FADED", 999];
};
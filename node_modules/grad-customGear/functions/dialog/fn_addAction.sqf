/*  Adds action to open dialog to object
*
*   Params:
*   0:  object
*/

params ["_object"];

if (isNil "_object") exitWith {};
_object addAction ["Save custom equipment", {[] call grad_customGear_fnc_openDialog}, [], 3, false, true];

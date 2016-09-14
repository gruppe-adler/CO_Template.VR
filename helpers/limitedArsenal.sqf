/*  Adds limited virtual arsenal to an object
*
*   Parameters:
*   0:  Object
*/

params ["_box"];

_create = ["AmmoboxInit", [_box, false, {true}]] spawn BIS_fnc_arsenal;
waitUntil {scriptDone _create};

_whitelist = call compile preprocessFileLineNumbers "USERSCRIPTS\limitedArsenalItems.sqf";
_whitelist params ["_backpacks", "_items", "_magazines", "_weapons"];

[_box, _backpacks] call BIS_fnc_addVirtualBackpackCargo;
[_box, _items] call BIS_fnc_addVirtualItemCargo;
[_box, _magazines] call BIS_fnc_addVirtualMagazineCargo;
[_box, _weapons] call BIS_fnc_addVirtualWeaponCargo;

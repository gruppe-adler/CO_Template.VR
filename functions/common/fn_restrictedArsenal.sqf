/*  Adds limited virtual arsenal to an object
*
*   Parameters:
*   0:  Object
*/

params [["_box",objNull]];

if (isNull _box) exitWith {};

_create = ["AmmoboxInit", [_box, false, {true}]] spawn BIS_fnc_arsenal;

[{scriptDone (_this select 0)}, {
    _box = _this select 1;

    _backpacks = [missionConfigFile >> "missionSettings" >> "restrictedArsenal","backpacks",[]] call BIS_fnc_returnConfigEntry;
    _items = [missionConfigFile >> "missionSettings" >> "restrictedArsenal","items",[]] call BIS_fnc_returnConfigEntry;
    _magazines = [missionConfigFile >> "missionSettings" >> "restrictedArsenal","magazines",[]] call BIS_fnc_returnConfigEntry;
    _weapons = [missionConfigFile >> "missionSettings" >> "restrictedArsenal","weapons",[]] call BIS_fnc_returnConfigEntry;


    [_box, _backpacks] call BIS_fnc_addVirtualBackpackCargo;
    [_box, _items] call BIS_fnc_addVirtualItemCargo;
    [_box, _magazines] call BIS_fnc_addVirtualMagazineCargo;
    [_box, _weapons] call BIS_fnc_addVirtualWeaponCargo;

}, [_create,_box]] call CBA_fnc_waitUntilAndExecute;

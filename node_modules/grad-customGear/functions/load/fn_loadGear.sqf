/*    Loads custom gear
*
*/

params ["_mode", ["_actionID", -1]];
private ["_item"];

if (isNil "mcd_coTemplate_customGearArray") exitWith {};

private _modeName = switch (_mode) do {
    case "HELMET": {"custom helmet"};
    case "GOGGLES": {"custom facewear"};
    case "SCOPE1": {"custom sights"};
    case "SCOPE4": {"custom scope"};
    case "SCOPEM": {"custom scope"};
};

private _id = [mcd_coTemplate_customGearArray, getPlayerUID player] call grad_customGear_fnc_findUID;
if (_id == -1) exitWith {[format ["%1 not found.",_modeName],"GRAD Custom Gear: ERROR"] call grad_customGear_fnc_notificationAndLog};
private _playerGear = mcd_coTemplate_customGearArray select _id;
private _currentZoomFactor = [(player weaponAccessories (primaryWeapon player)) select 2] call grad_customGear_fnc_getZoomFactor;

switch (_mode) do {
    case "HELMET": {_item = _playerGear select 1};
    case "GOGGLES": {_item = _playerGear select 2};
    case "SCOPE1": {
        //rus scope
        _item = _playerGear select 6;
        if !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _item) == 1) then {
            //us scope
            _item = _playerGear select 3;
        };
    };
    case "SCOPE4": {
        //rus scope
        _item = _playerGear select 7;
        if !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _item) == 1) then {
            //us scope
            _item = _playerGear select 4;
        };
    };
    case "SCOPEM": {
        //rus scope
        _item = _playerGear select 7;
        if !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _item) == 1) then {
            //us scope
            _item = _playerGear select 5;
        };
    };
};

//get item info
private _itemDisplayName = [_item] call grad_customGear_fnc_getDisplayName;
private _itemZoomFactor = [_item] call grad_customGear_fnc_getZoomFactor;

//check if item was found
if (_item == "") exitWith {[format ["%1 not found.",_modeName],"GRAD Custom Gear: ERROR"] call grad_customGear_fnc_notificationAndLog};

//check validity of scope
private _validScope = true;

if (_mode == "SCOPE1" && _currentZoomFactor > 1) then {_validScope = false};
if (_mode == "SCOPE4" && _currentZoomFactor == 1) then {_validScope = false};
if (_mode == "SCOPEM" && _currentZoomFactor < 4) then {_validScope = false};
if (!_validScope) exitWith {["Default sights were changed?","GRAD Custom Gear: ERROR"] call grad_customGear_fnc_notificationAndLog};

if (_mode == "SCOPE1" && _itemZoomFactor > 1) then {_validScope = false};
if (_mode == "SCOPE4" && _itemZoomFactor >= 4) then {_validScope = false};
if (!_validScope) exitWith {[format ["%1 is not allowed.", _itemDisplayName],"GRAD Custom Gear: ERROR"] call grad_customGear_fnc_notificationAndLog};

if ((_mode == "SCOPE1" || _MODE == "SCOPE4" || _mode == "SCOPEM") && !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _item) == 1)) then {_validScope = false};
if (!_validScope) exitWith {[format ["%1 is not compatible.", _itemDisplayName],"GRAD Custom Gear: ERROR"] call grad_customGear_fnc_notificationAndLog};

if (_mode == "HELMET") then {player addHeadgear _item; player setVariable ["grad_customGear_HelmetLoaded", true]};
if (_mode == "GOGGLES") then {player addGoggles _item; player setVariable ["grad_customGear_GogglesLoaded", true]};
if (_itemZoomFactor != -1) then {player addPrimaryWeaponItem _item; player setVariable ["grad_customGear_ScopeLoaded", true]};

[format ["%1 loaded", _itemDisplayName]] call grad_customGear_fnc_notificationAndLog;

if (_actionID != -1) then {player removeAction _actionID};

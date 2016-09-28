/*  Loads custom gear
*
*/

params ["_mode", ["_actionID", -1]];
private ["_item"];

if (isNil "mcd_coTemplate_customGearArray") exitWith {};

_modeName = switch (_mode) do {
  case "HELMET": {"Persönlicher Helm"};
  case "GOGGLES": {"Persönliche Gesichtsbekleidung"};
  case "SCOPE1": {"Persönliches Visier"};
  case "SCOPE4": {"Persönliches Visier"};
  case "SCOPEM": {"Persönliches Visier"};
};

_id = [mcd_coTemplate_customGearArray, getPlayerUID player] call grad_customGear_fnc_findUID;
if (_id == -1) exitWith {systemChat format ["%1 nicht gefunden.", _modeName]};
_playerGear = mcd_coTemplate_customGearArray select _id;
_currentZoomFactor = [(player weaponAccessories (primaryWeapon player)) select 2] call grad_customGear_fnc_getZoomFactor;

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
_itemDisplayName = [_item] call grad_customGear_fnc_getDisplayName;
_itemZoomFactor = [_item] call grad_customGear_fnc_getZoomFactor;

//check if item was found
if (_item == "") exitWith {systemChat format ["%1 nicht gefunden.", _modeName]};

//check validity of scope
_validScope = true;

if (_mode == "SCOPE1" && _currentZoomFactor > 1) then {_validScope = false};
if (_mode == "SCOPE4" && _currentZoomFactor == 1) then {_validScope = false};
if (_mode == "SCOPEM" && _currentZoomFactor < 4) then {_validScope = false};
if (!_validScope) exitWith {systemChat format ["%1 nicht geladen. Startvisier wurde gewechselt?", _modeName]};

if (_mode == "SCOPE1" && _itemZoomFactor > 1) then {_validScope = false};
if (_mode == "SCOPE4" && _itemZoomFactor >= 4) then {_validScope = false};
if (!_validScope) exitWith {systemChat format ["%1 nicht geladen. %2 ist nicht zulässig.", _modeName, _itemDisplayName]};

if ((_mode == "SCOPE1" || _MODE == "SCOPE4" || _mode == "SCOPEM") && !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _item) == 1)) then {_validScope = false};
if (!_validScope) exitWith {systemChat format ["%1 nicht geladen. %2 passt nicht auf deine Waffe.", _modeName, _itemDisplayName]};

if (_mode == "HELMET") then {player addHeadgear _item; player setVariable ["grad_customGear_HelmetLoaded", true]};
if (_mode == "GOGGLES") then {player addGoggles _item; player setVariable ["grad_customGear_GogglesLoaded", true]};
if (_itemZoomFactor != -1) then {player addPrimaryWeaponItem _item; player setVariable ["grad_customGear_ScopeLoaded", true]};
systemChat format ["%1 geladen: %2", _modeName, _itemDisplayName];

if (_actionID != -1) then {player removeAction _actionID};

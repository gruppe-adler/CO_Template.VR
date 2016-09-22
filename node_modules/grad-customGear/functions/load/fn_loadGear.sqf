/*  Loads custom gear
*
*/

params ["_mode", "_allowMagnifyingScopes", "_allowMarksmanScopes"];
private ["_scope"];

if (isNil "mcd_coTemplate_customGearArray") exitWith {};

_modeName = switch (_mode) do {
  case "HELMET": {"Persönlicher Helm"};
  case "GOGGLES": {"Persönliche Gesichtsbekleidung"};
  case "SCOPE": {"Persönliches Visier"};
};

_id = [mcd_coTemplate_customGearArray, getPlayerUID player] call grad_customGear_fnc_findUID;
if (_id == -1) exitWith {systemChat format ["%1 nicht gefunden.", _modeName]};
_playerGear = mcd_coTemplate_customGearArray select _id;

_currentZoomFactor = [(player weaponAccessories (primaryWeapon player)) select 2] call grad_customGear_fnc_getZoomFactor;

switch (_mode) do {
  case "HELMET": {
    _helmet = _playerGear select 1;
    if (_helmet == "") exitWith {systemChat format ["%1 nicht gefunden.", _modeName]};
    player addHeadgear _helmet;
    systemChat format ["%1 geladen.", [_helmet] call grad_customGear_fnc_getDisplayName];
  };

  case "GOGGLES": {
    _goggles = _playerGear select 2;
    if (_goggles == "") exitWith {systemChat format ["%1 nicht gefunden.", _modeName]};
    player addGoggles _goggles;
    systemChat format ["%1 geladen.", [_goggles] call grad_customGear_fnc_getDisplayName];
  };

  case "SCOPE1": {
    //rus scope
    _scope = _playerGear select 6;
    if !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _scope) == 1) then {
      //us scope
      _scope = _playerGear select 3;
    };

    player addPrimaryWeaponItem _scope;
    systemChat format ["%1 geladen.", [_scope] call grad_customGear_fnc_getDisplayName];
  };

  case "SCOPE4": {
    //rus scope
    _scope = _playerGear select 7;
    if !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _scope) == 1) then {
      //us scope
      _scope = _playerGear select 4;
    };

    player addPrimaryWeaponItem _scope;
    systemChat format ["%1 geladen.", [_scope] call grad_customGear_fnc_getDisplayName];
  };

  case "SCOPEM": {
    //rus scope
    _scope = _playerGear select 7;
    if !(getNumber (configFile >> "CfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _scope) == 1) then {
      //us scope
      _scope = _playerGear select 5;
    };

    player addPrimaryWeaponItem _scope;
    systemChat format ["%1 geladen.", [_scope] call grad_customGear_fnc_getDisplayName];
  };
};

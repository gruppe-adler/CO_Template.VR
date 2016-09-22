/*  Updates save dialog on player with correct uid
*
*   Params:
*   0:  UID (string)
*/

params ["_uid"];
private ["_myGear"];

if (!hasInterface) exitWith {};
if (getPlayerUID player != _uid) exitWith {};

#include "..\..\saveDialog\defines.hpp"
disableSerialization;

_dialog = findDisplay sd_mainIDD;
if (isNull _dialog) exitWith {};

//get gear
_myID = [mcd_coTemplate_customGearArray, getplayerUID player] call grad_customgear_fnc_findUID;
if (_myID != -1) then {_myGear = mcd_coTemplate_customGearArray select _myID} else {_myGear = []};
_myGear params ["_uid",["_helmet", ""], ["_goggles", ""], ["_usScope1", ""], ["_usScope4", ""], ["_usScopeM", ""], ["_rusScope1", ""], ["_rusScope4", ""]];

//fill current column
{
  _displayName = [_x] call grad_customGear_fnc_getDisplayName;
  if (_displayName != "") then {
    _idc = sd_current0 + ((sd_current1 - sd_current0) * _forEachIndex);
    (_dialog displayCtrl _idc) ctrlSetText _displayName;
    (_dialog displayCtrl _idc) ctrlSetTextColor [0,0.8,0,1];
  };
} forEach [_helmet, _goggles, _usScope1, _usScope4, _usScopeM, _rusScope1, _rusScope4];


//get current gear
_curHelmet = headgear player;
_curGoggles = goggles player;
_curScope = (player weaponAccessories (primaryWeapon player)) select 2;


//set button text
If (_helmet != "") then {
  (_dialog displayCtrl sd_save0) ctrlSetText "überschreiben";
};
If (_goggles != "") then {
  (_dialog displayCtrl sd_save1) ctrlSetText "überschreiben";
};
If (_usScope1 != "") then {
  (_dialog displayCtrl sd_save2) ctrlSetText "überschreiben";
};
If (_usScope4 != "") then {
  (_dialog displayCtrl sd_save3) ctrlSetText "überschreiben";
};
If (_usScopeM != "") then {
  (_dialog displayCtrl sd_save4) ctrlSetText "überschreiben";
};
If (_rusScope1 != "") then {
  (_dialog displayCtrl sd_save5) ctrlSetText "überschreiben";
};
If (_rusScope4 != "") then {
  (_dialog displayCtrl sd_save6) ctrlSetText "überschreiben";
};


//disable buttons
if (_curHelmet == "") then {
  (_dialog displayCtrl sd_save0) ctrlEnable false;
};

if (_curGoggles == "") then {
  (_dialog displayCtrl sd_save1) ctrlEnable false;
};

if ([_curScope] call grad_customGear_fnc_isRussian) then {
  (_dialog displayCtrl sd_save2) ctrlEnable false;
  (_dialog displayCtrl sd_save3) ctrlEnable false;
  (_dialog displayCtrl sd_save4) ctrlEnable false;

  if ([_curScope] call grad_customGear_fnc_getZoomFactor > 1) then {
    (_dialog displayCtrl sd_save5) ctrlEnable false;
  };
} else {
  (_dialog displayCtrl sd_save5) ctrlEnable false;
  (_dialog displayCtrl sd_save6) ctrlEnable false;

  if ([_curScope] call grad_customGear_fnc_getZoomFactor > 1) then {
    (_dialog displayCtrl sd_save2) ctrlEnable false;
  };

  if ([_curScope] call grad_customGear_fnc_getZoomFactor >= 4) then {
    (_dialog displayCtrl sd_save3) ctrlEnable false;
  };
};

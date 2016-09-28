#include "..\..\saveDialog\defines.hpp"
disableSerialization;

//check if gear array exists
if (isNil "mcd_coTemplate_customGearArray") exitWith {
  _errorText = "grad_customgear_fnc_openDialog - ERROR: CUSTOM GEAR ARRAY NOT FOUND.";
  systemChat _errorText;
  diag_log _errorText;
};

//create dialog
createDialog "customGear_saveDialog";
[getPlayerUID player] call grad_customGear_fnc_updateDialog;

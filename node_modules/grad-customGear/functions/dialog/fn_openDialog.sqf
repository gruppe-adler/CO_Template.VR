#include "..\..\saveDialog\defines.hpp"
disableSerialization;

//check if gear array exists
if (isNil "mcd_coTemplate_customGearArray") exitWith {
    ["Custom gear array not found.","GRAD Custom Gear: ERROR"] call grad_customGear_fnc_notificationAndLog;
};

//create dialog
createDialog "customGear_saveDialog";
[getPlayerUID player] call grad_customGear_fnc_updateDialog;

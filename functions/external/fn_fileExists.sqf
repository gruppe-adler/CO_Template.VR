/* -----------------------------------------------------------------------------------------------
Function: KK_fnc_fileExists

Description: Checks if a file exists

Parameters: [Filepath]


Returns:  Bool
Examples:
          _fileExists = ["folder\script.sqf"] call KK_fnc_fileExists;

Author: KillzoneKid

-------------------------------------------------------------------------------------------------- */

#include "component.hpp"

params ["_filePath"];
private ["_ctrl", "_fileExists"];

disableSerialization;
_ctrl = findDisplay 0 ctrlCreate ["RscHTML", -1];
_ctrl htmlLoad _filePath;
_fileExists = ctrlHTMLLoaded _ctrl;
ctrlDelete _ctrl;

_fileExists

#include "component.hpp"

private _enable = ([missionConfigFile >> "CfgGradCivs","enableCivs",0] call BIS_fnc_returnConfigEntry) == 1;
if !(_enable) exitWith {};

[] call grad_civs_fnc_initModule;

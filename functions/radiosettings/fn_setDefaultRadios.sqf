#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* --------------------------------------------------------------------------------------------------------------
Function: GRAD_radiosettings_fnc_setDefaultRadios

Description: Sets default radios because apparently TFAR does not understand what the words "disable", "automatic" and "distribution" mean

              CLIENT

Parameters: []

Returns: []

Examples:
            [] call GRAD_radiosettings_fnc_setDefaultRadios;

Author: McDiod

----------------------------------------------------------------------------------------------------------------- */

_radios = [player] call FNC_SMC(radiosettings,getLoadoutRadios);
_radios params ["_shortrange", "_longrange"];

TF_defaultWestBackpack = _longrange;
TF_defaultEastBackpack = _longrange;
TF_defaultGuerBackpack = _longrange;
TF_defaultWestAirborneRadio = _longrange;
TF_defaultEastAirborneRadio = _longrange;
TF_defaultGuerAirborneRadio = _longrange;

TF_defaultWestPersonalRadio = _shortrange;
TF_defaultEastPersonalRadio = _shortrange;
TF_defaultGuerPersonalRadio = _shortrange;
TF_defaultWestRiflemanRadio = _shortrange;
TF_defaultEastRiflemanRadio = _shortrange;
TF_defaultGuerRiflemanRadio = _shortrange;

#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_radiosettings_fnc_activateSettings

Description: Activates settings on current radios.

Parameters: []

Returns:  []

Examples:
          [] call GRAD_radiosettings_fnc_activateSettings;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

_activeLR = [] call TFAR_fnc_activeLrRadio;
if (!isNil "_activeLR") then {
    _settings = switch (side player) do {
        case (WEST): {tf_freq_west_lr};
        case (EAST): {tf_freq_east_lr};
        case (INDEPENDENT): {tf_freq_guer_lr};
        default {tf_freq_west_lr};
    };
    [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _settings] call TFAR_fnc_setLrSettings;
};

_activeSR = [] call TFAR_fnc_activeSwRadio;
if (!isNil "_activeSR") then {
    _settings = switch (side player) do {
        case (WEST): {tf_freq_west};
        case (EAST): {tf_freq_east};
        case (INDEPENDENT): {tf_freq_guer};
        default {tf_freq_west};
    };
    [(call TFAR_fnc_activeSwRadio), _settings] call TFAR_fnc_setSwSettings;
};

GRAD_radioSettingsActivated = true;

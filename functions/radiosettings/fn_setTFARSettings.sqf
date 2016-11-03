#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_radiosettings_fnc_setTFARSettings

Description: Sets TFAR variables

Parameters: []

Returns:  []

Examples:
         [] call GRAD_radiosettings_fnc_setTFARSettings;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

//settings
tf_no_auto_long_range_radio = true;
TF_give_personal_radio_to_regular_soldier = false;
TF_give_microdagr_to_soldier = false;
tf_same_lr_frequencies_for_side = true;
tf_same_sw_frequencies_for_side = true;
TF_terrain_interception_coefficient = 6.0;

//default radios
if (!hasInterface) exitWith {};
[{!isNull player && missionNamespace getVariable ["GRAD_loadoutFactionSet", false]}, FNC_SMC(radiosettings,setDefaultRadios), []] call CBA_fnc_waitUntilAndExecute;

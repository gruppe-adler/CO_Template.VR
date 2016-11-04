#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_setGroupChannels

Description: Sets channels for player, based on settings defined by user in USERSCRIPTS.

Parameters: [groupSettings]

Returns:  []

Examples:
          [_groupSettings] call GRAD_groupsettings_fnc_setGroupChannels;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

_waitCondition = {
    _groupIndex = (group player) getVariable "grad_groupIndex";
    !isNil "_groupIndex" && !(missionNamespace getVariable ["TF_first_radio_request", true]) && missionNamespace getVariable ["GRAD_radioSettingsActivated", false];
};


[_waitCondition, {
    params ["_groupSettings"];
    _i = (group player) getVariable ["grad_groupIndex", 0];
    if (count _groupSettings - 1 >= _i) then {
        _mySettings = _groupSettings select _i;
        [(call TFAR_fnc_activeSwRadio), (_mySettings select 1)-1] call TFAR_fnc_setSwChannel;
        [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, (_mySettings select 2)-1] call TFAR_fnc_setLrChannel;
    };

    systemChat "Radio channels were set.";
}, [_groupSettings]] call CBA_fnc_waitUntilAndExecute;

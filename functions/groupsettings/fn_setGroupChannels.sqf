#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_setGroupChannels

Description: Sets additional channels and custom frequencies.

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

    _index = (group player) getVariable ["grad_groupIndex", 0];
    if (count _groupSettings > _index) then {

        _mySettings = _groupSettings select _index;
        _mySettings params ["_groupName", ["_srSettings", 0], ["_lrSettings", 0]];

        if (typeName _srSettings == "ARRAY") then {
            [_srSettings, "SHORTRANGE"] call GRAD_groupsettings_fnc_setAdditionalGroupChannels;
        } else {
            _srChannel = _srSettings - 1;
            if (_srChannel > 7) then {_srChannel = 0};
            [(call TFAR_fnc_activeSwRadio), _srChannel] call TFAR_fnc_setSwChannel;
        };

        if (typeName _lrSettings == "ARRAY") then {
            [_lrSettings, "LONGRANGE"] call GRAD_groupsettings_fnc_setAdditionalGroupChannels;
        } else {
            _lrChannel = _lrSettings - 1;
            if (_lrChannel > 8) then {_lrChannel = 0};
            [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _lrChannel] call TFAR_fnc_setLrChannel;
        };

    };
    systemChat "Radio channels were set.";
}, [_groupSettings]] call CBA_fnc_waitUntilAndExecute;

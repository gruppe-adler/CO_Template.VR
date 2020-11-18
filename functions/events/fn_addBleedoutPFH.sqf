#include "component.hpp"
#include "\z\ace\addons\medical\functions\script_component.hpp"

//10% of the default Blood Volume as failsafe
#define MIN_BLOOD_VOL (BLOOD_VOLUME_FATAL + 0.1 * DEFAULT_BLOOD_VOLUME)

if (([missionConfigFile >> "missionSettings", "bleedOutPrevention", 1] call BIS_fnc_returnConfigEntry) == 1) then {
    ["unit", {
        params ["_newUnit", "_oldUnit"];

        // remove old perFrameHandler if there is one
        // don't use QGVAR() here, because ACE script_component.hpp overrides our COMPONENT define
        private _id = missionNamespace getVariable ["GRAD_events_bleedoutPFH", -1];

        if (_id > -1) then { [_id] call CBA_fnc_removePerFrameHandler; };

        private _isRemoteControlledUnit = false;
        {
            if (getAssignedCuratorUnit _x isEqualTo _newUnit) exitWith {
                _isRemoteControlledUnit = true;
                _isRemoteControlledUnit;
            };
        } forEach allCurators;

        // exit, if unit doesn't exist, or is remote-controlled
        if (isNull _newUnit || {_isRemoteControlledUnit}) exitWith {};

        private _handle = [{
            params ["_unit", "_handle"];
            //check if player is awake and bleeding
            if (!IS_UNCONSCIOUS(_unit) || {!IS_BLEEDING(_unit)}) exitWith {};
            //check if player falls below threshold and set threshold as new value
            if (GET_BLOOD_VOLUME(_unit) < MIN_BLOOD_VOL) then {
                _unit setVariable [VAR_BLOOD_VOL, MIN_BLOOD_VOL, true];
            };
        }, 1, _newUnit] call CBA_fnc_addPerFrameHandler;

        // don't use QGVAR() here, because ACE script_component.hpp overrides our COMPONENT define
        missionNamespace setVariable ["GRAD_events_bleedoutPFH", _handle];
    }, true] call CBA_fnc_addPlayerEventHandler;
};

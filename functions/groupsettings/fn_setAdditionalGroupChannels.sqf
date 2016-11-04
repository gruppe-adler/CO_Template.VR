#include "script_component.hpp"
#include "\x\cba\addons\main\script_macros_mission.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: GRAD_groupsettings_fnc_setAdditionalGroupChannels

Description: Sets additional channels, based on settings defined by user in USERSCRIPTS.

Parameters: [settings, mode]

Returns:  []

Examples:
          [_srSettings, "SHORTRANGE"] call GRAD_groupsettings_fnc_setDynamicGroupNames;

Author: McDiod

------------------------------------------------------------------------------------------------------------- */

params ["_settings", ["_mode", ""]];
if (_mode != "SHORTRANGE" && _mode != "LONGRANGE") exitWith {WARNING("invalid mode")};
_settings params [["_channel", 1], ["_altChannel", 0], ["_altTLOnly", true], ["_customFreqs", []]];

//custom freqs
_currentSettings = switch (_mode) do {
    case "SHORTRANGE": {(call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings};
    case "LONGRANGE": {(call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings};
};
if (isNil "_currentSettings") exitWith {};

switch (_mode) do {
    case "SHORTRANGE":  {
                            _customFreqs = _customFreqs apply {if (_x > 0 && (_x < 30 || _x > 512)) then {30} else {_x}};
                            if (count _customFreqs > 8) then {_customFreqs resize 8};
                        };
    case "LONGRANGE":   {
                            _customFreqs = _customFreqs apply {if (_x > 0 && (_x < 30 || _x > 87)) then {30} else {_x}};
                            if (count _customFreqs > 9) then {_customFreqs resize 9};
                        };
};

_currentFreqs = _currentSettings select 2;
{
    _freq = _x;
    if (_freq > 0) then {
        if (typeName _freq != "STRING") then {_freq = str _freq};
        _currentFreqs set [_forEachIndex, _freq];
    };
} forEach _customFreqs;

switch (_mode) do {
    case "SHORTRANGE":  {[(call TFAR_fnc_activeSwRadio), _currentSettings] call TFAR_fnc_setSwSettings};
    case "LONGRANGE":   {[(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _currentSettings] call TFAR_fnc_setLrSettings};
};


//channels
_channel = _channel - 1;
_altChannel = _altChannel - 1;

switch (_mode) do {
    case "SHORTRANGE":  {
                            if (_channel > 7) then {_channel = 0};
                            [(call TFAR_fnc_activeSwRadio), _channel] call TFAR_fnc_setSwChannel;
                        };
    case "LONGRANGE":   {
                            if (_channel > 8) then {_channel = 0};
                            [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _channel] call TFAR_fnc_setLrChannel;
                        };
};


//alt channels
if (leader group player != player && _altTLOnly) exitWith {};
switch (_mode) do {
    case "SHORTRANGE":  {
                            if (_altChannel > 7) then {_altChannel = 0};
                            [(call TFAR_fnc_activeSwRadio), _altChannel] call TFAR_fnc_setAdditionalSwChannel;
                            [(call TFAR_fnc_ActiveSWRadio), 1] call TFAR_fnc_setAdditionalSwStereo;
                        };
    case "LONGRANGE":   {
                            if (_altChannel > 8) then {_altChannel = 0};
                            [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _altChannel] call TFAR_fnc_setAdditionalLrChannel;
                            [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, 2] call TFAR_fnc_setAdditionalLrStereo;
                        };
};

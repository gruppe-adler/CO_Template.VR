if !(isClass (configFile >> "CfgPatches" >> "tfar_core")) exitWith {
    systemChat "radiosettings: not activated (tfar < 1.0)";
};

_activeLR = [] call TFAR_fnc_activeLrRadio;
if (!isNil "_activeLR") then {
    _settings = switch (side player) do {
        case (WEST): {tf_freq_west_lr};
        case (EAST): {tf_freq_east_lr};
        case (INDEPENDENT): {tf_freq_guer_lr};
        default {tf_freq_west_lr};
    };
    [call TFAR_fnc_activeLrRadio, _settings] call TFAR_fnc_setLrSettings;
};

_activeSR = [] call TFAR_fnc_activeSwRadio;
if (!isNil "_activeSR") then {
    _settings = switch (side player) do {
        case (WEST): {tf_freq_west};
        case (EAST): {tf_freq_east};
        case (INDEPENDENT): {tf_freq_guer};
        default {tf_freq_west};
    };
    [call TFAR_fnc_activeSwRadio, _settings] call TFAR_fnc_setSwSettings;
};

systemChat "radiosettings: activated";
GRAD_radioSettingsActivated = true;

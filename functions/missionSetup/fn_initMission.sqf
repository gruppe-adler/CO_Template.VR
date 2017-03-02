[] call grad_missionSetup_fnc_loadouts;
[] call grad_missionSetup_fnc_setTimeMultiplicator;
[] call grad_missionSetup_fnc_createDiaryRecords;
[] call grad_missionSetup_fnc_intro;
[] call grad_radiosettings_fnc_setRadioSettings;
[] call grad_groupsettings_fnc_setGroupSettings;

if (hasInterface) then {
    //activate radiosettings
    _loadoutWaitCondition = if (isClass (missionConfigFile >> "CfgFunctions" >> "GRAD_loadout")) then {{player getVariable ["GRAD_loadout_applicationCount", 0] > 0}} else {true};

    [{!isNil {(group player) getVariable "grad_groupIndex"} && _this}, {
        if ((assignedItems player) select 3 == "") exitWith {systemChat "radiosettings: No radio in loadout. Exiting..."};

        [{count (((assignedItems player) select 3) splitString "_") > 2}, {
            [{[] call GRAD_radiosettings_fnc_activateSettings}, [], 1] call CBA_fnc_waitAndExecute;
        }, []] call CBA_fnc_waitUntilAndExecute;
    }, _loadoutWaitCondition] call CBA_fnc_waitUntilAndExecute;
};

if (([missionConfigFile >> "missionSettings","miniMissionsEnabled",0] call BIS_fnc_returnConfigEntry) == 1) then {


    ["CO Template Modules", "Respawn all/Start next Mini Mission", {
        [] remoteExec ["grad_minimissions_fnc_respawnPlayer", 0];
    }] call zen_custom_modules_fnc_register;


    if (hasInterface) then {
        [] call grad_radiosettings_fnc_transferRadiosAcrossRespawn;
    };

};

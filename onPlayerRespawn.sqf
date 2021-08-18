["Terminate"] call BIS_fnc_EGSpectator;

if (([missionConfigFile >> "missionSettings","waveRespawnEnabled",0] call BIS_fnc_returnConfigEntry) == 1) then {
    [] call grad_waverespawn_fnc_onPlayerRespawn;
};

if (([missionConfigFile >> "missionSettings","miniMissionsEnabled",0] call BIS_fnc_returnConfigEntry) == 1) then {
    [] call grad_minimissions_fnc_onPlayerRespawn;
};

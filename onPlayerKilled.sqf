//WAVE RESPAWN

private _waveRespawnEnabled = ([missionConfigFile >> "missionSettings" >> "respawnSettings","waveRespawnEnabled",0] call BIS_fnc_returnConfigEntry) == 1;
private _miniMissionsEnabled = ([missionConfigFile >> "missionSettings" >> "respawnSettings","miniMissionsEnabled",0] call BIS_fnc_returnConfigEntry) == 1;

if (_waveRespawnEnabled) then {
    [] call grad_waverespawn_fnc_onPlayerKilled;
};

//MINI MISSIONS
if (_miniMissionsEnabled) then {
    [] call grad_minimissions_fnc_onPlayerKilled;
};

//NORMAL RESPAWN
if (!_waveRespawnEnabled && !_miniMissionsEnabled) then {
    _respawnTimeVar = switch (playerSide) do {
        case (WEST): {"respawntimeBlu"};
        case (EAST): {"respawntimeOpf"};
        case (INDEPENDENT): {"respawntimeInd"};
        default {"respawntimeBlu"};
    };
    _respawnTime = [missionConfigFile >> "missionSettings" >> "respawnSettings",_respawnTimeVar,10] call BIS_fnc_returnConfigEntry;

    if (_respawnTime > 1800) then {
        ["Terminate"] call BIS_fnc_EGSpectator;
        ["Initialize", [player, [WEST,EAST,INDEPENDENT], true]] call BIS_fnc_EGSpectator;
    } else {
        ["Terminate"] call BIS_fnc_EGSpectator;
        ["Initialize", [player, [playerside], false, false, false, true, true, true, true, true]] call BIS_fnc_EGSpectator;
    };

    setPlayerRespawnTime _respawnTime;
    forceRespawn player;
};

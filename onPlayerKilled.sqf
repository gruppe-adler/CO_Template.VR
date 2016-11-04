if (GRAD_waveRespawn) then {
    [] execVM "wave_respawn\onPlayerKilled.sqf";
};

if (respawnTime > 30 && !GRAD_waveRespawn) then {
    ["Initialize", [player, [], true]] call BIS_fnc_EGSpectator;
};

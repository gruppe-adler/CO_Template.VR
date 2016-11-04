if (GRAD_waveRespawn) then {
    [] execVM "wave_respawn\onPlayerRespawn.sqf";
};

["Terminate"] call BIS_fnc_EGSpectator;

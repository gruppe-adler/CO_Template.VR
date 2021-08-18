
if (player getVariable ["ACE_isUnconscious", false]) then {
    [player, player] call ace_medical_treatment_fnc_fullHeal;
};

if (!alive player) then {
    setPlayerRespawnTime 1;
};

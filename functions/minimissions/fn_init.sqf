if (([missionConfigFile >> "missionSettings","miniMissionsEnabled",0] call BIS_fnc_returnConfigEntry) == 1) then {

        player setVariable ["grad_minimissions_playerObject", player, true];
};
/*
if (isServer) then {

    {
        if (([missionConfigFile >> "missionSettings" >> "respawnSettings","miniMissionsEnabled",0] call BIS_fnc_returnConfigEntry) == 1) then {

                _x setVariable ["grad_minimissions_unitName", _x, true];
        };
    } forEach playableUnits + switchableUnits;

    // make JIP proof
    onPlayerConnected { 
        {
            if ( _uid == _player) exitWith {
                _x setVariable ["grad_minimissions_unitName", _x, true];
            };
        } forEach playableUnits + switchableUnits;
        
    };
};
*/
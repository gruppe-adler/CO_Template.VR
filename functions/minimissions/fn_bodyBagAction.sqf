params ["_bodybag"];

private _displayName = "Respawn casualty";
private _action = ["grad_minimissions_respawnAction", _displayName, "\A3\ui_f\data\igui\cfg\actions\heal_ca.paa", {
    
    private _player = _target getVariable ["grad_minimissions_playerObject", objNull];

    if (!isNull _player) then {
        [_target, _player] remoteExec ["grad_minimissions_fnc_respawnPlayer", _player];
    };
}, {!isNull (_target getVariable ["grad_minimissions_playerObject", objNull])}] call ace_interact_menu_fnc_createAction;

[_bodybag, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _displayName = "Respawn casualty (DONE)";
private _action = ["grad_minimissions_respawnAction", _displayName, "\A3\ui_f\data\igui\cfg\actions\heal_ca.paa", {
    
    hint "already respawned";
}, {isNull (_target getVariable ["grad_minimissions_playerObject", objNull])}] call ace_interact_menu_fnc_createAction;
[_bodybag, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
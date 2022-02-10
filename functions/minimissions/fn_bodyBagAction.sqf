params ["_bodybag"];

private _displayName = "Respawn casualty";
private _action = ["grad_minimissions_respawnAction", _displayName, "\A3\ui_f\data\igui\cfg\actions\heal_ca.paa", {
    
    private _name = _target getVariable ["grad_minimissions_unitName", ""];
    private _unit = objNull;
    {
        if (name _x == _name) exitWith {
            _unit = _x;
            [_target, _unit] remoteExec ["grad_minimissions_fnc_respawnPlayer", _unit];
        };
    } forEach allDead;
    
}, {(_target getVariable ["grad_minimissions_unitName", ""]) != ""}] call ace_interact_menu_fnc_createAction;

[_bodybag, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _displayName = "Respawn casualty (DONE)";
private _action = ["grad_minimissions_respawnAction", _displayName, "\A3\ui_f\data\igui\cfg\actions\heal_ca.paa", {
    
    hint "already respawned";
}, {(_target getVariable ["grad_minimissions_unitName", ""]) == ""}] call ace_interact_menu_fnc_createAction;
[_bodybag, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
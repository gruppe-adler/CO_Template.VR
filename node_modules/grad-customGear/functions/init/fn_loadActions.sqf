/*    Adds load actions to player and removes them after time
*
*/

params [["_mode","MANUAL"]];

if (_mode == "postInit" && ([(missionConfigFile >> "CfgGradCustomGear"), "actionsOnMissionStart", 1] call BIS_fnc_returnConfigEntry) == 0) exitWith {};

[] spawn {
    private ["_action"];

    //wait until other loadout scripts are done
    waitUntil {!isNull player};
    if (isclass (missionConfigFile >> "Loadouts")) then {
        waitUntil {(player getVariable ["GRAD_loadout_applicationCount", 0]) > 0};
    } else {
        sleep 10;
    };
    sleep 3;

    //get config values
    _allowHelmet            = getNumber (missionConfigFile >> "CfgGradCustomGear" >> "allowHelmet") == 1;
    _allowGoggles           = getNumber (missionConfigFile >> "CfgGradCustomGear" >> "allowGoggles") == 1;
    _allowSimpleScopes      = getNumber (missionConfigFile >> "CfgGradCustomGear" >> "allowSimpleScopes") == 1;
    _allowMagnifyingScopes  = getNumber (missionConfigFile >> "CfgGradCustomGear" >> "allowMagnifyingScopes") == 1;
    _allowMarksmanScopes    = getNumber (missionConfigFile >> "CfgGradCustomGear" >> "allowMarksmanScopes") == 1;

    //add actions
    if (!isNil "grad_customGear_actionID1") then {player removeAction grad_customGear_actionID1; grad_customGear_actionID1 = -1} else {grad_customGear_actionID1 = -1};
    if (!isNil "grad_customGear_actionID2") then {player removeAction grad_customGear_actionID2; grad_customGear_actionID2 = -1} else {grad_customGear_actionID2 = -1};
    if (!isNil "grad_customGear_actionID3") then {player removeAction grad_customGear_actionID3; grad_customGear_actionID3 = -1} else {grad_customGear_actionID3 = -1};
    if (_allowHelmet) then {
        _action = {["HELMET", _this select 2] call grad_customGear_fnc_loadGear};
        grad_customGear_actionID1 = player addAction ["<t color='#00ff00'>load custom helmet</t>", _action, [], 2, false, true];
    };

    if (_allowGoggles) then {
        _action = {["GOGGLES", _this select 2] call grad_customGear_fnc_loadGear};
        grad_customGear_actionID2 = player addAction ["<t color='#00ff00'>load custom facewear</t>", _action, [], 2, false, true];
    };

    _currentZoomFactor = [(player weaponAccessories (primaryWeapon player)) select 2] call grad_customGear_fnc_getZoomFactor;
    if (_allowSimpleScopes && _currentZoomFactor == 1) then {
        _action = {["SCOPE1", _this select 2] call grad_customGear_fnc_loadGear};
        grad_customGear_actionID3 = player addAction ["<t color='#00ff00'>load custom sights</t>", _action, [], 2, false, true];
    };
    if (_allowMagnifyingScopes && _currentZoomFactor > 1 && _currentZoomFactor < 4) then {
        _action = {["SCOPE4", _this select 2] call grad_customGear_fnc_loadGear};
        grad_customGear_actionID3 = player addAction ["<t color='#00ff00'>load custom scope</t>", _action, [], 2, false, true];
    };
    if (_allowMarksmanScopes && _currentZoomFactor >= 4) then {
        _action = {["SCOPEM", _this select 2] call grad_customGear_fnc_loadGear};
        grad_customGear_actionID3 = player addAction ["<t color='#00ff00'>load custom scope</t>", _action, [], 2, false, true];
    };


    //exit if no actions added
    if ({_x != -1} count [grad_customGear_actionID1, grad_customGear_actionID2, grad_customGear_actionID3] == 0) exitWith {};

    ["Custom equipment can now be loaded."] call grad_customGear_fnc_notificationAndLog;

    //remove action after time
    grad_customGear_removeTime = time + 120;
    if (!isNil "grad_customGear_removeActionTimer") exitWith {};
    grad_customGear_removeActionTimer = [] spawn {
        waitUntil {time > grad_customGear_removeTime};

        if (grad_customGear_actionID1 != -1) then {
            if !(player getVariable ["grad_customGear_HelmetLoaded", false]) then {
                player removeAction grad_customGear_actionID1;
            };
        };

        if (grad_customGear_actionID2 != -1) then {
            if !(player getVariable ["grad_customGear_GogglesLoaded", false]) then {
                player removeAction grad_customGear_actionID2;
            };
        };

        if (grad_customGear_actionID3 != -1) then {
            if !(player getVariable ["grad_customGear_ScopeLoaded", false]) then {
                player removeAction grad_customGear_actionID3;
            };
        };
        grad_customGear_removeActionTimer = nil;
    };
};

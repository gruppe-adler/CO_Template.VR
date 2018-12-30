if (hasInterface) then {
    if (isNull (getAssignedCuratorLogic player)) exitWith {};

    {  
        // EH is aLocal
        _x addEventHandler ["CuratorGroupPlaced", {
            params ["", "_group"];
            ["grad_zeus_setServerAsOwner", [_group]] call CBA_fnc_serverEvent;
        }];

        // EH is aLocal
        _x addEventHandler ["CuratorObjectPlaced", {
            params ["", "_object"];

            if (_object isKindOf "CAManBase") then {
                if (count units _object == 1) then {
                    ["grad_zeus_setServerAsOwner", [group _object]] call CBA_fnc_serverEvent;
                };
            } else {
                if (count crew _object > 1) then {
                    ["grad_zeus_setServerAsOwner", [group (crew _object select 0)]] call CBA_fnc_serverEvent;
                };
            };
        }];

        // EH is aGlobal
        _x addEventHandler ["Local", {
            params ["_entity", "_isLocal"];

            if (!hasInterface && !isServer && _isLocal) then {
                // arrived on a headless. now double check loadout

                [{
                    params ["_entity"];

                    // setunitloadout class as a fallback, if unit is naked
                    if ((uniform _entity) isEqualTo "") then {
                        _entity setUnitLoadout (typeOf _entity);
                    };
                }, [_entity], 3] call CBA_fnc_waitAndExecute;
            };
        }];

    } forEach allCurators;
};

if (isServer) then {
    ["GRAD_missionControl_setServerAsOwner", {
        params ["_group"];

        // make unit editable for all zeus
        if([_group] isEqualTypeParams [grpNull])then{
            {
                _x addCuratorEditableObjects [units _group, true];
            } forEach (entities "moduleCurator_F");
        };

        // change owner to server by default
        _group setGroupOwner 2;

        // reapply loadout if necessary
        [{
            params ["_group"];

            // setunitloadout class as a fallback, if unit is naked
            {
                if ((uniform _x) isEqualTo "") then {
                    _x setUnitLoadout (typeOf _x);
                };
            } forEach units _group;
        }, [_group], 3] call CBA_fnc_waitAndExecute;
       
    }] call CBA_fnc_addEventHandler;
};
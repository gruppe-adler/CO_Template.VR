if (isServer) then {

        // body bag scanner
        ["ace_placedInBodyBag", {
                params ["_target", "_bodyBag"];
                diag_log format ["placedInBodyBag _target %1 - bodybag %2", _target, _bodyBag];
                
                private _name = name _target;
                _bodyBag setVariable ["grad_minimissions_unitName", _name, true];

                [_bodyBag, 1] call ace_cargo_fnc_setSize;
                [_bodyBag, true, [0, 1.6, 0.26], 0] remoteExec ["ace_dragging_fnc_setDraggable", 0];

                [_bodyBag] remoteExec ["grad_minimissions_fnc_bodyBagAction"];


        }] call CBA_fnc_addEventHandler;

};
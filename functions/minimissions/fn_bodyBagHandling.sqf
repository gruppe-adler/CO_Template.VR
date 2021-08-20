// body bag scanner
["ace_placedInBodyBag", {
        diag_log format ["placedInBodyBag eh %1", _this];
        params ["_deadGuy", "_bodyBag"];

        private _position = getPos _bodyBag;
        private _playerObj = _deadGuy getVariable ["grad_minimissions_playerObject", objNull];

        [_bodyBag, 1] call ace_cargo_fnc_setSize;
        [_bodyBag, true, [0, 1.6, 0.26], 0] remoteExec ["ace_dragging_fnc_setDraggable", 0];

        diag_log format ["putting someone into bodybag %1, player is %2.", _bodyBag, _playerObj];


}] call CBA_fnc_addEventHandler;

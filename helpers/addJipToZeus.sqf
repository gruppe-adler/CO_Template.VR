if (!isServer) exitWith {};

_unit = _this select 0;
{
    _x addCuratorEditableObjects [[_unit], true];
} forEach allCurators;

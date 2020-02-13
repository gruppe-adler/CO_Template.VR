enableSentences false;
enableRadio false;
enableSaving [false, false];

2 enableChannel false;  // command
4 enableChannel false;  // vehicle
5 enableChannel false;  // direct

// SCRIPTS =====================================================================
[] execVM "USER\userInit.sqf";

// Script to enable deadly wounds, caused by Limp injuries (by diwako)
["ace_medical_woundReceived", {
    [{
        params ["_unit", "_woundedHitPoint", "_receivedDamage", "", "_ammo"];
        if (isPlayer _unit) exitWith {};
        [_unit, _woundedHitPoint, _receivedDamage, _ammo call ace_medical_damage_fnc_getTypeOfDamage] call diw_medical_woundsHandlerAI;
    },_this] call CBA_fnc_execNextFrame;
}] call CBA_fnc_addEventHandler;

diw_medical_woundsHandlerAI = {
    if (ace_medical_fatalDamageSource isEqualTo 0) exitWith {};
    params ["_unit", "_bodyPart", "_damage", "_typeOfDamage"];
    private _bodyPartN = ["head", "body", "leftarm", "rightarm", "leftleg", "rightleg"] find toLower _bodyPart;
    if (_bodyPartN < 2) exitWith {};

    if ((_typeOfDamage isEqualTo "") || {isNil {ace_medical_damage_allDamageTypesData getVariable _typeOfDamage}}) then {
        _typeOfDamage = "unknown";
    };
    private _damageTypeInfo = [ace_medical_damage_allDamageTypesData getVariable _typeOfDamage] param [0, [[], false, []]];
    _damageTypeInfo params ["_thresholds"];

    (_unit getVariable ["ace_medical_bodyPartDamage", [0,0,0,0,0,0]]) params ["", "", "_leftarmDamage", "_rightarmDamage", "_leftlegDamage", "_rightlegDamage"];
    {
        _x params ["_thresholdMinDam", "_thresholdWoundCount"];
        if (_damage > _thresholdMinDam) exitWith {
            private _woundDamage = _damage / (_thresholdWoundCount max 1);
            private _limbThreshhold = 12 * ace_medical_AIDamageThreshold;
            private _vitalDamage = ((_leftarmDamage + _rightarmDamage + _leftlegDamage + _rightlegDamage) - _limbThreshhold) max 0;
            private _chanceFatal = 1 - exp -((_vitalDamage/ace_medical_const_fatalSumDamageWeibull_L)^ace_medical_const_fatalSumDamageWeibull_K);

            if (_chanceFatal > random 1) then {
                ["ace_medical_FatalInjury", _unit] call CBA_fnc_localEvent;
            };
        };
    } forEach _thresholds;
};
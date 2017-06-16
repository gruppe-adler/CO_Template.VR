/*    Saves text under a category and diag_logs it line per line
*
*/

#include "component.hpp"

params ["_mode", ["_category",""], ["_log", ""]];

_category = [_category] call BIS_fnc_filterString;
if (count _category == 0) exitWith {};

_varName = "GRAD_diagReport_" + _category;

switch (_mode) do {
    case "LOG": {
        if (isNil _varName) then {missionNamespace setVariable [_varName, []]};
        _report = missionNamespace getVariable [_varName, []];

        //input is a variable
        if (!isNil _log) then {
            _report pushBack (format ["%1: %2", _log, call compile _log]);

        //input is text
        } else {
            _report pushBack _log;
        };
    };

    case "PRINT": {
        if (isNil _varName) exitWith {};
        _var = call compile _varName;
        diag_log format ["%1 REPORT ===================================================================================", _category];
        {
            if (typeName _x != "STRING") then {
                diag_log str _x;
            } else {
                diag_log _x;
            };
        } forEach _var;
        diag_log format ["END OF %1 REPORT ============================================================================", _category];
    };
};

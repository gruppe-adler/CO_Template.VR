/*  Double checks if loadout was lost during ownership transfer.
*   Workaround for naked units problem.
*   Added in cfgEventHandlers.
*/

#include "component.hpp"

params ["_unit","_isLocal"];

if (_isLocal) then {
    [{
        private _loadoutApplicationCountPre = _unit getVariable ["grad_loadout_applicationCount",0];
        [_unit] call grad_loadout_fnc_doLoadoutForUnit;

        // no grad loadout found and unit is naked? --> apply class loadout
        if ((_unit getVariable ["grad_loadout_applicationCount",0]) == _loadoutApplicationCountPre && {(uniform _unit) == ""}) then {
            _unit setUnitLoadout (typeOf _unit);
        };
    }, [_unit], 1] call CBA_fnc_waitAndExecute;
};

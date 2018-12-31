/*  Double checks if loadout was lost during ownership transfer.
*   Workaround for naked units problem.
*   Added in cfgEventHandlers.
*/

#include "component.hpp"

params ["_unit","_isLocal"];

if (_isLocal) then {
    [{
        params ["_unit"];

        // setunitloadout class as a fallback, if unit is naked
        if ((uniform _unit) isEqualTo "") then {
            _unit setUnitLoadout (typeOf _unit);
        };
    }, [_unit], 3] call CBA_fnc_waitAndExecute;
};

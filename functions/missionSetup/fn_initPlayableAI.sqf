#include "component.hpp"

{
    if (local _x && !isPlayer _x) then {
        _x disableAI "ALL";
    };
    false
} count playableUnits;

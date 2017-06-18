#include "component.hpp"

player setVariable ["grad_radiosReceived",false];

["waitForInit", "OnRadiosReceived", {
    player setVariable ["grad_radiosReceived",true];
    ["waitForInit","OnRadiosReceived"] call TFAR_fnc_removeEventHandler;
}, player] call TFAR_fnc_addEventHandler;

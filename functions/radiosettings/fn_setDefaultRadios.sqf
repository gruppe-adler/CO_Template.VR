#include "component.hpp"

if (typeOf player == "VirtualCurator_F") exitWith {};
if (typeOf player == "B_VirtualCurator_F") exitWith {};
if (typeOf player == "C_VirtualCurator_F") exitWith {};
if (typeOf player == "I_VirtualCurator_F") exitWith {};
if (typeOf player == "O_VirtualCurator_F") exitWith {};

_radios = [player] call GRAD_radiosettings_fnc_getLoadoutRadios;
_radios params ["_shortrange", "_longrange"];

TFAR_DefaultRadio_Backpack_West         = _longrange;
TFAR_DefaultRadio_Backpack_East         = _longrange;
TFAR_DefaultRadio_Backpack_Independent  = _longrange;
TFAR_DefaultRadio_Airborne_West         = _longrange;
TFAR_DefaultRadio_Airborne_East         = _longrange;
TFAR_DefaultRadio_Airborne_Independent  = _longrange;

TFAR_DefaultRadio_Personal_West         = _shortrange;
TFAR_DefaultRadio_Personal_East         = _shortrange;
TFAR_DefaultRadio_Personal_Independent  = _shortrange;
TFAR_DefaultRadio_Rifleman_West         = _shortrange;
TFAR_DefaultRadio_Rifleman_East         = _shortrange;
TFAR_DefaultRadio_Rifleman_Independent  = _shortrange;

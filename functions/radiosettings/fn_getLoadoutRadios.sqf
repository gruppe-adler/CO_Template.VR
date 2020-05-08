#include "component.hpp"

if (!isClass (missionConfigFile >> "CfgFunctions" >> "GRAD_loadout")) exitWith {WARNING("No grad-loadout - can't extract radios.")};

params ["_unit"];

_configPath = missionConfigFile >> "Loadouts";
_loadoutHash = [_unit, _configPath] call GRAD_Loadout_fnc_GetUnitLoadoutFromConfig;
[_loadoutHash] call GRAD_Loadout_fnc_randomizeLoadout;

_unitLoadout = getUnitLoadout _unit;
_loadout = [_loadoutHash, _unitLoadout] call GRAD_Loadout_fnc_hashToUnitLoadout;

_shortrange = (_loadout select 9) select 2;
_longrange = if (count (_loadout select 5) == 0) then {""} else {(_loadout select 5) select 0};
if (_longrange find "tf_" != 0) then {_longrange = ""};

[_shortrange, _longrange]

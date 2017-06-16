#include "component.hpp"

params ["_unitName","_side"];

_unitName = [_unitName] call BIS_fnc_filterString;

switch (_side) do {
    case (WEST): {
        if (_unitName in deadPlayersBlu) then {
            deadPlayersBlu deleteAt (([deadPlayersBlu,_unitName] call BIS_fnc_arrayFindDeep) select 0);
            INFO_1("Player %1 respawned and has been removed from deadPlayersBlu.", _unitName);
        } else {
            ERROR_1("Player %1 is not in deadPlayersBlu.", _unitName);
        };
    };

    case (EAST): {
        if (_unitName in deadPlayersOpf) then {
            deadPlayersOpf deleteAt (([deadPlayersOpf,_unitName] call BIS_fnc_arrayFindDeep) select 0);
            INFO_1("Player %1 respawned and has been removed from deadPlayersOpf.", _unitName);
        } else {
            ERROR_1("Player %1 is not in deadPlayersOpf", _unitName);
        };
    };

    case (INDEPENDENT): {
        if (_unitName in deadPlayersInd) then {
            deadPlayersInd deleteAt (([deadPlayersInd,_unitName] call BIS_fnc_arrayFindDeep) select 0);
            INFO_1("Player %1 respawned and has been removed from deadPlayersInd.", _unitName);
        } else {
            ERROR_1("Player %1 is not in deadPlayersInd", _unitName);
        };
    };

    default {ERROR_1("Player %1 is neither WEST nor EAST nor INDEPENDENT.", _unitName)};
};

[{
    WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE - (count deadPlayersBlu);
    WAVERESPAWNPLAYERSLEFTOPF = OPFORWAVESIZE - (count deadPlayersOpf);
    WAVERESPAWNPLAYERSLEFTIND = INDEPWAVESIZE - (count deadPlayersInd);
    publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
    publicVariable "WAVERESPAWNPLAYERSLEFTOPF";
    publicVariable "WAVERESPAWNPLAYERSLEFTIND";
}, [], (RESPAWNWAVEEXTRATIME max 7)] call CBA_fnc_waitAndExecute;

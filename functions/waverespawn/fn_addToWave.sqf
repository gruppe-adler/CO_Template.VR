#include "component.hpp"

params ["_deadPlayerName", ["_deadPlayerSide", sideUnknown]];

if (isNil "deadPlayersBlu") then {deadPlayersBlu = []};
if (isNil "deadPlayersOpf") then {deadPlayersOpf = []};
if (isNil "deadPlayersInd") then {deadPlayersInd = []};

_deadPlayerName = [_deadPlayerName] call BIS_fnc_filterString;

//add player to array
switch (_deadPlayerSide) do {
    case (WEST): {
        deadPlayersBlu pushBackUnique _deadPlayerName;
        INFO_2("Added player %1 to deadPlayersBlu. %2 dead blufor total.", _deadPlayerName, count deadPlayersBlu);
        WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE - (count deadPlayersBlu);
        publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
    };
    case (EAST): {
        deadPlayersOpf pushBackUnique _deadPlayerName;
        INFO_2("Added player %1 to deadPlayersOpf. %2 dead opfor total.", _deadPlayerName, count deadPlayersOpf);
        WAVERESPAWNPLAYERSLEFTOPF = OPFORWAVESIZE - (count deadPlayersOpf);
        publicVariable "WAVERESPAWNPLAYERSLEFTOPF";
    };
    case (INDEPENDENT): {
        deadPlayersInd pushBackUnique _deadPlayerName;
        INFO_2("Added player %1 to deadPlayersOpf. %2 dead opfor total.", _deadPlayerName, count deadPlayersInd);
        WAVERESPAWNPLAYERSLEFTIND = INDEPWAVESIZE - (count deadPlayersInd);
        publicVariable "WAVERESPAWNPLAYERSLEFTIND";
    };
    default {
        ERROR_1("Unknown side for player %1", _deadPlayerName);
    };
};

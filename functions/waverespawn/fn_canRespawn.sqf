#include "component.hpp"

params ["_side"];

_canRespawn = switch (_side) do {
    case ("WEST"): {
        count deadPlayersBlu >= BLUFORWAVESIZE &&
        WAVERESPAWNTIMELEFTBLU <= 0
    };
    case ("EAST"): {
        count deadPlayersOpf >= OPFORWAVESIZE &&
        WAVERESPAWNTIMELEFTOPF <= 0
    };
    case ("INDEPENDENT"): {
        count deadPlayersInd >= INDEPWAVESIZE &&
        WAVERESPAWNTIMELEFTIND <= 0
    };
    default {
        false
    };
};

_canRespawn

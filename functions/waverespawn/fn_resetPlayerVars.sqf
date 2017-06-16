#include "component.hpp"

switch (playerSide) do {
    case (WEST): {
        player setVariable ["wr_waitCondition", {!WAVERESPAWNBLU}];
        player setVariable ["wr_interruptCondition", {false}];
        player setVariable ["wr_playersLeft", {WAVERESPAWNPLAYERSLEFTBLU}];
        player setVariable ["wr_waveTimeLeft", {WAVERESPAWNTIMELEFTBLU}];
        player setVariable ["wr_waveSize", BLUFORWAVESIZE];
    };
    case (EAST): {
        player setVariable ["wr_waitCondition", {!WAVERESPAWNOPF}];
        player setVariable ["wr_interruptCondition", {false}];
        player setVariable ["wr_playersLeft", {WAVERESPAWNPLAYERSLEFTOPF}];
        player setVariable ["wr_waveTimeLeft", {WAVERESPAWNTIMELEFTOPF}];
        player setVariable ["wr_waveSize", OPFORWAVESIZE];
    };
    case (INDEPENDENT): {
        player setVariable ["wr_waitCondition", {!WAVERESPAWNIND}];
        player setVariable ["wr_interruptCondition", {false}];
        player setVariable ["wr_playersLeft", {WAVERESPAWNPLAYERSLEFTIND}];
        player setVariable ["wr_waveTimeLeft", {WAVERESPAWNTIMELEFTIND}];
        player setVariable ["wr_waveSize", INDEPWAVESIZE];
    };
    default {
        ERROR_1("Playerside is %1",playerSide);
    };
};

player setVariable ["wr_playerRespawnTimeLeft", WAVERESPAWNTIMEPLAYER];
player setVariable ["wr_interrupted", false];
player setVariable ["wr_isFreeRespawn", false];
player setVariable ["wr_playerCountdownDone", false];
player setVariable ["wr_waveCountdownDone", false];
player setVariable ["wr_cvCheckDone", false];

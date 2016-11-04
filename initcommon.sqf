#include "USERSCRIPTS\missionsettings.sqf"
#include "USERSCRIPTS\loadouts.sqf"

enableSentences false;
enableRadio false;
enableSaving [false, false];
setTimeMultiplier _timeMultiplication;

// LOADOUT FACTIONS ============================================================
if (!isNil "_loadoutFactionBlu") then {
    if (_loadoutFactionBlu != "") then {
        ["BLU_F", _loadoutFactionBlu] call GRAD_Loadout_fnc_FactionSetLoadout;
    };
    if (_loadoutFactionOpf != "") then {
        ["OPF_F", _loadoutFactionOpf] call GRAD_Loadout_fnc_FactionSetLoadout;
    };
    if (_loadoutFactionInd != "") then {
        ["IND_F", _loadoutFactionInd] call GRAD_Loadout_fnc_FactionSetLoadout;
    };
} else {
    ["BLU_F", _loadoutFaction] call GRAD_Loadout_fnc_FactionSetLoadout;
};
GRAD_loadoutFactionSet = true;

// CACHING =====================================================================
if (_useCaching) then {
    f_param_debugMode = _cachingDebug;
    f_param_caching = _cachingRange;
    f_var_cachingAggressiveness = _cachingAggressiveness;
    f_param_uncacheForZeus = _uncacheForZeus;
    [30] spawn f_fnc_cInit;
};

// WAVE RESPAWN ================================================================
if (_waveRespawn) then {
    GRAD_waveRespawn = true;
    WAVERESPAWNTIME = _waveRespawnTime max 10;
    RESPAWNTIME = _respawnTime max 10;
    BLUFORWAVESIZE = _bluforWaveSize max -1;
    OPFORWAVESIZE = _opforWaveSize max -1;
    INDEPWAVESIZE = _indepWaveSize max -1;

    if (isNil "_bluMaxWaves") then {
        BLUMAXWAVES = 9999;
        OPFMAXWAVES = 9999;
        INDEPMAXWAVES = 9999;
    } else {
        BLUMAXWAVES = _bluMaxWaves;
        OPFMAXWAVES = _opfMaxWaves;
        INDEPMAXWAVES = _indepMaxWaves;
    };

    if (isNil "_waitSpectator") then {
        WAITSPECTATOR = false;
        WAITSPECSIDES = [WEST, EAST, INDEPENDENT];
        WAITSPECAI = false;
        WAITSPECFREECAM = false;
        WAITSPEC3PP = false;
    } else {
        WAITSPECTATOR = _waitSpectator;
        WAITSPECSIDES = _waitSpecSides;
        WAITSPECAI = _waitSpecAI;
        WAITSPECFREECAM = _waitSpecFreecam;
        WAITSPEC3PP = _waitSpec3PP;
    };

    [] execVM "wave_respawn\initWaveRespawn.sqf";
} else {
    GRAD_waveRespawn = false;
};

// SCRIPTS =====================================================================
if (_civTraffic) then {
    [] execVM "Engima\Traffic\Init.sqf";
};

if (hasInterface) then {
  if (["USERSCRIPTS\userInit.sqf"] call KK_fnc_fileExists) then {
    [] execVM "USERSCRIPTS\userInit.sqf";
  };
} else {
  [] execVM "USERSCRIPTS\userInit.sqf";
};

[] execVM "helpers\setRadioSettings.sqf";
[] execVM "helpers\setGroupSettings.sqf";

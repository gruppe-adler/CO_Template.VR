#include "USERSCRIPTS\missionsettings.sqf"
#include "USERSCRIPTS\loadouts.sqf"

enableSentences false;
enableRadio false;
enableSaving [false, false];

setTimeMultiplier _timeMultiplication;

GRAD_Loadout_Chosen_Prefix = _loadoutFaction;

if (_useCaching) then {
  f_param_debugMode = _cachingDebug;
  f_param_caching = _cachingRange;
  f_var_cachingAggressiveness = _cachingAggressiveness;
  f_param_uncacheForZeus = _uncacheForZeus;
  [30] spawn f_fnc_cInit;
};

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

if (_civTraffic) then {
  [] execVM "Engima\Traffic\Init.sqf";
};

["Initialize"] call BIS_fnc_dynamicGroups;
[] execVM "helpers\tfarsettings.sqf";
[] execVM "helpers\setRadioSettings.sqf";
[] execVM "helpers\setGroupSettings.sqf";

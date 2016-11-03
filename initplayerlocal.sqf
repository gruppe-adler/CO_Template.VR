#include "USERSCRIPTS\missionsettings.sqf"
#include "USERSCRIPTS\loadouts.sqf"
#include "script_component.hpp"

enableSentences false;
enableRadio false;
enableSaving [false, false];

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

  if (!isServer) then {
    [] execVM "wave_respawn\initWaveRespawn.sqf";
  };
} else {
  GRAD_waveRespawn = false;
};

if (_civTraffic) then {
  [] execVM "Engima\Traffic\Init.sqf";
};

if (didJIP) then {
  [[player], "helpers\addjiptozeus.sqf"] remoteExec ["execVM",2,false];
};

[] execVM "helpers\intro.sqf";
[] execVM "helpers\tfarsettings.sqf";
[] execVM "helpers\setRadioSettings.sqf";
[] execVM "helpers\createDiaryRecords.sqf";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[] execVM "helpers\setGroupSettings.sqf";

/*[0,true] call FNC_SMC(client,setClientAction);*/

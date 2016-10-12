RESPAWNWAVEEXTRATIME = 60;
publicVariable "RESPAWNWAVEEXTRATIME";
WAVERESPAWNBLU = false;
publicVariable "WAVERESPAWNBLU";
WAVERESPAWNOPF = false;
publicVariable "WAVERESPAWNOPF";
WAVERESPAWNIND = false;
publicVariable "WAVERESPAWNIND";
WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE;
publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
WAVERESPAWNPLAYERSLEFTOPF = OPFORWAVESIZE;
publicVariable "WAVERESPAWNPLAYERSLEFTOPF";
WAVERESPAWNPLAYERSLEFTIND = INDEPWAVESIZE;
publicVariable "WAVERESPAWNPLAYERSLEFTIND";
WAVERESPAWNTIMELEFTBLU = WAVERESPAWNTIME;
publicVariable "WAVERESPAWNTIMELEFTBLU";
WAVERESPAWNTIMELEFTOPF = WAVERESPAWNTIME;
publicVariable "WAVERESPAWNTIMELEFTOPF";
WAVERESPAWNTIMELEFTIND = WAVERESPAWNTIME;
publicVariable "WAVERESPAWNTIMELEFTIND";
BLURESPAWNDISABLED = false;
publicVariable "BLURESPAWNDISABLED";
OPFRESPAWNDISABLED = false;
publicVariable "OPFRESPAWNDISABLED";
INDEPRESPAWNDISABLED = false;
publicVariable "INDEPRESPAWNDISABLED";

deadPlayersBlu = [];
deadPlayersOpf = [];
deadPlayersInd = [];

if (hasInterface) then {
  joinTime = serverTime;

  [] spawn {
    waitUntil {!isNull player};
    waitUntil {alive player};
    _count = 0;
    originalSide = "CIV";
    while {sleep 1; originalSide == "CIV"} do {
      originalSide = str side player;
      _count = _count + 1;
      if (_count > 10) exitWith {diag_log "Player side is CIV. This might be a bug."}
    };
  };
};

if (isServer) then {

  //ADD TO WAVE FUNCTION =======================================================
  mcd_fnc_addDeadPlayerToWave = {
    params ["_deadPlayer", "_deadPlayerSide"];

    //wait until handleRespawns.sqf has declared dead player arrays
    waitUntil {!isNil "deadPlayersBlu"};
    waitUntil {!isNil "deadPlayersOpf"};
    waitUntil {!isNil "deadPlayersInd"};

    //add player to array
    if (_deadPlayerSide == "WEST") then {
      deadPlayersBlu pushBack _deadPlayer;
      diag_log format ["addDeadPlayerToWave - added player %1 to deadPlayersBlu. %2 dead blufor total.", _deadPlayer, count deadPlayersBlu];
    } else {
      if (_deadPlayerSide == "EAST") then {
        deadPlayersOpf pushBack _deadPlayer;
        diag_log format ["addDeadPlayerToWave - added player %1 to deadPlayersOpf. %2 dead opfor total.", _deadPlayer, count deadPlayersOpf];
      } else {
        if (_deadPlayerSide == "GUER") then {
          deadPlayersInd pushBack _deadPlayer;
          diag_log format ["addDeadPlayerToWave - added player %1 to deadPlayersInd. %2 dead independent total.", _deadPlayer, count deadPlayersInd];
        } else {
          diag_log format ["addDeadPlayerToWave - ERROR, unknown side for player %1", _deadPlayer];
        };
      };
    };

    WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE - (count deadPlayersBlu);
    WAVERESPAWNPLAYERSLEFTOPF = OPFORWAVESIZE - (count deadPlayersOpf);
    WAVERESPAWNPLAYERSLEFTIND = INDEPWAVESIZE - (count deadPlayersInd);
    publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
    publicVariable "WAVERESPAWNPLAYERSLEFTOPF";
    publicVariable "WAVERESPAWNPLAYERSLEFTIND";
  };

  //REMOVE FROM WAVE FUNCTION ==================================================
  mcd_fnc_handleRespawned = {
    _respawnedPlayer = param [0,""];
    _respawnedSide = param [1,"UNKNOWN"];
    _respawnedUnit = param [2, objNull];

    [_respawnedUnit, _respawnedSide] spawn mcd_fnc_addRespawnedToGroup;

    switch (_respawnedSide) do {

      case "WEST": {
        if (_respawnedPlayer in deadPlayersBlu) then {
          deadPlayersBlu = deadPlayersBlu - [_respawnedPlayer];
          diag_log format ["handleRespawned - Player %1 respawned and has been removed from deadPlayersBlu.", _respawnedPlayer];
        } else {
          diag_log format ["handleRespawned - ERROR, player %1 is not in deadPlayersBlu", _respawnedPlayer];
        };
      };

      case "EAST": {
        if (_respawnedPlayer in deadPlayersOpf) then {
          deadPlayersOpf = deadPlayersOpf - [_respawnedPlayer];
          diag_log format ["handleRespawned - Player %1 respawned and has been removed from deadPlayersOpf.", _respawnedPlayer];
        } else {
          diag_log format ["handleRespawned - ERROR, player %1 is not in deadPlayersOpf", _respawnedPlayer];
        };
      };

      case "GUER": {
        if (_respawnedPlayer in deadPlayersInd) then {
          deadPlayersInd = deadPlayersInd - [_respawnedPlayer];
          diag_log format ["handleRespawned - Player %1 respawned and has been removed from deadPlayersInd.", _respawnedPlayer];
        } else {
          diag_log format ["handleRespawned - ERROR, player %1 is not in deadPlayersInd", _respawnedPlayer];
        };
      };

      case "UNKNOWN": {
        if (_respawnedPlayer in deadPlayersBlu) then {
          deadPlayersBlu = deadPlayersBlu - [_respawnedPlayer];
          diag_log format ["handleRespawned - Player %1 disconnected and has been removed from deadPlayersBlu", _respawnedPlayer];
        } else {
          if (_respawnedPlayer in deadPlayersOpf) then {
            deadPlayersOpf = deadPlayersOpf - [_respawnedPlayer];
            diag_log format ["handleRespawned - Player %1 disconnected and has been removed from deadPlayersOpf", _respawnedPlayer];
          } else {
            if (_respawnedPlayer in deadPlayersInd) then {
              deadPlayersInd = deadPlayersInd - [_respawnedPlayer];
              diag_log format ["handleRespawned - Player %1 disconnected and has been removed from deadPlayersInd", _respawnedPlayer];
            } else {
              diag_log format ["handleRespawned - Player %1 disconnected but was not waiting for respawn", _respawnedPlayer];
            };
          };
        };
      };

      default {diag_log format ["handleRespawned - ERROR, player %1 is neither WEST nor EAST nor UNKNOWN", _respawnedPlayer]};
    };

    //wait extra respawn time
    sleep RESPAWNWAVEEXTRATIME;

    WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE - (count deadPlayersBlu);
    WAVERESPAWNPLAYERSLEFTOPF = OPFORWAVESIZE - (count deadPlayersOpf);
    WAVERESPAWNPLAYERSLEFTIND = INDEPWAVESIZE - (count deadPlayersInd);
    publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
    publicVariable "WAVERESPAWNPLAYERSLEFTOPF";
    publicVariable "WAVERESPAWNPLAYERSLEFTIND";
  };

  //ADD TO NEW GROUP FUNCTION ==================================================
  mcd_fnc_addRespawnedToGroup = {
    params ["_player", "_side"];
    private ["_leader"];

    if (_side == "UNKNOWN") exitWith {diag_log format ["fnc_addRespawnedToGroup - Player %1's side is unknown.", _player]};


    if (_side == "WEST") then {
      newBluSpawns pushBack _player;
      _leader = newBluSpawns select 0;
    };

    if (_side == "EAST") then {
      newOpfSpawns pushBack _player;
      _leader = newOpfSpawns select 0;
    };

    if (_side == "GUER") then {
      newIndSpawns pushBack _player;
      _leader = newIndSpawns select 0;
    };

    //player is not leader --> join leader
    if (_player != _leader) then {
      [_player] joinSilent _leader;
      diag_log format ["fnc_addRespawnedToGroup - Player %1 joined %2's group.", _player, _leader];
    };

    //player is leader --> register group
    if (_player == _leader) then {
      _groupExists = true;
      _groupName = "";
      _i = 1;
      while {_groupExists} do {
        _groupName = format ["Reinforcements %1", _i];
        _groupExists = str (["GetGroupByName", [_groupName, side _leader]] call BIS_fnc_dynamicGroups) != "<NULL-group>";
        _i = _i + 1;
      };
     ["RegisterGroup", [group _leader, _leader, [nil, _groupName, false]]] call BIS_fnc_dynamicGroups;
      diag_log format ["fnc_addRespawnedToGroup - Player %1 is groupleader of new respawned players for side %2.", _player, _side];
    };
  };

  //WAVE SIZE ==================================================================
  _bluforWaveSize = BLUFORWAVESIZE;
  _opforWaveSize = OPFORWAVESIZE;
  _indepWaveSize = INDEPWAVESIZE;

  _allPlayers = [] call BIS_fnc_listPlayers;

  if (_bluforWaveSize == 0) then {
    _teamSize = west countside _allPlayers;
    BLUFORWAVESIZE = (ceil ((_teamSize / 3) - 0.5)) max 1;
  } else {
    BLUFORWAVESIZE = _bluforWaveSize;
  };

  if (_opforWaveSize == 0) then {
    _teamSize = east countside _allPlayers;
    OPFORWAVESIZE = (ceil ((_teamSize / 3) - 0.5)) max 1;
  } else {
    OPFORWAVESIZE = _opforWaveSize;
  };

  if (_indepWaveSize == 0) then {
    _teamSize = resistance countside _allPlayers;
    INDEPWAVESIZE = (ceil ((_teamSize / 3) - 0.5)) max 1;
  } else {
    INDEPWAVESIZE = _indepWaveSize;
  };

  publicVariable "BLUFORWAVESIZE";
  publicVariable "OPFORWAVESIZE";
  publicVariable "INDEPWAVESIZE";
  diag_log format ["Wave Respawn - Blufor wave size is %1", BLUFORWAVESIZE];
  diag_log format ["Wave Respawn - Opfor wave size is %1", OPFORWAVESIZE];
  diag_log format ["Wave Respawn - Independent wave size is %1", INDEPWAVESIZE];

  //============================================================================
  addMissionEventHandler ["HandleDisconnect", {[_this select 3] spawn mcd_fnc_handleRespawned}];
  [] execVM "wave_respawn\waveRespawn.sqf";
};

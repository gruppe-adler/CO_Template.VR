waitUntil {!isNil "originalSide"};

//get loadout
switch (originalSide) do {
  case "WEST": {
    if (bluforLoadoutPath != "") then {
      _params = parseText bluforLoadoutParams;
      _params execVM bluforLoadoutPath;
    };
  };
  case "EAST": {
    if (opforLoadoutPath != "") then {
      _params = parseText opforLoadoutParams;
      _params execVM opforLoadoutPath;
    };
  };
  case "GUER": {
    if (indepLoadoutPath != "") then {
      _params = parseText indepLoadoutParams;
      _params execVM indepLoadoutPath;
    };
  };
};

//check JIP player is spawning for the first time
if (serverTime-joinTime < 30 && didJIP) exitWith {diag_log "Player is JIP, not executing onPlayerRespawn.sqf"};
[player, false] call TFAR_fnc_forceSpectator;

//notify server
[profileName, originalSide, player] remoteExec ["mcd_fnc_handleRespawned",2,false];

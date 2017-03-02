if (([missionConfigFile >> "missionsettings","waveRespawnEnabled",0] call BIS_fnc_returnConfigEntry) == 0) exitWith {};

BLUFORWAVESIZE = [missionConfigFile >> "missionsettings","bluforWaveSize",1] call BIS_fnc_returnConfigEntry;
OPFORWAVESIZE = [missionConfigFile >> "missionsettings","opforWaveSize",1] call BIS_fnc_returnConfigEntry;
INDEPWAVESIZE = [missionConfigFile >> "missionsettings","indepWaveSize",1] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEPLAYER = [missionConfigFile >> "missionsettings","waverespawntimePlayer",30] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEBLU = [missionConfigFile >> "missionsettings","waverespawntimeBlu",30] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEOPF = [missionConfigFile >> "missionsettings","waverespawntimeOpf",30] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEIND = [missionConfigFile >> "missionsettings","waverespawntimeInd",30] call BIS_fnc_returnConfigEntry;

WAVERESPAWNBLU = false;
WAVERESPAWNOPF = false;
WAVERESPAWNIND = false;
WAVERESPAWNPLAYERSLEFTBLU = BLUFORWAVESIZE;
WAVERESPAWNPLAYERSLEFTOPF = OPFORWAVESIZE;
WAVERESPAWNPLAYERSLEFTIND = INDEPWAVESIZE;
WAVERESPAWNTIMELEFTBLU = WAVERESPAWNTIMEBLU;
WAVERESPAWNTIMELEFTOPF = WAVERESPAWNTIMEOPF;
WAVERESPAWNTIMELEFTIND = WAVERESPAWNTIMEIND;
MAXRESPAWNTIME = 1200;
RESPAWNWAVEEXTRATIME = 30;
WAVERESPAWNSTATUSBLU = "";
WAVERESPAWNSTATUSOPF = "";
WAVERESPAWNSTATUSIND = "";

publicVariable "BLUFORWAVESIZE";
publicVariable "OPFORWAVESIZE";
publicVariable "INDEPWAVESIZE";
publicVariable "WAVERESPAWNTIMEPLAYER";
publicVariable "WAVERESPAWNTIMEBLU";
publicVariable "WAVERESPAWNTIMEOPF";
publicVariable "WAVERESPAWNTIMEIND";

publicVariable "WAVERESPAWNBLU";
publicVariable "WAVERESPAWNOPF";
publicVariable "WAVERESPAWNIND";
publicVariable "WAVERESPAWNPLAYERSLEFTBLU";
publicVariable "WAVERESPAWNPLAYERSLEFTOPF";
publicVariable "WAVERESPAWNPLAYERSLEFTIND";
publicVariable "WAVERESPAWNTIMELEFTBLU";
publicVariable "WAVERESPAWNTIMELEFTOPF";
publicVariable "WAVERESPAWNTIMELEFTIND";
publicVariable "MAXRESPAWNTIME";
publicVariable "RESPAWNWAVEEXTRATIME";
publicVariable "WAVERESPAWNSTATUSBLU";
publicVariable "WAVERESPAWNSTATUSOPF";
publicVariable "WAVERESPAWNSTATUSIND";

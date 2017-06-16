#include "component.hpp"

if (([missionConfigFile >> "missionSettings" >> "respawnSettings","waveRespawnEnabled",0] call BIS_fnc_returnConfigEntry) == 0) exitWith {};

BLUFORWAVESIZE = [missionConfigFile >> "missionSettings" >> "respawnSettings","bluforWaveSize",1] call BIS_fnc_returnConfigEntry;
OPFORWAVESIZE = [missionConfigFile >> "missionSettings" >> "respawnSettings","opforWaveSize",1] call BIS_fnc_returnConfigEntry;
INDEPWAVESIZE = [missionConfigFile >> "missionSettings" >> "respawnSettings","indepWaveSize",1] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEPLAYER = [missionConfigFile >> "missionSettings" >> "respawnSettings","waverespawntimePlayer",30] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEBLU = [missionConfigFile >> "missionSettings" >> "respawnSettings","waverespawntimeBlu",30] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEOPF = [missionConfigFile >> "missionSettings" >> "respawnSettings","waverespawntimeOpf",30] call BIS_fnc_returnConfigEntry;
WAVERESPAWNTIMEIND = [missionConfigFile >> "missionSettings" >> "respawnSettings","waverespawntimeInd",30] call BIS_fnc_returnConfigEntry;

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

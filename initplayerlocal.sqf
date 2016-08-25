#include "USERSCRIPTS\missionsettings.sqf"
#include "USERSCRIPTS\loadouts.sqf"
#include "script_component.hpp"

enableSentences false;
enableRadio false;
enableSaving [false, false];

GRAD_Loadout_Chosen_Prefix = _loadoutFaction;

if (_useCaching) then {
  f_param_debugMode = _cachingDebug;
  f_param_caching = _cachingRange;
  f_var_cachingAggressiveness = _cachingAgressiveness;
  f_param_uncacheForZeus = _uncacheForZeus;
  [30] spawn f_fnc_cInit;
};

if (didJIP) then {
  [[player], "helpers\addjiptozeus.sqf"] remoteExec ["execVM",2,false];
};

[] execVM "helpers\intro.sqf";
[] execVM "helpers\tfarsettings.sqf";
[_lage, _auftrag, _durchfuehrung, _einsatzunterstuetzung] execVM "helpers\createDiaryRecords.sqf";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[0,true] call FNC_SMC(client,setClientAction);

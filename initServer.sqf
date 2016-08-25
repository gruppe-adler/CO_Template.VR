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
  f_var_cachingAggressiveness = _cachingAgressiveness;
  f_param_uncacheForZeus = _uncacheForZeus;
  [30] spawn f_fnc_cInit;
};

[] execVM "helpers\tfarsettings.sqf";

["Initialize"] call BIS_fnc_dynamicGroups;

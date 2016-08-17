#include "USERSCRIPTS\missionsettings.sqf";

enableSentences false;
enableRadio false;
enableSaving [false, false];

setTimeMultiplier _timeMultiplication;

if (_useCaching) then {
  f_param_debugMode = _cachingDebug;
  f_param_caching = _cachingRange;
  f_var_cachingAggressiveness = _cachingAgressiveness;
  [30] spawn f_fnc_cInit;
};

[] execVM "helpers\tfarsettings.sqf";
[] execVM "helpers\selectLoadout.sqf";

["Initialize"] call BIS_fnc_dynamicGroups;

#include "USERSCRIPTS\missionsettings.sqf";
#include "script_component.hpp"

enableSentences false;
enableRadio false;
enableSaving [false, false];

if (_useCaching) then {
  f_param_debugMode = _cachingDebug;
  f_param_caching = _cachingRange;
  f_var_cachingAggressiveness = _cachingAgressiveness;
  [30] spawn f_fnc_cInit;
};

[] execVM "helpers\intro.sqf";
[] execVM "helpers\tfarsettings.sqf";
[_lage, _auftrag, _durchfuehrung, _einsatzunterstuetzung] execVM "helpers\createDiaryRecords.sqf";

["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
[0,true] call FNC_SMC(client,setClientAction);

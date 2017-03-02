#include "USERSCRIPTS\missionsettings.sqf"

enableSentences false;
enableRadio false;
enableSaving [false, false];
setTimeMultiplier _timeMultiplication;


// CACHING =====================================================================
if (_useCaching) then {
    f_param_debugMode = _cachingDebug;
    f_param_caching = _cachingRange;
    f_var_cachingAggressiveness = _cachingAggressiveness;
    f_param_uncacheForZeus = _uncacheForZeus;
    [30] spawn f_fnc_cInit;
};


// SCRIPTS =====================================================================
if (_civTraffic) then {
    [] execVM "Engima\Traffic\Init.sqf";
};

if (hasInterface) then {
  if (["USERSCRIPTS\userInit.sqf"] call KK_fnc_fileExists) then {
    [] execVM "USERSCRIPTS\userInit.sqf";
  };
} else {
  [] execVM "USERSCRIPTS\userInit.sqf";
};

[] execVM "helpers\setRadioSettings.sqf";
[] execVM "helpers\setGroupSettings.sqf";

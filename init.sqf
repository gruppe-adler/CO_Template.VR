#include "USERSCRIPTS\missionsettings.sqf"

enableSentences false;
enableRadio false;
enableSaving [false, false];


// CACHING =====================================================================
if (_useCaching) then {
    f_param_debugMode = _cachingDebug;
    f_param_caching = _cachingRange;
    f_var_cachingAggressiveness = _cachingAggressiveness;
    f_param_uncacheForZeus = _uncacheForZeus;
    [30] spawn f_fnc_cInit;
};


// SCRIPTS =====================================================================
[] execVM "USERSCRIPTS\userInit.sqf";

if (_civTraffic) then {
    [] execVM "Engima\Traffic\Init.sqf";
};

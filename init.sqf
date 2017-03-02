#include "USERSCRIPTS\missionsettings.sqf"

enableSentences false;
enableRadio false;
enableSaving [false, false];


// SCRIPTS =====================================================================
[] execVM "USERSCRIPTS\userInit.sqf";

if (_civTraffic) then {
    [] execVM "Engima\Traffic\Init.sqf";
};

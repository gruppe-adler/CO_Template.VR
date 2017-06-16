#include "USER\missionSettings.sqf"

enableSentences false;
enableRadio false;
enableSaving [false, false];


// SCRIPTS =====================================================================
[] execVM "USER\userInit.sqf";

if (_civTraffic) then {
    [] execVM "Engima\Traffic\Init.sqf";
};

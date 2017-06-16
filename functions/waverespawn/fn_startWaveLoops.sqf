#include "component.hpp"

//BLUFOR =======================================================================
[{
    ["WAVERESPAWNSTATUSBLU",[WEST] call grad_waverespawn_fnc_getStatus] call CBA_fnc_publicVariable;

    //dont execute while respawning is possible
    if (WAVERESPAWNBLU) exitWith {};

    //start countdown once first player is added to wave
    if (count deadPlayersBlu > 0) then {
        WAVERESPAWNTIMELEFTBLU = (WAVERESPAWNTIMELEFTBLU - 1) max 0;
        publicVariable "WAVERESPAWNTIMELEFTBLU";
    } else {
        ["WAVERESPAWNTIMELEFTBLU",WAVERESPAWNTIMEBLU] call CBA_fnc_publicVariable;
    };

    //enable respawning when wave is full
    if (["WEST"] call grad_waverespawn_fnc_canRespawn) then {

        WAVERESPAWNBLU = true;
        publicVariable "WAVERESPAWNBLU";
        INFO("Respawning now possible for Blufor.");

        [{
            WAVERESPAWNBLU = false;
            publicVariable "WAVERESPAWNBLU";
            WAVERESPAWNTIMELEFTBLU = WAVERESPAWNTIMEBLU;
            publicVariable    "WAVERESPAWNTIMELEFTBLU";
            INFO("Respawning no longer possible for Blufor.");
        },[],(RESPAWNWAVEEXTRATIME max 7)] call CBA_fnc_waitAndExecute;
    };
}, 1, []] call CBA_fnc_addPerFrameHandler;


//OPFOR ========================================================================
[{
    ["WAVERESPAWNSTATUSOPF",[EAST] call grad_waverespawn_fnc_getStatus] call CBA_fnc_publicVariable;

    //dont execute while respawning is possible
    if (WAVERESPAWNOPF) exitWith {};

    //start countdown once first player is added to wave
    if (count deadPlayersOpf > 0) then {
        WAVERESPAWNTIMELEFTOPF = (WAVERESPAWNTIMELEFTOPF - 1) max 0;
        publicVariable "WAVERESPAWNTIMELEFTOPF";
    } else {
        ["WAVERESPAWNTIMELEFTOPF",WAVERESPAWNTIMEOPF] call CBA_fnc_publicVariable;
    };

    //enable respawning when wave is full
    if (["EAST"] call grad_waverespawn_fnc_canRespawn) then {

        WAVERESPAWNOPF = true;
        publicVariable "WAVERESPAWNOPF";
        INFO("Respawning now possible for Opfor.");

        [{
            WAVERESPAWNOPF = false;
            publicVariable "WAVERESPAWNOPF";
            WAVERESPAWNTIMELEFTOPF = WAVERESPAWNTIMEOPF;
            publicVariable "WAVERESPAWNTIMELEFTOPF";
            INFO("Respawning no longer possible for Opfor.");
        },[],(RESPAWNWAVEEXTRATIME max 7)] call CBA_fnc_waitAndExecute;
    };
}, 1, []] call CBA_fnc_addPerFrameHandler;


//INDEP ========================================================================
[{
    ["WAVERESPAWNSTATUSIND",[INDEPENDENT] call grad_waverespawn_fnc_getStatus] call CBA_fnc_publicVariable;

    //dont execute while respawning is possible
    if (WAVERESPAWNIND) exitWith {};

    //start countdown once first player is added to wave
    if (count deadPlayersInd > 0) then {
        WAVERESPAWNTIMELEFTIND = (WAVERESPAWNTIMELEFTIND - 1) max 0;
        publicVariable "WAVERESPAWNTIMELEFTIND";
    } else {
        ["WAVERESPAWNTIMELEFTIND",WAVERESPAWNTIMEIND] call CBA_fnc_publicVariable;
    };

    //enable respawning when wave is full
    if (["INDEPENDENT"] call grad_waverespawn_fnc_canRespawn) then {

        WAVERESPAWNIND = true;
        publicVariable "WAVERESPAWNIND";
        INFO("Respawning now possible for Independent.");

        [{
            WAVERESPAWNIND = false;
            publicVariable "WAVERESPAWNIND";
            WAVERESPAWNTIMELEFTIND = WAVERESPAWNTIMEIND;
            publicVariable "WAVERESPAWNTIMELEFTIND";
            INFO("Respawning no longer possible for Independent.");
        },[],(RESPAWNWAVEEXTRATIME max 7)] call CBA_fnc_waitAndExecute;
    };
}, 1, []] call CBA_fnc_addPerFrameHandler;

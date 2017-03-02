//Parameter
#include "ga_system\sys_config\params.hpp"

//Sounds
#include "ga_system\sys_config\sound.hpp"

//Loadouts
#include "USERSCRIPTS\loadouts.sqf"

class Loadouts {
    baseDelay = 1;      // base delay in seconds before applying loadouts on mission start
    handleRadios = 1;   // radios are handled by grad-loadout
    resetLoadout = 0;   // start with empty loadouts instead of modifying existing loadout

    class Faction {
        #include "node_modules\grad-factions\loadouts.hpp"
        #include "USERSCRIPTS\userLoadouts.hpp"
    };
};

//Functions
class CfgFunctions
{

    #include "functions\geometry\cfgFunctions.hpp"
    #include "functions\spawnhelp\cfgFunctions.hpp"
    #include "functions\conview\cfgFunctions.hpp"
    #include "functions\groupsettings\cfgFunctions.hpp"
    //#include "functions\mission\cfgFunctions.hpp"
    #include "functions\radiosettings\cfgFunctions.hpp"
    #include "functions\usage\cfgFunctions.hpp"
    #include "functions\dial\cfgFunctions.hpp"
    #include "functions\external\cfgFunctions.hpp"
    #include "functions\client\cfgFunctions.hpp"
    #include "functions\system\cfgFunctions.hpp"
    #include "functions\hc\cfgFunctions.hpp"
    #include "functions\creating\cfgFunctions.hpp"
    #include "f3cache\cfgFunctions.hpp"
    #include "node_modules\grad-loadout\cfgFunctions.hpp"
    #include "node_modules\grad-customGear\cfgFunctions.hpp"
};

//Extendend EventHandlers
/*class Extended_InitPost_EventHandlers  {
    class CAManBase {
         init = "params ['_u']; if !(isPlayer _u) then {[_u] call GRAD_Loadout_fnc_doLoadoutForUnit;};";
    };
};*/

//grad-customGear
class grad_customGear {
    #include "USERSCRIPTS\customGear.hpp"
};

//RSCTitles
#include "ga_system\sys_dlg\rsctitles.hpp"

//Dialogs
#include "ga_system\sys_dlg\dialog.hpp"
#include "node_modules\grad-customGear\saveDialog\dialog.hpp"

//CfgRemote
#include "ga_system\sys_config\CfgRemote.hpp"

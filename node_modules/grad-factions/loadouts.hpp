#include "list_macros.hpp"

class Loadouts {
    baseDelay = 1;
    handleRadios = 1;
    resetLoadout = 0; // start with empty loadouts instead of modifying existing loadout

	class Faction {
        #include "factions\BwFleck.hpp"
        #include "factions\BwTrop.hpp"
        #include "factions\ModerateRebels.hpp"
        #include "factions\Peshmerga.hpp"
        #include "factions\UsOCP.hpp"
        #include "factions\UsMPT.hpp"
        #include "factions\UsUCP.hpp"
        #include "factions\RuFlora.hpp"
        #include "factions\RuEMR.hpp"
	};
};

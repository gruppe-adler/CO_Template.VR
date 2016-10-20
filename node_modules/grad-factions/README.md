**WIP**

## Prerequisites

Highly recommended: `>= npm-3.x`, which comes with NodeJS 6.x. Don't use older versions!

Alternatively, you can install `grad-factions` manually. You will then also need `grad-loadout`.

## Installation

`npm install grad-factions --save`

## Update

change the desired version number in your mission's `package.json`, and do `npm install`

## Configuration

You *may* set some of those options. They may or may have no effect, depending on the chosen factions.

```
#define NIGHTVISION  // equip night vision goggles
#define GUNLIGHTS    // equip gun lights
#define LASERS       // equip weapon laser
#define SUPPRESSORS  // equip suppressors

```
Below, add this:
```
#define MODULES_DIRECTORY node_modules
#include "MODULES_DIRECTORY\grad-factions\loadouts.hpp"

class CfgFunctions {
    #include "MODULES_DIRECTORY\grad-loadout\CfgFunctions.hpp"
};
```

You're nearly done. One last thing you will have to do: define which set of factions should actually be used.
Somewhere in your init.sqf, for example:

```
["BLU_F", "BwFleck"] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_G_F", "ModerateRebels"] call GRAD_Loadout_fnc_FactionSetLoadout;
```

These factions are available:

*   "BWFleck"         BLUFOR        Bundeswehr Flecktarn
*   "BWTrop"          BLUFOR        Bundeswehr Tropentarn
*   "USOCP"           BLUFOR        US Army OCP
*   "USUCP"           BLUFOR        US Army UCP
*   "USMPT"           BLUFOR        US Marines MARPAT
*   "RUFlora"         OPFOR         Russian MSV Flora
*   "RUEMR"           OPFOR         Russian MSV EMR-Summer
*   "ModerateRebels"  INDEPENDENT   Mittelmäßig bewaffnete, halbzivile Rebellen

**NOTE**: loadouts are defined for vanilla NATO/CSAT/AAF units only – they may or may not work for other units.
As units differ mostly in their loadouts (which is exchanged completely anyway) this should not matter much.

/*  Von den angegebenen Kategorien haben die folgenden Einheiten ein Standardloadout:
*   Englisch:                                 Deutsch:                                          Funktion:
*   Asst. Autorifleman                        Zweiter Automatik Schütze                         Munitionsträger für LMG
*   Asst. Gunner (HMG/GMG)                    Zweiter Schütze (Mk30/GMG)                        Munitionsträger für MMG
*   Asst. Missile Specialist (AA)             Zweiter Raketenspezialist (Luftabwehr)            Munitionsträger für Luftabwehrschütze
*   Asst. Missile Specialist (AT)             Zweiter Raketenspezialist (Panzerabwehr)          Munitionsträger für Panzerabwehrschütze
*   Autorifleman                              Automatik-Schütze                                 LMG Schütze
*   Combat Life Saver                         Sanitäter                                         Sanitäter
*   Explosive Specialist                      Sprengmeister                                     Sprengmeister
*   Grenadier                                 Grenadier                                         Grenadier
*   Heavy Gunner                              Schwerer Schütze                                  MMG Schütze
*   Marksman                                  Scharfschütze (nicht DLC)                         Gruppenscharfschütze (DMR)
*   Missile Specialist (AA)                   Raketenspezialist (Luftabwehr)                    Luftabwehrschütze
*   Missile Specialist (AT)                   Raketenspezialist (Panzerabwehr)                  Panzerabwehrschütze
*   Repair Specialist                         Reparaturspezialist                               Reparaturspezialist
*   Rifleman                                  Schütze                                           Schütze
*   Rifleman (AT)                             Schütze (Panzerabwehr)                            Schütze mit leichter AT-Waffe
*   Squad Leader                              Truppführer                                       Truppführer
*   Team Leader                               Teamleader                                        Gruppenführer und Zugführer
*/


http://www.gruppe-adler.de

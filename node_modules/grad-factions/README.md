# GRAD Factions
Internal information for Gruppe Adler members [here](https://forum.gruppe-adler.de/topic/1557/grad-factions-coop-loadouts).

## Installation

### Variant 1: npm

Highly recommended: `>= npm-3.x`, which comes with NodeJS 6.x. Don't use older versions!

`npm install grad-factions --save`

For updating, change the desired version number in your mission's `package.json`, and do `npm install`

### Variant 2: manually

Alternatively, you can install `grad-factions` manually. You will then also need `grad-loadout`.

* download both  `grad-factions` and `grad-loadout` as zipfiles from github, and put the directories into a `node_modules` directories, so that you get:

```
myMission.altis/node_modules/grad-factions
myMission.altis/node_modules/grad-loadout
```

## Configuration

### description.ext

You *may* set some of those options. They may or may have no effect, depending on the chosen factions.

```
#define NIGHTVISION  // equip night vision goggles
#define GUNLIGHTS    // equip gun lights
#define LASERS       // equip weapon laser
#define SUPPRESSORS  // equip suppressors

```
Below, add this:
```
class Loadouts {
    baseDelay = 1;      // base delay in seconds before applying loadouts on mission start
    handleRadios = 1;   // radios are handled by grad-loadout
    resetLoadout = 0;   // start with empty loadouts instead of modifying existing loadout

	class Faction {
        #include "node_modules\grad-factions\loadouts.hpp"
    };
};

class CfgFunctions {
    #include "node_modules\grad-loadout\CfgFunctions.hpp"
};
```

### init.sqf

You're nearly done. One last thing you will have to do: define which loadouts should actually be applied:
Somewhere in your init.sqf, for example:

```
["BLU_F", "BwFleck"] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_G_F", "ModerateRebels"] call GRAD_Loadout_fnc_FactionSetLoadout;
```

These factions are available (see also the `factions` directory):

| name           |  description                                 |
|----------------|----------------------------------------------|
| BwFleck        |  Bundeswehr Flecktarn                        |
| BwTrop         |  Bundeswehr Tropentarn                       |
| RuFlora        |  Russian MSV Flora                           |
| RuEMR          |  Russian MSV EMR-Summer                      |
| UsOCP          |  US Army OCP                                 |
| UsUCP          |  US Army UCP                                 |
| UsMPT          |  US Marines MARPAT                           |
| SOGBlack       |  CIA Special Operations Group                |


**HINT**: If you do not know which faction your editor-created units belong to, have a look into the [BI Community Wiki](https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST)

**NOTE**: Loadouts are not guaranteed to work with units provided by Mods. If you need a specific mod supported, open an issue with [grad-loadout](https://github.com/gruppe-adler/grad-loadout).

Von den angegebenen Kategorien haben die folgenden Einheiten ein Standardloadout:

Englisch:                     | Deutsch:                                 | Funktion:
------------------------------|------------------------------------------|----------------------------------------
Asst. Autorifleman            | Zweiter Automatik Schütze                | Munitionsträger für LMG
Asst. Gunner (HMG/GMG)        | Zweiter Schütze (Mk30/GMG)               | Munitionsträger für MMG
Asst. Missile Specialist (AA) | Zweiter Raketenspezialist (Luftabwehr)   | Munitionsträger für Luftabwehrschütze
Asst. Missile Specialist (AT) | Zweiter Raketenspezialist (Panzerabwehr) | Munitionsträger für Panzerabwehrschütze
Autorifleman                  | Automatik-Schütze                        | LMG Schütze
Combat Life Saver             | Sanitäter                                | Sanitäter
Explosive Specialist          | Sprengmeister                            | Sprengmeister
Grenadier                     | Grenadier                                | Grenadier
Heavy Gunner                  | Schwerer Schütze                         | MMG Schütze
Marksman                      | Scharfschütze (nicht DLC)                | Gruppenscharfschütze (DMR)
Missile Specialist (AA)       | Raketenspezialist (Luftabwehr)           | Luftabwehrschütze
Missile Specialist (AT)       | Raketenspezialist (Panzerabwehr)         | Panzerabwehrschütze
Repair Specialist             | Reparaturspezialist                      | Reparaturspezialist
Rifleman                      | Schütze                                  | Schütze
Rifleman (AT)                 | Schütze (Panzerabwehr)                   | Schütze mit leichter AT-Waffe
Squad Leader                  | Truppführer                              | Truppführer
Team Leader                   | Teamleader                               | Gruppenführer und Zugführer

Sowie derzeit nur bei den russischen Faktionen:

Englisch:                     | Deutsch:                                 | Funktion:
------------------------------|------------------------------------------|----------------------------------------
Sniper                        | Sniper                                   | Sniper
Spotter                       | Spotter                                  | Spotter


--------------------------------------------------------------------------------

http://www.gruppe-adler.de

# GRAD Factions
Internal information for Gruppe Adler members [here](https://forum.gruppe-adler.de/topic/1557/grad-factions-loadout-sammlung).

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
Somewhere in your init.sqf:

**Syntax**  

```
[faction,loadout] call GRAD_Loadout_fnc_FactionSetLoadout;
```

| Parameter | Description                                                             |
|-----------|-------------------------------------------------------------------------|
| faction   | string - Faction that the following loadout class should be applied to. |
| loadout   | string - Loadout classname. See below for available loadouts.           |

**Example**  
Here we will give the vanilla NATO units Bundeswehr loadouts, specifically *BwFleck* and the vanilla FIA units will get the *ModerateRebels* loadouts.

```
["BLU_F", "BwFleck"] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_G_F", "ModerateRebels"] call GRAD_Loadout_fnc_FactionSetLoadout;
```

**HINT**: If you do not know which faction your editor-created units belong to, have a look into the [BI Community Wiki](https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST). [There is also a table with all faction IDs](https://community.bistudio.com/wiki/faction).

**NOTE**: Loadouts are not guaranteed to work with units provided by Mods. If you need a specific mod supported, open an issue with [grad-loadout](https://github.com/gruppe-adler/grad-loadout).

## Available Loadouts
All of the included loadouts need [gruppe_adler_mod](https://github.com/gruppe-adler/gruppe_adler_mod) for its medical items. Most loadouts will also need other mods.

### Available Loadout Factions
These factions are available (see also the `factions` directory):

| Name                | Description                           | Author |
|---------------------|---------------------------------------|--------|
| BwFleck             | Bundeswehr Flecktarn                  | McDiod |
| BwTrop              | Bundeswehr Tropentarn                 | McDiod |
| BwSnow              | Bundeswehr Schneetarn                 | McDiod |
| RuFlora             | Russian MSV Flora                     | McDiod |
| RuEMR               | Russian MSV EMR-Summer                | McDiod |
| UsOCP               | US Army OCP                           | McDiod |
| UsUCP               | US Army UCP                           | McDiod |
| UsMPT               | US Marines MARPAT                     | McDiod |
| SOGBlack            | CIA Special Operations Group          | Synch  |
| UsmcVietnam         | Vietnam-Era USMC                      | Eras   |
| SOCOMVietnam        | Vietnam-Era Special Forces            | Ainer  |
| Vietcong            | Vietnamese Guerilla                   | Eras   |
| SWAT                | US SWAT                               | Eras   |
| Taliban             | Taliban (non-standard medic loadouts) | Slant  |
| IsraeliDefenseForce | Israeli Defense Force                 | Eras   |

### Rank Dependent Loadout
The medic loadouts are rank dependent. All medics carry surgical kits.

Rank               | Description
-------------------|--------------------------------------------------------------------------------------------
Private            | Combat medic loadout. Enough tourniquets and bandages for first aid and combat trauma care.
Corporal           | Medic loadout. More of everything as well as some saline.
Sergeant and above | Surgeon loadout. Arm-leg-kit for broken limbs and more saline.

### Units

Of the aforementioned factions, only the following unit types have a loadout. Note that the editors unit description doesn not 100% match the actual functionality of the units within these loadouts.


Unit Description (in Editor)  | Unit Classname   | Function                      | Funktion (Deutsch)
------------------------------|------------------|-------------------------------|----------------------------------------
Squad Leader                  | Soldier_SL_F     | Squad Leader                  | Gruppenführer und Zugführer
Team Leader                   | Soldier_TL_F     | Fireteam Leader               | Truppführer
Rifleman                      | Soldier_F        | Rifleman                      | Schütze
Rifleman (AT)                 | soldier_LAT_F    | Light AT                      | Schütze mit leichter AT-Waffe
Autorifleman                  | soldier_AR_F     | LMG Gunner                    | LMG Schütze
Asst. Autorifleman            | soldier_AAR_F    | LMG Assistant                 | LMG Assistent
Heavy Gunner                  | HeavyGunner_F    | MMG Gunner                    | MMG Schütze
Ammo Bearer                   | soldier_A_F      | MMG Assistant                 | MMG Assistent
Gunner (HMG/GMG)              | support_MG_F     | HMG Gunner                    | HMG Schütze
Asst. Gunner (HMG/GMG)        | support_AMG_F    | HMG Assistant                 | HMG Assistent
Missile Specialist (AA)       | soldier_AA_F     | AA Specialist                 | Luftabwehrschütze
Asst. Missile Specialist (AA) | soldier_AAA_F    | Ammo Bearer for AA Specialist | Munitionsträger für Luftabwehrschütze
Missile Specialist (AT)       | soldier_AT_F     | AT Specialist                 | Panzerabwehrschütze
Asst. Missile Specialist (AT) | soldier_AAT_F    | Ammo Bearer for AT Specialist | Munitionsträger für Panzerabwehrschütze
Grenadier                     | Soldier_GL_F     | Grenadier                     | Grenadier
Combat Life Saver             | medic_F          | Medic (rank-dependent)        | Sanitäter (rangabhängig)
Explosive Specialist          | soldier_exp_F    | Explosive Specialist          | Sprengmeister
Repair Specialist             | soldier_repair_F | Repair Specialist             | Reparaturspezialist
Marksman                      | soldier_M_F      | Designated Marksman           | Gruppenscharfschütze

And currently only for the Russian factions:

Unit Description (in Editor) | Unit Classname | Function | Funktion (Deutsch)
-----------------------------|----------------|----------|-------------------
Sniper                       | sniper_F       | Sniper   | Scharfschütze
Spotter                      | spotter_F      | Spotter  | Spotter



--------------------------------------------------------------------------------

http://www.gruppe-adler.de

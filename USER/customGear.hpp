/*
*   Legt fest welche Teile des Loadouts wann angepasst werden können.
*   Siehe auch:
*   https://gruppe-adler.github.io/grad-loadout/#/configuration
*   und
*   https://gruppe-adler.github.io/grad-loadout/#/customGear
*/


randomizationMode = 1;                                                          // einige Loadouts unterstützen zufällige Ausrüstungsvergabe. randomizationMode legt fest, wie mit diesen Loadouts umgegangen wird.
                                                                                // 0 - disabled, 1 - enabled, 2 - enabled for players only, 3 - enabled for AI only

customGear = 300;                                                               // Legt fest wann Spieler ihr Loadout anpassen dürfen.
                                                                                // -1 um zu deaktivieren
                                                                                // Zahl - Zeit in Sekunden nach Spielstart, in der Anpassung erlaubt ist.

customGearAllowedCategories[] = {                                               // Legt fest, welche Ausrüstungs-Kategorien von den Spielern angepasst werden dürfen.
    "uniform",
    "vest",
    "backpack",
    "primaryWeapon",
    "primaryWeaponMuzzle",
    "primaryWeaponOptics",
    "primaryWeaponPointer",
    "primaryWeaponUnderbarrel",
    "secondaryWeapon",
    "secondaryWeaponMuzzle",
    "secondaryWeaponOptics",
    "secondaryWeaponPointer",
    "secondaryWeaponUnderbarrel",
    "handgunWeapon",
    "handgunWeaponMuzzle",
    "handgunWeaponOptics",
    "handgunWeaponPointer",
    "handgunWeaponUnderbarrel",
    "headgear",
    "goggles",
    "nvgoggles",
    "binoculars",
    "map",
    "gps",
    "compass",
    "watch",
    "radio"
};

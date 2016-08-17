#include ".\list_macros.hpp"

class Loadouts {
    baseDelay = 1;
    class CSAT {
        class Side {
            class Blufor {
                uniform = "ARC_GER_Tropentarn_Uniform";
                vest = "ARC_GER_Tropentarn_Plate_Carrier";
                backpack = "";
                items[] = {};
                addItemsToUniform[] = {
                    "ACE_MapTools",
                    "ACE_EarPlugs",
                    "ACE_DefusalKit",
                    LIST_2("ACE_CableTie"),
                    LIST_8("ACE_fieldDressing"),
                    LIST_4("ACE_morphine"),
                    LIST_2("ACE_epinephrine"),
                    "ACE_bloodIV_500",
                    "16Rnd_9x21_Mag"
                };
                addItemsToVest[] = {
                    LIST_2("HandGrenade"),
                    LIST_2("SmokeShell"),
                    "SmokeShellBlue",
                    "SmokeShellRed",

                };
                headgear = "ARC_GER_Tropentarn_Mich";
                secondaryWeapon = "hgun_P07_F";
                binoculars = "Binocular";
                map = "ItemMap";
                compass = "ItemCompass";
                watch = "ItemWatch";
                gps = "ItemGPS";
            };
        };
    };
};

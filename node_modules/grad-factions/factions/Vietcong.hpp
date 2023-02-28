#ifdef NIGHTVISION
  #define NVITEM "NVGoggles_OPFOR"
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM "rhs_acc_perst1ik"
#else
  #define LLITEM ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "rhs_acc_2dpZenit"
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhs_acc_tgpa"
#else
  #define SUPPRESSORITEM "rhs_acc_dtk"
#endif

class Vietcong {
    class AllUnits {
        uniform = "UK3CB_ADE_O_U_02_C";
        vest = "rhs_6sh46";
        backpack = "";
        headgear = "H_Booniehat_oli";
        primaryWeapon = "rhs_weap_akm";
        primaryWeaponMagazine = "rhs_30Rnd_762x39mm";
        primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponPointer = LLITEM;
        primaryWeaponOptics = "";
        primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon = "rhs_weap_makarov_pm";
        handgunWeaponMagazine = "rhs_mag_9x18_8_57N181S";
        binoculars = "Binocular";
        map = "ItemMap";
        compass = "ItemCompass";
        watch = "ItemWatch";
        gps = "";
        radio = "";
		goggles = "";
        nvgoggles = NVITEM;
    };
    class Type {
        //Rifleman
        class Soldier_F {
            addItemsToUniform[] = {
                LIST_1("ACE_MapTools"),
                LIST_1("ACE_DefusalKit"),
                LIST_2("ACE_CableTie"),
                LIST_1("ACE_Flashlight_KSF1"),
                LIST_2("rhs_mag_9x18_8_57N181S"),

                GRAD_FACTIONS_MEDICITEMS_INF_LIST
            };
            addItemsToVest[] = {
                LIST_2("rhs_mag_rgd5"),
                LIST_2("rhs_mag_rdg2_white"),
                LIST_7("rhs_30Rnd_762x39mm")
            };
        };
        //Asst. Autorifleman
        class Soldier_AAR_F: Soldier_F {
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR")
            };
        };
        //Asst. Gunner (MMG) / Ammo Bearer
        class soldier_A_F: Soldier_AAR_F {};

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "RHS_DShkM_TripodLow_Bag";
        };

        //Asst. Missile Specialist (AA)
        class Soldier_AAA_F: Soldier_F {
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_9k38_rocket")
            };
        };

        //Asst. Missile Specialist (AT)
        class Soldier_AAT_F: Soldier_F {
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_rpg7_PG7VL_mag")
            };
        };

        //Autorifleman
        class Soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_pkm";
            primaryWeaponMagazine = "rhs_100Rnd_762x54mmR";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR")
            };
            addItemsToVest[] = {
                LIST_2("rhs_mag_rgd5"),
                LIST_2("rhs_mag_rdg2_white")
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
			headgear = "H_Beret_blk";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "rhs_sidor";
            addItemsToUniform[] = {
                "ACE_MapTools",
                LIST_2("ACE_CableTie"),
                "ACE_Flashlight_KSF1"
            };
            class Rank {
                class PRIVATE {
                    GRAD_FACTIONS_MEDICITEMS_CFR
                };
                class CORPORAL {
                    GRAD_FACTIONS_MEDICITEMS_SQ
                };
                class SERGEANT {
                    GRAD_FACTIONS_MEDICITEMS_PT
                };
                class LIEUTENANT: SERGEANT {};
                class CAPTAIN: SERGEANT {};
                class MAJOR: SERGEANT {};
                class COLONEL: SERGEANT {};
            };
        };

        //Explosive Specialist
        class Soldier_exp_F: Soldier_F {
			headgear = "H_Beret_blk";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                "ACE_DefusalKit",
                LIST_3("APERSTripMine_Wire_Mag")
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "rhs_weap_akm_gp25";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rgd5"),
                LIST_2("rhs_mag_rdg2_white"),
                LIST_6("rhs_VOG25"),
                LIST_2("rhs_VG40MD_White"),
                LIST_2("rhs_VG40MD_Green"),
                LIST_2("rhs_VG40MD_Red")
            };
        };

        //Heavy Gunner (MMG)
        class HeavyGunner_F: Soldier_AR_F {};

        //Gunner (HMG/GMG)
        class support_MG_F: Soldier_F {
            backpack = "RHS_DShkM_Gun_Bag";
        };

        //Marksman
        class Soldier_M_F: Soldier_F {
            primaryWeapon = "rhs_weap_m76";
            primaryWeaponMagazine = "rhssaf_10Rnd_792x57_m76_tracer";
            primaryWeaponOptics = "rhs_acc_pso1m2";
            primaryWeaponPointer = "";
            primaryWeaponMuzzle = "";
            addItemsToVest[] = {
                LIST_2("rhs_mag_rgd5"),
                "rhs_mag_rdg2_white",
                LIST_10("rhssaf_10Rnd_792x57_m76_tracer")
            };
        };

        //Missile Specialist (AA)
        class Soldier_AA_F: Soldier_F {
			headgear = "H_Beret_blk";
            primaryWeapon = "rhs_weap_akm";
            secondaryWeapon = "rhs_weap_igla";
            secondaryWeaponMagazine = "rhs_mag_9k38_rocket";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                "rhs_mag_9k38_rocket"
            };
        };

        //Missile Specialist (AT)
        class Soldier_AT_F: Soldier_F {
			headgear = "H_Beret_blk";
            primaryWeapon = "rhs_weap_akm";
            secondaryWeapon = "rhs_weap_rpg7";
            secondaryWeaponMagazine = "rhs_rpg7_PG7VL_mag";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_rpg7_PG7VL_mag"),
                "rhs_rpg7_OG7V_mag"
            };
        };

        //Repair Specialist
        class Soldier_repair_F: Soldier_F {
            primaryWeapon = "rhs_weap_akm";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                "ToolKit",
                "ACE_wirecutter"
            };
        };

        //Rifleman (AT)
        class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg26";
        };

        //Sniper
        class Sniper_F: Soldier_F {
            primaryWeapon = "rhs_weap_m76";
            primaryWeaponMagazine = "rhssaf_10Rnd_792x57_m76_tracer";
            primaryWeaponOptics = "rhs_acc_pso1m2";
            addItemsToVest[] = {
                LIST_2("rhs_mag_rdg2_white"),
                LIST_19("rhssaf_10Rnd_792x57_m76_tracer")
            };
            addItemsToUniform[] = {
                "ACE_MapTools",
                "ACE_EarPlugs",
                LIST_2("rhs_mag_9x18_8_57N181S"),
                LIST_2("ACE_CableTie"),
                LIST_8("ACE_fieldDressing"),
                LIST_4("ACE_morphine"),
                "ACE_epinephrine",
                "ACE_Flashlight_KSF1",
                "ACE_RangeCard"
            };
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
			headgear = "UK3CB_H_Civ_Beret";
            primaryWeapon = "rhs_weap_akm_gp25";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rdg2_white"),
                LIST_4("rhs_VG40MD_Green"),
                LIST_4("rhs_VG40MD_Red"),
                LIST_4("rhs_VG40MD_White")
            };
        };

        //Spotter
        class Spotter_F: Soldier_F {
            backpack = "rhs_sidor";
            addItemsToUniform[] = {
                "ACE_MapTools",
                "ACE_EarPlugs",
                "ACE_ATragMX",
                "ACE_Kestrel4500",
                "ACE_RangeCard",
                LIST_2("rhs_mag_9x18_8_57N181S"),
                LIST_2("ACE_CableTie"),
                LIST_8("ACE_fieldDressing"),
                LIST_4("ACE_morphine"),
                "ACE_epinephrine",
                "ACE_Flashlight_KSF1"
            };
            addItemsToBackpack[] = {
                "ACE_Tripod",
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_SL_F {
			headgear = "UK3CB_H_Civ_Beret";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rdg2_white"),
                LIST_2("rhs_VG40MD_Green"),
                LIST_2("rhs_VG40MD_Red"),
                LIST_2("rhs_VG40MD_White"),
                LIST_4("rhs_VOG25")
            };
        };

    };
    class Rank {
        class LIEUTENANT {
            headgear = "UK3CB_H_Civ_Beret";
        };
    };
};
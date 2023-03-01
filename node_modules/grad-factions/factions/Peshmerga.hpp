#ifdef NIGHTVISION
  #define NVITEM "ACE_NVG_Gen1"
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
  #define SUPPRESSORITEM "rhs_acc_dtk"
#else
  #define SUPPRESSORITEM ""
#endif

class Peshmerga {
	class AllUnits {
        uniform = "UK3CB_TKA_B_U_CombatUniform_02_WDL";
        vest = "UK3CB_TKA_B_V_GA_HEAVY_WDL";
        backpack = "";
        headgear = "UK3CB_CW_US_B_LATE_H_PASGT_01_WDL";
        primaryWeapon = "rhs_weap_ak74m";
        primaryWeaponMagazine = "rhs_30Rnd_545x39_7N10_AK";
        primaryWeaponOptics = "";
        primaryWeaponPointer = LLITEM;
        primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon = "rhs_weap_tt33";
        handgunWeaponMagazine = "rhs_mag_762x25_8";
        binoculars = "Binocular";
        map = "ItemMap";
        compass = "ItemCompass";
        watch = "ItemWatch";
        gps = "ItemGPS";
        radio = "tf_fadak";
        nvgoggles = NVITEM;
    };
    class Type {
        //Rifleman
        class Soldier_F {
            addItemsToUniform[] = {
                LIST_1("ACE_MapTools"),
                LIST_1("ACE_DefusalKit"),
                LIST_2("ACE_CableTie"),
                LIST_1("ACE_Flashlight_MX991"),

                GRAD_FACTIONS_MEDICITEMS_INF_LIST
            };
            addItemsToVest[] = {
                "rhs_mag_rdg2_white",
                "rhs_mag_rdg2_black",
                "rhs_mag_rgd5",
                LIST_5("rhs_30Rnd_545x39_7N10_AK")
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                LIST_8("UK3CB_RPK74_60rnd_545x39")
            };
        };

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_9k38_rocket")
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                LIST_2("rhs_rpg7_PG7VL_mag"),
                LIST_2("rhs_rpg7_OG7V_mag")
          	};
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            primaryWeapon = "UK3CB_RPK_74N";
            primaryWeaponMagazine = "UK3CB_RPK74_60rnd_545x39";
            primaryWeaponOptics = "rhs_acc_1p29";
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                LIST_3("UK3CB_RPK74_60rnd_545x39")
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
            addItemsToUniform[] = {
                LIST_1("ACE_MapTools"),
                LIST_1("ACE_DefusalKit"),
                LIST_2("ACE_CableTie"),
                LIST_1("ACE_Flashlight_MX991"),
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShellPurple"),
                LIST_8("SmokeShell"),
                LIST_8("rhs_30Rnd_545x39_7N10_AK")
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
        class soldier_exp_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                "ACE_Clacker",
                "ACE_M26_Clacker",
                "SatchelCharge_Remote_Mag",
                LIST_5("DemoCharge_Remote_Mag")
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "rhs_weap_ak74m_gp25";
            addItemsToVest[] = {
                LIST_2("rhs_mag_rgd5"),
                LIST_2("rhs_mag_rdg2_white"),
                LIST_8("rhs_30Rnd_545x39_7N10_AK"),
                LIST_2("rhs_VG40TB"),
                LIST_2("rhs_VOG25P"),
                LIST_1("rhs_VOG25")
            };
        };

        //Heavy Gunner
        class HeavyGunner_F: Soldier_F {};

        //Marksman
        class soldier_M_F: Soldier_F {
            primaryWeapon = "UK3CB_SVD_OLD";
            primaryWeaponMagazine = "rhs_10Rnd_762x54mmR_7N1";
            primaryWeaponOptics = "rhs_acc_pso1m2";
            binoculars = "ACE_Vector";
            addItemsToVest[] = {
                LIST_2("SmokeShell"),
                LIST_7("rhs_10Rnd_762x54mmR_7N1")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_igla";
            secondaryWeaponMagazine = "rhs_mag_9k38_rocket";
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                "rhs_mag_9k38_rocket"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg7";
            secondaryWeaponMagazine = "rhs_rpg7_PG7VL_mag";
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                "rhs_rpg7_PG7VL_mag",
                LIST_2("rhs_rpg7_OG7V_mag")
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
            addItemsToBackpack[] = {
                "ToolKit",
                "ACE_wirecutter"
            };
        };

        //Rifleman (AT)
        class soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg75";
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
            backpack = "TFAR_anprc155_coyote";
            uniform = "UK3CB_TKA_B_U_CombatUniform_Shortsleeve_02_WDL";
            binoculars = "ACE_Vector";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rdg2_white"),
                LIST_2("rhs_mag_rdg2_black"),
                LIST_5("rhs_mag_nspd")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            backpack = "UK3CB_B_Alice_K";
        };
    };
};

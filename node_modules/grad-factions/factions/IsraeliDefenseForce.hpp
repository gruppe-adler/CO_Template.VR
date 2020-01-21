#ifdef NIGHTVISION
  #define NVITEM "rhsusf_ANPVS_15"
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM "rhsusf_acc_anpeq15A"
#else
  #define LLITEM ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "rhsusf_acc_M952V"
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhsusf_acc_nt4_black"
#else
  #define SUPPRESSORITEM ""
#endif

class IsraeliDefenseForce {
    class AllUnits {
        uniform = "rhs_uniform_g3_rgr";
        vest = "rhsgref_otv_khaki";
        backpack = "B_Kitbag_rgr";
        headgear = "rhsusf_ach_bare_ess";
        primaryWeapon = "rhs_weap_m4a1";
        primaryWeaponMagazine = "30Rnd_556x45_Stanag";
        primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponPointer = LLITEM;
        primaryWeaponOptics = "rhsusf_acc_ACOG_RMR";
        primaryWeaponUnderbarrel = "rhsusf_acc_grip3";
		primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon = "rhsusf_weap_glock17g4";
        handgunWeaponMagazine = "rhsusf_mag_17Rnd_9x19_JHP";
        binoculars = "Binocular";
        map = "ItemMap";
        compass = "ItemCompass";
        watch = "ItemWatch";
        gps = "ItemGPS";
        radio = "tfar_anprc152";
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
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_7("30Rnd_556x45_Stanag")
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_soft_pouch"
            };
        };

    	//Asst. Gunner (MMG) / Ammo Bearer
        class soldier_A_F: Soldier_F {
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                LIST_2("150Rnd_762x54_Box_Tracer"),
                "150Rnd_762x54_Box"
            };
    	};

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "RHS_M2_MiniTripod_Bag";
        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            backpack = "B_Carryall_oli";
            addItemsToBackpack[] = {
                "rhs_mag_maaws_HE",
				"rhs_mag_maaws_HEDP",
				"rhs_mag_maaws_HEAT"
            };
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_minimi_para_railed";
            primaryWeaponMagazine = "rhs_200rnd_556x45_M_SAW";
            primaryWeaponUnderbarrel = "";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            vest = "rhsgref_otv_khaki";
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_soft_pouch"
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell")
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
            backpack = "B_Carryall_oli";
            addItemsToUniform[] = {
                "ACE_MapTools",
                "ACE_DefusalKit",
                LIST_2("ACE_CableTie"),
                "ACE_Flashlight_MX991"
            };
            addItemsToVest[] = {
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag")
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
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                "ACE_Clacker",
                "ACE_M26_Clacker",
                "SatchelCharge_Remote_Mag",
                LIST_3("DemoCharge_Remote_Mag")
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "rhs_weap_m4a1_m203";
			primaryWeaponUnderbarrel = "";
            backpack = "B_Kitbag_rgr";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag")
            };
			addItemsToBackpack[] = {
                LIST_8("rhs_mag_M441_HE"),
                LIST_2("rhs_mag_m713_Red")
            };
        };

        //Heavy Gunner (MMG)
        class HeavyGunner_F: Soldier_F {
            primaryWeapon = "LMG_Zafir_F";
            primaryWeaponMagazine = "150Rnd_762x54_Box";
            primaryWeaponMuzzle = "";
            primaryWeaponUnderbarrel = "";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                LIST_2("150Rnd_762x54_Box_Tracer"),
                "150Rnd_762x54_Box"
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell")
            };
        };

    	//Gunner (HMG/GMG)
        class support_MG_F: Soldier_F {
            backpack = "RHS_M2_Gun_Bag";
    	};

        //Marksman
        class soldier_M_F: Soldier_F {
            primaryWeapon = "rhs_weap_sr25_ec";
            primaryWeaponMagazine = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
            primaryWeaponMuzzle = "";
            primaryWeaponPointer = LLITEM;
            primaryWeaponOptics = "optic_DMS";
            primaryWeaponUnderbarrel = "bipod_01_F_blk";
            backpack = "B_Kitbag_rgr";
            addItemsToVest[] = {
                LIST_6("rhsusf_20Rnd_762x51_SR25_m118_special_Mag")
            };
			addItemsToBackpack[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fim92";
            secondaryWeaponMagazine = "rhs_fim92_mag";
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_maaws";
            secondaryWeaponMagazine = "rhs_mag_maaws_HEDP";
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                "rhs_mag_maaws_HEAT",
				"rhs_optic_maaws"
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            backpack = "B_Kitbag_rgr";
            addItemsToBackpack[] = {
                "ToolKit",
                "ACE_wirecutter",
				"ACE_EntrenchingTool",
            };
        };

        //Rifleman (AT)
        class soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
			secondaryWeaponMagazine = "rhs_m72a7_mag";
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
            primaryWeapon = "rhs_weap_m4a1_m203";
			primaryWeaponUnderbarrel = "";
            backpack = "TFAR_rt1523g_sage";
            headgear = "rhsusf_ach_bare_headset_ess";
            vest = "rhsgref_otv_khaki";
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed")
			};
            addItemsToVest[] = {
                LIST_1("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_7("30Rnd_556x45_Stanag"),
                LIST_2("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_Smoke_Grenade_shell"),
                LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
                LIST_2("1Rnd_HE_Grenade_shell")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            primaryWeapon = "rhs_weap_m4a1_m203";
			primaryWeaponUnderbarrel = "";
			backpack = "TFAR_rt1523g_sage";
            headgear = "rhsusf_ach_bare_headset_ess";
            vest = "rhsgref_otv_khaki";
            addItemsToVest[] = {
                LIST_1("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag"),
                LIST_2("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_Smoke_Grenade_shell"),
                LIST_2("1Rnd_HE_Grenade_shell")
            };
			addItemsToBackpack[] = {
				LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed")
			};
        };

        //Mortar
        class support_Mort_F: Soldier_F {
			backpack = "TFAR_rt1523g_sage";
            headgear = "rhsusf_ach_bare_headset_ess";
            vest = "rhsgref_otv_khaki";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag")
            };
        };

        //Ass. Mortar
        class support_AMort_F: Soldier_F {
			backpack = "B_Kitbag_rgr";
            headgear = "rhsusf_ach_bare_headset_ess";
            vest = "rhsgref_otv_khaki";
        };
    };
    class Rank {
        class LIEUTENANT {
            headgear = "rhssaf_beret_green";
        };
    };
};

#ifdef NIGHTVISION
  #define NVITEM "rhsusf_ANPVS_15"
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM "rhsusf_acc_anpeq15_bk"
#else
  #define LLITEM ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "rhsusf_acc_anpeq15_bk_light"
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhsusf_acc_nt4_black"
#else
  #define SUPPRESSORITEM ""
#endif

class BWFleck {
	class AllUnits {
		uniform = "ARC_GER_Flecktarn_Uniform";
		vest = "ARC_GER_Flecktarn_Plate_Carrier";
		backpack = "";
		headgear = "ARC_GER_Flecktarn_Helmet_simple";
		primaryWeapon = "rhs_weap_hk416d10";
        primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		primaryWeaponOptics = "rhsusf_acc_g33_T1";
		primaryWeaponPointer = LLITEM;
		primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponUnderbarrel = "";
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
		radio = "tf_anprc152";
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

                LIST_4("ACE_packingBandage"),
                LIST_4("ACE_elasticBandage"),
                LIST_4("ACE_quikclot"),
                LIST_4("ACE_tourniquet"),
                LIST_2("ACE_morphine"),
                LIST_2("ACE_epinephrine")
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_7("rhs_mag_30Rnd_556x45_Mk318_Stanag")
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhs_200rnd_556x45_T_SAW"
            };
        };

        //Asst. Gunner (MMG) / Ammo Bearer
        class soldier_A_F: Soldier_F {
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("hlc_100Rnd_762x51_B_MG3"),
                LIST_4("hlc_50Rnd_762x51_T_MG3")
            };
        };

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "RHS_M2_MiniTripod_Bag";
        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
            backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_fim92_mag")
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_fgm148_magazine_AT")
            };
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_m249_pip_S";
            primaryWeaponMagazine = "rhs_200rnd_556x45_T_SAW";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_soft_pouch",
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell")
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
            headgear = "ARC_GER_Flecktarn_Helmet_simple_Medic";
            backpack = "ARC_GER_Backpack_Flecktarn_Med";
            addItemsToUniform[] = {
                "ACE_MapTools",
                "ACE_DefusalKit",
                LIST_2("ACE_CableTie"),
                "ACE_Flashlight_MX991"
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShellPurple"),
                LIST_8("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag")
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
            headgear = "ARC_GER_Flecktarn_Helmet_EOD";
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                "ACE_Clacker",
                "ACE_M26_Clacker",
                "SatchelCharge_Remote_Mag",
                LIST_5("DemoCharge_Remote_Mag")
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "rhs_weap_hk416d10_m320";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag"),
                LIST_8("1Rnd_HE_Grenade_shell"),
                LIST_3("1Rnd_SmokeRed_Grenade_shell")
            };
        };

        //Heavy Gunner (MMG)
        class HeavyGunner_F: Soldier_F {
            primaryWeapon = "hlc_lmg_MG3_optic";
            primaryWeaponMagazine = "hlc_50Rnd_762x51_T_MG3";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("hlc_100Rnd_762x51_B_MG3"),
                LIST_3("hlc_50Rnd_762x51_T_MG3")
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
            primaryWeapon = "rhs_weap_hk416d145";
            primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
            primaryWeaponOptics ="optic_DMS";
            primaryWeaponUnderbarrel ="bipod_01_F_blk";
            binoculars = "ACE_VectorDay";
            addItemsToVest[] = {
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk262_Stanag"),
                LIST_4("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fim92";
            secondaryWeaponMagazine = "rhs_fim92_mag";
            backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fgm148";
            secondaryWeaponMagazine = "rhs_fgm148_magazine_AT";
            backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
            addItemsToBackpack[] = {
                "rhs_fgm148_magazine_AT"
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            backpack = "ARC_GER_Backpack_compact_Flecktarn";
            addItemsToBackpack[] = {
                "ToolKit",
                "ACE_wirecutter"
            };
        };

        //Rifleman (AT)
        class soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_M136";
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
            backpack = "tf_rt1523g_big_bwmod";
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed"),
                LIST_2("SmokeShellYellow"),
                LIST_2("SmokeShell")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            primaryWeapon = "rhs_weap_hk416d10_m320";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag"),
                LIST_2("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
                LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
                LIST_2("1Rnd_HE_Grenade_shell")
            };
        };
    };

    class Rank {
        class LIEUTENANT {
            headgear = "ARC_GER_Flecktarn_Milcap";
        };
    };
};

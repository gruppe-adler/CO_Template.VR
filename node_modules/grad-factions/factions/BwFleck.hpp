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
#else
  #define LLITEM
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
		headgear = "ARC_GER_Flecktarn_Mich";
		primaryWeapon = "rhs_weap_hk416d10";
		primaryWeaponOptics = "FHQ_optic_HWS_G33";
		primaryWeaponPointer = LLITEM;
		primaryWeaponMuzzle = SUPPRESSORITEM;
		handgunWeapon = "rhsusf_weap_glock17g4";
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
                "ACE_MapTools",
                "ACE_EarPlugs",
                "ACE_DefusalKit",
                LIST_2("ACE_CableTie"),
                LIST_8("ACE_fieldDressing"),
                LIST_4("ACE_morphine"),
                "ACE_epinephrine",
                "ACE_Flashlight_MX991"
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag")
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

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m80a1epr"),
                LIST_4("rhsusf_50Rnd_762x51_m62_tracer")
            };
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
            handgunWeapon = "";
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhs_200rnd_556x45_T_SAW"
            };
            addItemsToVest[] = {
                "rhsusf_100Rnd_556x45_soft_pouch",
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell")
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
            backpack = "ARC_GER_Backpack_Flecktarn";
            addItemsToBackpack[] = {
                LIST_5("ACE_bloodIV"),
                LIST_15("ACE_epinephrine"),
                LIST_20("ACE_morphine"),
                LIST_20("ACE_fieldDressing"),
                LIST_20("ACE_fieldDressing")
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShellPurple"),
                LIST_8("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag")
            };
        };

        //Explosive Specialist
        class soldier_exp_F: Soldier_F {
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

        //Heavy Gunner
        class HeavyGunner_F: Soldier_F {
            primaryWeapon = "rhs_weap_m240G";
            handgunWeapon = "";
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m80a1epr"),
                LIST_4("rhsusf_50Rnd_762x51_m62_tracer")
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell")
            };
        };

        //Marksman
        class soldier_M_F: Soldier_F {
            primaryWeapon = "rhs_weap_hk416d145";
            primaryWeaponOptics ="optic_DMS";
            primaryWeaponUnderbarrel ="bipod_01_F_blk";
            binoculars = "ACE_VectorDay";
            addItemsToVest[] = {
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_17Rnd_9x19_JHP"),
                LIST_9("rhs_mag_30Rnd_556x45_Mk262_Stanag"),
                LIST_4("rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fim92";
            backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_fim92_mag")
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fgm148";
            backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_fgm148_magazine_AT")
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

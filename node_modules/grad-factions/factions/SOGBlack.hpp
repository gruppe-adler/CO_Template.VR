#ifdef NIGHTVISION
  #define NVITEM "rhsusf_ANPVS_14"
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM "rhsusf_acc_anpeq15_bk"
  #define LLITEM_MG "rhsusf_acc_anpeq15side_bk"
#else
  #define LLITEM ""
  #define LLITEM_MG ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "rhsusf_acc_anpeq15_bk_light"
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhsusf_acc_rotex5_grey"
  #define SUPPRESSORITEM_MARKSMAN "rhsusf_acc_SR25S"
#else
  #define SUPPRESSORITEM ""
  #define SUPPRESSORITEM_MARKSMAN ""
#endif

class SOGBLACK {
    class AllUnits {
        uniform = "rhs_uniform_g3_blk";
        vest = "V_PlateCarrier2_blk";
        backpack = "";
        headgear = "rhsusf_opscore_bk_pelt";
        primaryWeapon = "rhs_weap_mk18_KAC";
        primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
        primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponPointer = LLITEM;
        primaryWeaponOptics = "rhsusf_acc_ACOG_RMR";
		primaryWeaponUnderbarrel = "rhsusf_acc_grip3";
		primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon = "rhsusf_weap_glock17g4";
		handgunWeaponMuzzle = "rhsusf_acc_omega9k";
        handgunWeaponMagazine = "rhsusf_mag_17Rnd_9x19_FMJ";
        binoculars = "ACE_Vector";
        map = "ItemMap";
        compass = "ItemCompass";
        watch = "ACE_Altimeter";
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
                LIST_1("ACE_key_lockpick"),

                GRAD_FACTIONS_MEDICITEMS_INF_LIST
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("rhsusf_mag_17Rnd_9x19_FMJ"),
                LIST_10("rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer")
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack = "ga_kitbag_black";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_soft_pouch"
            };
        };

        //Asst. Gunner (MMG) / Ammo Bearer
        class soldier_A_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack = "ga_kitbag_black";
            addItemsToBackpack[] = {
                LIST_4("rhsusf_100Rnd_762x51_m62_tracer"),
                "rhsusf_100Rnd_762x51"
            };
        };

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack = "RHS_M2_MiniTripod_Bag";
        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack = "B_ViperHarness_blk_F";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack = "B_ViperHarness_blk_F";
            addItemsToBackpack[] = {
                "rhs_fgm148_magazine_AT"
            };
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_m249_pip_S_para";
            primaryWeaponMagazine = "rhs_200rnd_556x45_M_SAW";
            primaryWeaponUnderbarrel = "";
            primaryWeaponPointer = LLITEM_MG;
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
				LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_soft_pouch"
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
			vest = "V_TacVestIR_blk";
            backpack = "ga_kitbag_black_medic";
            addItemsToUniform[] = {
                "ACE_MapTools",
                "ACE_Flashlight_MX991"
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
			vest = "V_PlateCarrier1_blk";
            backpack = "ga_kitbag_black";
            addItemsToBackpack[] = {
                "ACE_Clacker",
                "ACE_M26_Clacker",
                "SatchelCharge_Remote_Mag",
                LIST_3("DemoCharge_Remote_Mag")
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "rhs_weap_mk18_m320";
            primaryWeaponUnderbarrel = "";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("rhsusf_mag_17Rnd_9x19_FMJ"),
                LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer"),
                LIST_6("rhs_mag_M441_HE"),
                LIST_2("rhs_mag_m713_Red")
            };
        };

        //Heavy Gunner (MMG)
        class HeavyGunner_F: Soldier_F {
            primaryWeapon = "rhs_weap_m240B";
            primaryWeaponMagazine = "rhsusf_100Rnd_762x51";
            primaryWeaponMuzzle = "";
            primaryWeaponPointer = "";
            primaryWeaponUnderbarrel = "";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "ga_kitbag_black";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m62_tracer"),
                "rhsusf_100Rnd_762x51"
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
				LIST_2("rhsusf_100Rnd_762x51_m62_tracer"),
                "rhsusf_100Rnd_762x51"
            };
        };

        //Gunner (HMG/GMG)
        class support_MG_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack = "RHS_M2_Gun_Bag";
        };

        //Marksman
        class soldier_M_F: Soldier_F {
            primaryWeapon = "rhs_weap_sr25_ec";
            primaryWeaponMagazine = "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";
			primaryWeaponMuzzle = SUPPRESSORITEM_MARKSMAN;
            primaryWeaponPointer = "";
            primaryWeaponOptics = "optic_DMS";
            primaryWeaponUnderbarrel = "bipod_01_F_blk";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("rhsusf_mag_17Rnd_9x19_FMJ"),
                LIST_6("rhsusf_20Rnd_762x51_SR25_m118_special_Mag")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fim92";
            secondaryWeaponMagazine = "rhs_fim92_mag";
			vest = "V_PlateCarrier1_blk";
            backpack = "B_ViperHarness_blk_F";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fgm148";
            secondaryWeaponMagazine = "rhs_fgm148_magazine_AT";
			vest = "V_PlateCarrier1_blk";
            backpack = "B_ViperHarness_blk_F";
            addItemsToBackpack[] = {
                "rhs_fgm148_magazine_AT"
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack = "ga_kitbag_black";
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
			vest = "V_PlateCarrier1_blk";
            backpack = "tfar_rt1523g_black";
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed"),
                LIST_2("SmokeShell")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            primaryWeapon = "rhs_weap_mk18_m320";
            primaryWeaponUnderbarrel = "";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("rhsusf_mag_17Rnd_9x19_FMJ"),
                LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer"),
                LIST_2("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_Smoke_Grenade_shell"),
                LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
                LIST_2("1Rnd_HE_Grenade_shell")
            };
        };

    };
};

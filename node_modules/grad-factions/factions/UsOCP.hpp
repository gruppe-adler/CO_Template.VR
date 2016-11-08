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

class USOCP {
    class AllUnits {
        uniform = "rhs_uniform_cu_ocp";
        vest = "rhsusf_iotv_ocp_Rifleman";
        backpack = "";
        headgear = "rhsusf_ach_helmet_ocp";
        primaryWeapon = "rhs_weap_m4a1_blockII_bk";
        primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponPointer = LLITEM;
        primaryWeaponOptics = "FHQ_optic_HWS_G33";
        handgunWeapon = "rhsusf_weap_m9";
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
                LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag")
            };
        };
        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_M200_soft_pouch"
            };
        };
        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m62_tracer"),
                "rhsusf_100Rnd_762x51"
            };
        };
        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };
        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                "rhs_mag_smaw_HEAA"
            };
        };
        //Autorifleman
        class soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_m249_pip_S";
            handgunWeapon = "";
            vest = "rhsusf_iotv_ocp_SAW";
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_M200_soft_pouch"
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                "rhs_200rnd_556x45_M_SAW"
            };
        };
        //Combat Life Saver
        class medic_F: Soldier_F {
            vest = "rhsusf_iotv_ocp_Medic";
            backpack = "rhsusf_assault_eagleaiii_ocp";
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
                LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag")
            };
        };
        //Explosive Specialist
        class soldier_exp_F: Soldier_F {
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                "ACE_Clacker",
                "ACE_M26_Clacker",
                "SatchelCharge_Remote_Mag",
                LIST_3("DemoCharge_Remote_Mag")
            };
        };
        //Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "rhs_weap_m4a1_blockII_M203_bk";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag"),
                LIST_6("rhs_mag_M441_HE"),
                LIST_2("rhs_mag_m713_Red")
            };
        };
        //Heavy Gunner
        class HeavyGunner_F: Soldier_F {
            primaryWeapon = "rhs_weap_m240B";
            handgunWeapon = "";
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m62_tracer"),
                "rhsusf_100Rnd_762x51"
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                "rhsusf_100Rnd_762x51"
            };
        };
        //Marksman
        class soldier_M_F: Soldier_F {
            primaryWeapon = "rhs_weap_sr25_ec";
            primaryWeaponMuzzle = "";
            primaryWeaponPointer = LLITEM;
            primaryWeaponOptics = "optic_DMS";
            primaryWeaponUnderbarrel = "bipod_01_F_blk";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
                LIST_8("rhsusf_20Rnd_762x51_m118_special_Mag")
            };
        };
        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fim92";
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                LIST_2("rhs_fim92_mag")
            };
        };
        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fgm148";
            backpack = "rhsusf_assault_eagleaiii_ocp";
            addItemsToBackpack[] = {
                LIST_2("rhs_fgm148_magazine_AT")
            };
        };
        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            backpack = "rhsusf_assault_eagleaiii_ocp";
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
            backpack = "tf_rt1523g_rhs";
            headgear = "rhsusf_ach_helmet_headset_ocp";
            vest = "rhsusf_iotv_ocp_Squadleader";
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
            primaryWeapon = "rhs_weap_m4a1_blockII_M203_bk";
            headgear = "rhsusf_ach_helmet_headset_ocp";
            vest = "rhsusf_iotv_ocp_Teamleader";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
                LIST_8("30Rnd_556x45_Stanag"),
                LIST_2("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_Smoke_Grenade_shell"),
                LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
                LIST_2("1Rnd_HE_Grenade_shell")
            };
        };
    };
    class Rank {
        class LIEUTENANT {
            headgear = "rhsusf_patrolcap_ocp";
        };
    };
};

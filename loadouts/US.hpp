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
  class AllPlayable {
    uniform = "rhs_uniform_cu_ocp";
    vest = "rhsusf_iotv_ocp_Rifleman";
    backpack = "";
    headgear = "rhsusf_ach_helmet_ocp";
    primaryWeapon = "rhs_weap_m4a1_blockII_bk";
    primaryWeaponAttachments[] = {"FHQ_optic_HWS_G33", LLITEM, SUPPRESSORITEM};
    handgunWeapon = "rhsusf_weap_m9";
    binoculars = "Binocular";
    map = "ItemMap";
    compass = "ItemCompass";
    watch = "ItemWatch";
    gps = "ItemGPS";
    radio = "tf_anprc152";
    nvgoggles = NVITEM;
    items[] = {};
    magazines[] = {};

    class Type {
      //Rifleman
      class B_Soldier_F {
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
      class B_soldier_AAR_F: B_Soldier_F {
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          LIST_2("rhs_200rnd_556x45_M_SAW"),
          "rhsusf_100Rnd_556x45_M200_soft_pouch"
        };
      };

      //Asst. Gunner (HMG/GMG)
      class B_support_AMG_F: B_Soldier_F {
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          LIST_2("rhsusf_100Rnd_762x51_m62_tracer"),
          "rhsusf_100Rnd_762x51"
        };
      };

      //Asst. Missile Specialist (AA)
      class B_soldier_AAA_F: B_Soldier_F {
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          "rhs_fim92_mag"
        };
      };

      //Asst. Missile Specialist (AT)
      class B_soldier_AAT_F: B_Soldier_F {
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          "rhs_mag_smaw_HEAA"
        };
      };

      //Autorifleman
      class B_soldier_AR_F: B_Soldier_F {
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
      class B_medic_F: B_Soldier_F {
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
      class B_soldier_exp_F: B_Soldier_F {
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          "ACE_Clacker",
          "ACE_M26_Clacker",
          "SatchelCharge_Remote_Mag",
          LIST_3("DemoCharge_Remote_Mag")
        };
      };

      //Grenadier
      class B_Soldier_GL_F: B_Soldier_F {
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
      class B_HeavyGunner_F: B_Soldier_F {
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
      class B_soldier_M_F: B_Soldier_F {
        primaryWeapon = "rhs_weap_sr25_ec";
        primaryWeaponAttachments[] = {"optic_DMS", "bipod_01_F_blk", LLITEM};
        addItemsToVest[] = {
          LIST_2("HandGrenade"),
          LIST_2("SmokeShell"),
          LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
          LIST_8("rhsusf_20Rnd_762x51_m118_special_Mag")
        };
      };

      //Missile Specialist (AA)
      class B_soldier_AA_F: B_Soldier_F {
        secondaryWeapon = "rhs_weap_fim92";
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          LIST_2("rhs_fim92_mag")
        };
      };

      //Missile Specialist (AT)
      class B_soldier_AT_F: B_Soldier_F {
        secondaryWeapon = "rhs_weap_fgm148";
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          LIST_2("rhs_fgm148_magazine_AT")
        };
      };

      //Repair Specialist
      class B_soldier_repair_F: B_Soldier_F {
        backpack = "rhsusf_assault_eagleaiii_ocp";
        addItemsToBackpack[] = {
          "ToolKit",
          "ACE_wirecutter"
        };
      };

      //Rifleman (AT)
      class B_soldier_LAT_F: B_Soldier_F {
        secondaryWeapon = "rhs_weap_M136";
      };

      //Squad Leader
      class B_Soldier_SL_F: B_Soldier_F {
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
      class B_Soldier_TL_F: B_Soldier_F {
        primaryWeapon = "rhs_weap_m4a1_blockII_M203_bk";
        headgear = "rhsusf_ach_helmet_headset_ocp";
        vest = "rhsusf_iotv_ocp_Teamleader";
        addItemsToVest[] = {
          LIST_2("HandGrenade"),
          LIST_2("SmokeShell"),
          LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
          LIST_8("30Rnd_556x45_Stanag"),
          LIST_2("1Rnd_SmokeRed_Grenade_shell"),
          LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
          LIST_2("1Rnd_Smoke_Grenade_shell"),
          LIST_2("1Rnd_SmokeBlue_Grenade_shell")
        };
      };
    };
  };

  class Rank {
    class LIEUTENANT {
      headgear = "rhsusf_patrolcap_ocp";
    };
  };
};

class USMPT: USOCP {
  class AllPlayable: Allplayable {
    uniform = "rhs_uniform_FROG01_wd";
    vest = "rhsusf_spc_rifleman";
    backpack = "";
    headgear = "rhsusf_mich_helmet_marpatwd";
    primaryWeapon = "rhs_weap_m16a4_pmag";
    class Type: Type {

      class B_Soldier_F: B_Soldier_F {};

      class B_soldier_AAR_F: B_soldier_AAR_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_support_AMG_F: B_support_AMG_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_AAA_F: B_soldier_AAA_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_AAT_F: B_soldier_AAT_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_AR_F: B_soldier_AR_F {
        vest = "rhsusf_spc_mg";
        backpack = "B_Kitbag_rgr";
      };

      class B_medic_F: B_medic_F {
        vest = "rhsusf_spc_patchless_radio";
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_exp_F: B_soldier_exp_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_Soldier_GL_F: B_Soldier_GL_F {
        primaryWeapon = "rhs_weap_m16a4_carryhandle_M203";
      };

      class B_HeavyGunner_F: B_HeavyGunner_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_M_F: B_soldier_M_F {
        primaryWeapon = "rhs_weap_m14ebrri";
        vest = "rhsusf_spc_patchless";
      };

      class B_soldier_AA_F: B_soldier_AA_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_AT_F: B_soldier_AT_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_repair_F: B_soldier_repair_F {
        backpack = "B_Kitbag_rgr";
      };

      class B_soldier_LAT_F: B_soldier_LAT_F {};

      class B_Soldier_SL_F: B_Soldier_SL_F {
        backpack = "tf_rt1523g_bwmod";
        headgear = "rhsusf_mich_helmet_marpatwd_norotos_headset";
        vest = "rhsusf_spc_squadleader";
      };

      class B_Soldier_TL_F: B_Soldier_TL_F {
        primaryWeapon = "rhs_weap_m16a4_carryhandle_M203";
        headgear = "rhsusf_mich_helmet_marpatwd_norotos_headset";
        vest = "rhsusf_spc_teamleader";
      };
    };
  };
};


#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhsusf_acc_nt4_tan"
#else
  #define SUPPRESSORITEM ""
#endif

class USUCP: USOCP {
  class AllPlayable: Allplayable {
    uniform = "rhs_uniform_cu_ucp";
    vest = "rhsusf_iotv_ocp_Rifleman";
    backpack = "";
    headgear = "rhsusf_ach_helmet_ucp";
    primaryWeapon = "rhs_weap_m4a1_blockII_d";
    primaryWeaponAttachments[] = {"FHQ_optic_HWS_G33_tan", LLITEM, SUPPRESSORITEM};
    class Type: Type {

      class B_Soldier_F: B_Soldier_F {};

      class B_soldier_AAR_F: B_soldier_AAR_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_support_AMG_F: B_support_AMG_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_AAA_F: B_soldier_AAA_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_AAT_F: B_soldier_AAT_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_AR_F: B_soldier_AR_F {
        vest = "rhsusf_iotv_ucp_SAW";
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_medic_F: B_medic_F {
        vest = "rhsusf_iotv_ucp_Medic";
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_exp_F: B_soldier_exp_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_Soldier_GL_F: B_Soldier_GL_F {
        primaryWeapon = "rhs_weap_m4a1_blockII_M203_d";
      };

      class B_HeavyGunner_F: B_HeavyGunner_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_M_F: B_soldier_M_F {
        primaryWeapon = "rhs_weap_sr25_ec_d";
      };

      class B_soldier_AA_F: B_soldier_AA_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_AT_F: B_soldier_AT_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_repair_F: B_soldier_repair_F {
        backpack = "rhsusf_assault_eagleaiii_ucp";
      };

      class B_soldier_LAT_F: B_soldier_LAT_F {};

      class B_Soldier_SL_F: B_Soldier_SL_F {
        backpack = "tf_rt1523g_bwmod";
        headgear = "rhsusf_ach_helmet_headset_ucp";
        vest = "rhsusf_iotv_ucp_Squadleader";
      };

      class B_Soldier_TL_F: B_Soldier_TL_F {
        primaryWeapon = "rhs_weap_m4a1_blockII_M203_d";
        headgear = "rhsusf_ach_helmet_headset_ucp";
        vest = "rhsusf_iotv_ucp_Teamleader";
      };
    };
  };

  class Rank: Rank {
    class LIEUTENANT: LIEUTENANT {
      headgear = "rhsusf_patrolcap_ucp";
    };
  };
};

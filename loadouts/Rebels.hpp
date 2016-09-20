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
#else
  #define LLITEM ""
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhs_acc_tgpa"
#else
  #define SUPPRESSORITEM "rhs_acc_dtk"
#endif

class ModerateRebels {
  class AllPlayable {
    uniform = "U_I_C_Soldier_Para_3_F";
    vest = "V_TacChestrig_oli_F";
    backpack = "";
    headgear = "";
    primaryWeapon = "rhs_weap_ak74m_2mag";
    primaryWeaponAttachments[] = {SUPPRESSORITEM, LLITEM};
    handgunWeapon = "rhs_weap_makarov_pm";
    binoculars = "Binocular";
    map = "ItemMap";
    compass = "ItemCompass";
    watch = "ItemWatch";
    gps = "ItemGPS";
    radio = "tf_fadak";
    nvgoggles = NVITEM;
    items[] = {};
    magazines[] = {};

    class Type {
      //Rifleman
      class I_Soldier_F {
        addItemsToUniform[] = {
          "ACE_MapTools",
          "ACE_EarPlugs",
          LIST_2("rhs_mag_9x18_8_57N181S"),
          LIST_2("ACE_CableTie"),
          LIST_8("ACE_fieldDressing"),
          LIST_4("ACE_morphine"),
          "ACE_epinephrine",
          "ACE_Flashlight_KSF1"
        };
        addItemsToVest[] = {
          "rhs_mag_rgd5",
          "rhs_mag_rdg2_white",
          LIST_8("rhs_30Rnd_545x39_AK")
        };
      };

      //Asst. Autorifleman
      class I_Soldier_AAR_F: I_Soldier_F {
        uniform = "U_I_C_Soldier_Para_4_F";
        backpack = "B_FieldPack_khk";
        addItemsToBackpack[] = {
          LIST_3("rhs_100Rnd_762x54mmR_green")
        };
      };

      //Asst. Gunner (HMG/GMG)
      class I_support_AMG_F: I_Soldier_AAR_F {

      };

      //Asst. Missile Specialist (AA)
      class I_Soldier_AAA_F: I_Soldier_F {
        uniform = "U_C_HunterBody_grn";
        vest = "V_TacChestrig_cbr_F";
        backpack = "rhs_rpg_empty";
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_9k38_rocket")
        };
      };

      //Asst. Missile Specialist (AT)
      class I_Soldier_AAT_F: I_Soldier_F {
        uniform = "U_I_C_Soldier_Para_1_F";
        vest = "V_TacChestrig_cbr_F";
        goggles = "rhs_scarf";
        backpack = "rhs_rpg_empty";
        addItemsToBackpack[] = {
          LIST_3("rhs_rpg7_PG7VL_mag")
        };
      };

      //Autorifleman
      class I_Soldier_AR_F: I_Soldier_F {
        uniform = "U_BG_Guerilla2_3";
        vest = "V_TacChestrig_cbr_F";
        backpack = "B_FieldPack_oli";
        headgear = "rhs_beanie_green";
        primaryWeapon = "rhs_weap_pkm";
        addItemsToVest[] = {
          LIST_2("rhs_100Rnd_762x54mmR_green")
        };
        addItemsToBackpack[] = {
          LIST_3("rhs_100Rnd_762x54mmR_green")
        };
      };

      //Combat Life Saver
      class I_medic_F: I_Soldier_F {
        uniform = "U_BG_Guerilla2_1";
        vest = "V_BandollierB_khk";
        backpack = "B_Kitbag_cbr";
        headgear = "H_Cap_blk";
        primaryWeapon = "rhs_weap_ak74m";
        addItemsToVest[] = {
          LIST_2("rhs_mag_rdg2_white"),
          LIST_6("rhs_30Rnd_545x39_AK")
        };
        addItemsToBackpack[] = {
          LIST_5("ACE_bloodIV"),
          LIST_15("ACE_epinephrine"),
          LIST_20("ACE_morphine"),
          LIST_20("ACE_fieldDressing"),
          LIST_20("ACE_fieldDressing"),
          LIST_6("rhs_mag_rdg2_white")
        };
      };

      //Explosive Specialist
      class I_Soldier_exp_F: I_Soldier_F {
        uniform = "U_C_HunterBody_grn";
        vest = "V_TacChestrig_cbr_F";
        backpack = "B_FieldPack_khk";
        primaryWeapon = "rhs_weap_ak74m";
        addItemsToBackpack[] = {
          LIST_2("IEDLandSmall_Remote_Mag"),
          "IEDLandBig_Remote_Mag",
          "ACE_Cellphone"
        };
      };

      //Grenadier
      class I_Soldier_GL_F: I_Soldier_F {
        uniform = "U_BG_Guerilla3_1";
        vest = "V_TacChestrig_cbr_F";
        backpack = "B_FieldPack_khk";
        headgear = "H_Bandanna_khk";
        primaryWeapon = "rhs_weap_ak74m_fullplum_gp25";
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_rgd5"),
          LIST_2("rhs_mag_rdg2_white"),
          LIST_6("rhs_VOG25"),
          LIST_2("rhs_VG40MD_White"),
          LIST_2("rhs_VG40MD_Red")
        };
      };

      //Heavy Gunner
      class I_HeavyGunner_F: I_Soldier_AR_F {

      };

      //Marksman
      class I_Soldier_M_F: I_Soldier_F {
        uniform = "U_BG_Guerilla2_3";
        vest = "V_TacChestrig_grn_F";
        goggles = "G_Bandanna_khk";
        primaryWeapon = "rhs_weap_m76";
        primaryWeaponAttachments[] = {"rhs_acc_1p78"};
        addItemsToVest[] = {
          LIST_2("rhs_mag_rdg2_white"),
          LIST_12("rhsgref_10Rnd_792x57_m76")
        };
      };

      //Missile Specialist (AA)
      class I_Soldier_AA_F: I_Soldier_F {
        uniform = "U_BG_Guerilla1_1";
        vest = "V_TacChestrig_cbr_F";
        backpack = "rhs_rpg_empty";
        primaryWeapon = "rhs_weap_ak74m_desert";
        secondaryWeapon = "rhs_weap_igla";
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_9k38_rocket")
        };
      };

      //Missile Specialist (AT)
      class I_Soldier_AT_F: I_Soldier_F {
        uniform = "U_BG_Guerilla1_1";
        vest = "V_TacChestrig_cbr_F";
        backpack = "rhs_rpg_empty";
        primaryWeapon = "rhs_weap_ak74m_desert";
        secondaryWeapon = "rhs_weap_rpg7";
        addItemsToBackpack[] = {
          LIST_3("rhs_rpg7_PG7VL_mag"),
          "rhs_rpg7_OG7V_mag"
        };
      };

      //Repair Specialist
      class I_Soldier_repair_F: I_Soldier_F {
        uniform = "U_BG_Guerilla2_2";
        vest = "V_TacChestrig_oli_F";
        backpack = "rhs_sidor";
        primaryWeapon = "rhs_weap_ak74m_camo";
        addItemsToBackpack[] = {
          "ToolKit",
          "ACE_wirecutter"
        };
      };

      //Rifleman (AT)
      class I_Soldier_LAT_F: I_Soldier_F {
        uniform = "U_I_C_Soldier_Bandit_3_F";
        vest = "V_TacChestrig_oli_F";
        goggles = "G_Bandanna_oli";
        primaryWeapon = "rhs_weap_ak74m_2mag_camo";
        secondaryWeapon = "rhs_weap_rpg26";
      };

      //Squad Leader
      class I_Soldier_SL_F: I_Soldier_F {
        uniform = "U_I_C_Soldier_Para_2_F";
        vest = "V_TacVest_camo";
        primaryWeapon = "rhs_weap_ak74m";
        primaryWeaponAttachments[] = {SUPPRESSORITEM, LLITEM, "rhs_acc_1p63"};
      };

      class I_Soldier_TL_F: I_Soldier_F {
        uniform = "U_BG_leader";
        vest = "V_TacVest_brn";
        primaryWeapon = "rhs_weap_ak74m";
        primaryWeaponAttachments[] = {SUPPRESSORITEM, LLITEM, "rhs_acc_1p63"};
      };
    };
  };
};

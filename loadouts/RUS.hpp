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

class RUFlora {
  class AllPlayable {
    uniform = "rhs_uniform_flora";
    vest = "rhs_6b13_Flora_6sh92";
    backpack = "";
    headgear = "rhs_6b26";
    primaryWeapon = "rhs_weap_ak74m";
    primaryWeaponAttachments[] = {"rhs_acc_pkas", SUPPRESSORITEM, LLITEM};
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
      class O_Soldier_F {
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
          LIST_2("rhs_mag_rgd5"),
          "rhs_mag_rdg2_white",
          LIST_8("rhs_30Rnd_545x39_AK")
        };
      };

      //Asst. Autorifleman
      class O_Soldier_AAR_F: O_Soldier_F {
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_3("rhs_100Rnd_762x54mmR_green")
        };
      };

      //Asst. Gunner (HMG/GMG)
      class O_support_AMG_F: O_Soldier_AAR_F {

      };

      //Asst. Missile Specialist (AA)
      class O_Soldier_AAA_F: O_Soldier_F {
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_9k38_rocket")
        };
      };

      //Asst. Missile Specialist (AT)
      class O_Soldier_AAT_F: O_Soldier_F {
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_2("RPG32_F")
        };
      };

      //Autorifleman
      class O_Soldier_AR_F: O_Soldier_F {
        primaryWeapon = "rhs_weap_pkp";
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_3("rhs_100Rnd_762x54mmR_green")
        };
        addItemsToVest[] = {
          LIST_2("rhs_mag_rgd5"),
          LIST_2("rhs_mag_rdg2_white"),
          "rhs_100Rnd_762x54mmR_7N26"
        };
      };

      //Combat Life Saver
      class O_medic_F: O_Soldier_F {
        vest = "rhs_6b13_Flora_6sh92_headset_mapcase";
        backpack = "rhs_assault_umbts";
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
      class O_Soldier_exp_F: O_Soldier_F {
        backpack = "rhs_assault_umbts_engineer_empty";
        addItemsToBackpack[] = {
          "ACE_Clacker",
          "ACE_M26_Clacker",
          "ACE_DefusalKit",
          "SatchelCharge_Remote_Mag",
          LIST_3("DemoCharge_Remote_Mag")
        };
      };

      //Grenadier
      class O_Soldier_GL_F: O_Soldier_F {
        primaryWeapon = "rhs_weap_ak74m_gp25";
        vest = "rhs_6b13_Flora_6sh92_vog";
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_rgd5"),
          LIST_2("rhs_mag_rdg2_white"),
          LIST_6("rhs_VOG25"),
          LIST_2("rhs_VG40MD_White"),
          LIST_2("rhs_VG40MD_Green"),
          LIST_2("rhs_VG40MD_Red")
        };
      };

      //Heavy Gunner
      class O_HeavyGunner_F: O_Soldier_AR_F {

      };

      //Marksman
      class O_Soldier_M_F: O_Soldier_F {
        primaryWeapon = "rhs_weap_svdp";
        primaryWeaponAttachments[] = {"rhs_acc_pso1m21"};
        addItemsToVest[] = {
          LIST_2("rhs_mag_rgd5"),
          "rhs_mag_rdg2_white",
          LIST_11("rhs_10Rnd_762x54mmR_7N1")
        };
      };

      //Missile Specialist (AA)
      class O_Soldier_AA_F: O_Soldier_F {
        primaryWeapon = "rhs_weap_ak74m_camo";
        secondaryWeapon = "rhs_weap_igla";
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_9k38_rocket")
        };
      };

      //Missile Specialist (AT)
      class O_Soldier_AT_F: O_Soldier_F {
        primaryWeapon = "rhs_weap_ak74m_camo";
        secondaryWeapon = "launch_RPG32_ghex_F";
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_2("RPG32_F")
        };
      };

      //Repair Specialist
      class O_Soldier_repair_F: O_Soldier_F {
        primaryWeapon = "rhs_weap_ak74m_2mag";
        headgear = "rhs_6b26_ess";
        backpack = "rhs_assault_umbts_engineer_empty";
        addItemsToBackpack[] = {
          "ToolKit",
          "ACE_wirecutter"
        };
      };

      //Rifleman (AT)
      class O_Soldier_LAT_F: O_Soldier_F {
        secondaryWeapon = "rhs_weap_rpg7";
        headgear = "rhs_6b26_bala";
        backpack = "rhs_assault_umbts";
        addItemsToBackpack[] = {
          LIST_3("rhs_rpg7_PG7VL_mag"),
          "rhs_rpg7_OG7V_mag"
        };
      };

      //Squad Leader
      class O_Soldier_SL_F: O_Soldier_F {
        primaryWeapon = "rhs_weap_ak74m_gp25";
        backpack = "tf_mr3000_rhs";
        headgear = "rhs_6b26_ess";
        vest = "rhs_6b13_Flora_6sh92_radio";
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_rdg2_white"),
          LIST_4("rhs_VG40MD_Green"),
          LIST_4("rhs_VG40MD_Red"),
          LIST_4("rhs_VG40MD_White")
        };
      };

      //Team Leader
      class O_Soldier_TL_F: O_Soldier_SL_F {
        addItemsToBackpack[] = {
          LIST_2("rhs_mag_rdg2_white"),
          LIST_2("rhs_VG40MD_Green"),
          LIST_2("rhs_VG40MD_Red"),
          LIST_2("rhs_VG40MD_White"),
          LIST_4("rhs_VOG25")
        };
      };
    };
  };

  class Rank {
    class LIEUTENANT {
      headgear = "rhs_fieldcap_vsr";
    };
  };
};

class RUEMR: RUFlora {
  class Allplayable: Allplayable {
    uniform = "rhs_uniform_msv_emr";
    vest = "rhs_6b13_EMR_6sh92";
    headgear = "rhs_6b27m_digi";

    class Type: Type {
      class O_Soldier_F: O_Soldier_F {

      };

      class O_soldier_AAR_F: O_soldier_AAR_F {

      };

      class O_support_AMG_F: O_support_AMG_F {
      };

      class O_soldier_AAA_F: O_soldier_AAA_F {

      };

      class O_soldier_AAT_F: O_soldier_AAT_F {

      };

      class O_soldier_AR_F: O_soldier_AR_F {

      };

      class O_medic_F: O_medic_F {
        vest = "rhs_6b13_EMR_6sh92_headset_mapcase";
      };

      class O_soldier_exp_F: O_soldier_exp_F {

      };

      class O_Soldier_GL_F: O_Soldier_GL_F {
        vest = "rhs_6b13_EMR_6sh92_vog";
      };

      class O_HeavyGunner_F: O_HeavyGunner_F {

      };

      class O_soldier_M_F: O_soldier_M_F {

      };

      class O_soldier_AA_F: O_soldier_AA_F {

      };

      class O_soldier_AT_F: O_soldier_AT_F {

      };

      class O_soldier_repair_F: O_soldier_repair_F {
        headgear = "rhs_6b27m_digi_ess";
      };

      class O_soldier_LAT_F: O_soldier_LAT_F {
        heargear = "rhs_6b27m_digi_bala";
      };

      class O_Soldier_SL_F: O_Soldier_SL_F {
        headgear = "rhs_6b27m_digi_ess";
        vest = "rhs_6b13_EMR_6sh92_radio";
      };

      class O_Soldier_TL_F: O_Soldier_TL_F {
        headgear = "rhs_6b27m_digi_ess";
        vest = "rhs_6b13_EMR_6sh92_radio";
      };
    };
  };

  class Rank: Rank {
    class LIEUTENANT: LIEUTENANT {
      headgear = "rhs_fieldcap_digi";
    };
  };
};

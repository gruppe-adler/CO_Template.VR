class BWFleck {
  class AllPlayable {
    class Type {
      //Rifleman
      class B_Soldier_F {
        uniform = "ARC_GER_Flecktarn_Uniform";
        vest = "ARC_GER_Flecktarn_Plate_Carrier";
        backpack = "";
        headgear = "ARC_GER_Flecktarn_Mich";
        primaryWeapon = "arifle_SPAR_01_blk_F";
        primaryWeaponAttachments[] = {"FHQ_optic_HWS_G33"};
        handgunWeapon = "hgun_ACPC2_F";
        binoculars = "Binocular";
        map = "ItemMap";
        compass = "ItemCompass";
        watch = "ItemWatch";
        gps = "ItemGPS";
        radio = "tf_anprc152";
        nvgoggles = "";
        items[] = {};
        magazines[] = {};
        addItemsToUniform[] = {
          "ACE_MapTools",
          "ACE_EarPlugs",
          "ACE_DefusalKit",
          LIST_2("ACE_CableTie"),
          LIST_8("ACE_fieldDressing"),
          LIST_4("ACE_morphine"),
          "ACE_epinephrine"
        };
        addItemsToVest[] = {
          LIST_2("HandGrenade"),
          LIST_2("SmokeShell"),
          LIST_2("16Rnd_9x21_Mag"),
          LIST_8("30Rnd_556x45_Stanag")
        };
      };

      //Asst. Autorifleman
      class B_soldier_AAR_F: B_Soldier_F {
        backpack = "ARC_GER_Kitbag_compact_Flecktarn";
        addItemsToBackpack[] = {
          LIST_2("150Rnd_556x45_Drum_Mag_F"),
          LIST_4("150Rnd_556x45_Drum_Mag_Tracer_F")
        };
      };

      //Asst. Missile Specialist (AA)
      class B_soldier_AAA_F: B_Soldier_F {
        backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
        addItemsToBackpack[] = {
          LIST_2("rhs_fim92_mag")
        };
      };

      //Asst. Missile Specialist (AT)
      class B_soldier_AAT_F: B_Soldier_F {
        backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
        addItemsToBackpack[] = {
          LIST_2("rhs_fgm148_magazine_AT")
        };
      };

      //Autorifleman
      class B_soldier_AR_F: B_Soldier_F {
        primaryWeapon = "arifle_SPAR_02_blk_F";
        primaryWeaponAttachments[] = {"FHQ_optic_HWS_G33", "bipod_01_F_blk"};
        handgunWeapon = "";
        backpack = "ARC_GER_Kitbag_compact_Flecktarn";
        addItemsToBackpack[] = {
          LIST_2("150Rnd_556x45_Drum_Mag_F"),
          LIST_4("150Rnd_556x45_Drum_Mag_Tracer_F")
        };
        addItemsToVest[] = {
          "150Rnd_556x45_Drum_Mag_F",
          LIST_2("HandGrenade"),
          LIST_2("SmokeShell")
        };
      };

      //Combat Life Saver
      class B_medic_F: B_Soldier_F {
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
          LIST_2("16Rnd_9x21_Mag"),
          LIST_8("30Rnd_556x45_Stanag")
        };
      };

      //Explosive Specialist
      class B_soldier_exp_F: B_Soldier_F {
        backpack = "ARC_GER_Kitbag_compact_Flecktarn";
        addItemsToBackpack[] = {
          "ACE_Clacker",
          "ACE_M26_Clacker",
          "SatchelCharge_Remote_Mag",
          LIST_5("DemoCharge_Remote_Mag")
        };
      };

      //Grenadier
      class B_Soldier_GL_F: B_Soldier_F {
        primaryWeapon = "arifle_SPAR_01_GL_blk_F";
        addItemsToVest[] = {
          LIST_2("HandGrenade"),
          LIST_2("SmokeShell"),
          LIST_2("16Rnd_9x21_Mag"),
          LIST_8("30Rnd_556x45_Stanag"),
          LIST_8("1Rnd_HE_Grenade_shell"),
          LIST_3("1Rnd_SmokeRed_Grenade_shell")
        };
      };

      //Marksman
      class B_soldier_M_F: B_Soldier_F {
        primaryWeapon = "arifle_SPAR_03_blk_F";
        primaryWeaponAttachments[] = {"optic_DMS", "bipod_01_F_blk"};
        addItemsToVest[] = {
          LIST_2("SmokeShell"),
          LIST_2("16Rnd_9x21_Mag"),
          LIST_9("20Rnd_762x51_Mag")
        };
      };

      //Missile Specialist (AA)
      class B_soldier_AA_F: B_Soldier_F {
        secondaryWeapon = "rhs_weap_fim92";
        backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
        addItemsToBackpack[] = {
          LIST_2("rhs_fim92_mag")
        };
      };

      //Missile Specialist (AT)
      class B_soldier_AT_F: B_Soldier_F {
        secondaryWeapon = "rhs_weap_fgm148";
        backpack = "ARC_GER_Backpack_Carryall_Flecktarn";
        addItemsToBackpack[] = {
          LIST_2("rhs_fgm148_magazine_AT")
        };
      };

      //Repair Specialist
      class B_soldier_repair_F: B_Soldier_F {
        backpack = "ARC_GER_Backpack_compact_Flecktarn";
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
      class B_Soldier_TL_F: B_Soldier_F {
        primaryWeapon = "arifle_SPAR_01_GL_blk_F";
        addItemsToVest[] = {
          LIST_2("HandGrenade"),
          LIST_2("SmokeShell"),
          LIST_2("16Rnd_9x21_Mag"),
          LIST_8("30Rnd_556x45_Stanag"),
          LIST_2("1Rnd_SmokeRed_Grenade_shell"),
          LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
          LIST_2("1Rnd_SmokePurple_Grenade_shell"),
          LIST_2("1Rnd_SmokeBlue_Grenade_shell")
        };
      };
    };
  };
};

class BWTrop: BWFleck {
  class AllPlayable: AllPlayable {
    class Type: Type {
      class B_Soldier_F: B_Soldier_F {
        uniform = "ARC_GER_Tropentarn_Uniform";
        vest = "ARC_GER_Tropentarn_Plate_Carrier";
        headgear = "ARC_GER_Tropentarn_Mich";
        primaryWeapon = "arifle_SPAR_01_snd_F";
        primaryWeaponAttachments[] = {"FHQ_optic_HWS_G33_tan"};
      };

      class B_soldier_AAR_F: B_soldier_AAR_F {
        backpack = "ARC_GER_Kitbag_compact_Tropentarn";
      };

      class B_soldier_AAA_F: B_soldier_AAA_F {
        backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
      };

      class B_soldier_AAT_F: B_soldier_AAT_F {
        backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
      };

      class B_soldier_AR_F: B_soldier_AR_F {
        primaryWeapon = "arifle_SPAR_02_snd_F";
        primaryWeaponAttachments[] = {"FHQ_optic_HWS_G33_tan", "bipod_01_F_snd"};
        backpack = "ARC_GER_Kitbag_compact_Tropentarn";
      };

      class B_medic_F: B_medic_F {
        backpack = "ARC_GER_Backpack_Tropentarn";
      };

      class B_soldier_exp_F: B_soldier_exp_F {
        backpack = "ARC_GER_Kitbag_compact_Tropentarn";
      };

      class B_Soldier_GL_F: B_Soldier_GL_F {
        primaryWeapon = "arifle_SPAR_01_GL_snd_F";
      };

      class B_soldier_M_F: B_soldier_M_F {
        primaryWeapon = "arifle_SPAR_03_snd_F";
        primaryWeaponAttachments[] = {"optic_DMS", "bipod_01_F_snd"};
      };

      class B_soldier_AA_F: B_soldier_AA_F {
        backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
      };

      class B_soldier_AT_F: B_soldier_AT_F {
        backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
      };

      class B_soldier_repair_F: B_soldier_repair_F {
        backpack = "ARC_GER_Kitbag_compact_Tropentarn";
      };

      class B_soldier_LAT_F: B_soldier_LAT_F {};

      class B_Soldier_SL_F: B_Soldier_SL_F {
        backpack = "tf_rt1523g_big_bwmod_tropen";
      };

      class B_Soldier_TL_F: B_Soldier_TL_F {
        primaryWeapon = "arifle_SPAR_01_GL_snd_F";
      };
    };
  };
};

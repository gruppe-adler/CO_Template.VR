#ifdef NIGHTVISION
  #define NVITEM "rhs_1PN138"
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
  #define SUPPRESSORITEM "rhs_acc_pbs1"
#else
  #define SUPPRESSORITEM ""
#endif

class Taliban {
	  class AllUnits {
		    uniform = "LOP_U_AM_Fatigue_01_5";
		    vest = "V_BandollierB_khk";
		    backpack = "";
		    headgear = "LOP_H_Turban_mask";
		    primaryWeapon = "rhs_weap_m70b1";
            primaryWeaponMagazine = "rhs_30Rnd_762x39mm";
		    primaryWeaponOptics = "";
		    primaryWeaponPointer = LLITEM;
		    primaryWeaponMuzzle = SUPPRESSORITEM;
            primaryWeaponUnderbarrel = "";
    		primaryWeaponUnderbarrelMagazine = "";
            secondaryWeapon = "";
            secondaryWeaponMagazine = "";
		    handgunWeapon = "";
		    binoculars = "Binocular";
		    map = "ItemMap";
		    compass = "ItemCompass";
		    watch = "ItemWatch";
		    gps = "";
		    radio = "tfar_fadak";
		    nvgoggles = NVITEM;
    };
    class Type {
        //Rifleman
        class Soldier_F {
            uniform = "LOP_U_AM_Fatigue_02_6";
            addItemsToUniform[] = {
              LIST_2("ACE_Cabletie"),
              LIST_8("ACE_fieldDressing"),
              LIST_4("ACE_quikclot"),
              LIST_4("ACE_morphine"),
              "ACE_Flashlight_KSF1"
            };
            addItemsToVest[] = {
                LIST_4("rhs_30Rnd_762x39mm"),
                LIST_3("rhs_mag_rdg2_white"),
                "rhs_mag_rgd5"
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_03_5";
    		    headgear = "LOP_H_Turban";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR_green")
            };
        };

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {

        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_03_6";
            backpack = "B_Carryall_khk";
            addItemsToBackpack[] = {
                LIST_3("rhs_mag_9k38_rocket")
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_04_4";
            backpack = "rhs_rpg_empty";
            addItemsToBackpack[] = {
                LIST_3("rhs_rpg7_PG7VR_mag")
            };
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_03";
    		    headgear = "LOP_H_Shemag_RED2";
            vest = "V_BandollierB_khk";
            primaryWeapon = "rhs_weap_pkm";
            primaryWeaponMagazine = "rhs_100Rnd_762x54mmR_green";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR_green")
            };
            addItemsToVest[] = {
              "rhs_100Rnd_762x54mmR_green",
              LIST_3("rhs_mag_rdg2_white"),
              "rhs_mag_rgd5"
            };
        };

        //Combat Life Saver
        //Kein Loadout über Medicloadout, die Tasche ist zu klein!
        //Das ist gewollt.
        class medic_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_02";
    		    headgear = "rds_Villager_cap2";
            primaryWeapon = "rhs_weap_m92_fold";
            backpack = "rhs_medic_bag";
            addItemsToUniform[] = {
              LIST_2("ACE_Cabletie"),
              LIST_20("ACE_fieldDressing"),
              LIST_20("ACE_quikclot"),
              LIST_20("ACE_elasticBandage"),
              LIST_4("ACE_morphine"),
              "ACE_Flashlight_KSF1"
            };
            addItemsToBackpack[] = {
                LIST_5("ACE_salineIV"),
                LIST_10("ACE_epinephrine"),
                LIST_10("ACE_morphine"),
                "GRAD_ALK",
                "ACE_surgicalKit"
            };
        };

        //Explosive Specialist
        class soldier_exp_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_01";
    		    headgear = "LOP_H_Shemag_BLK";
            backpack = "rhs_assault_umbts_engineer_empty";
            addItemsToBackpack[] = {
                "IEDLandBig_Remote_Mag",
                LIST_2("IEDLandSmall_Remote_Mag")
            };
            addItemsToVest[] = {
                "ACE_Cellphone",
                "rhs_mag_rgd5"
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_04";
    		    headgear = "LOP_H_Shemag_RED1";
            primaryWeapon = "rhs_weap_akm_gp25";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rgd5"),
                LIST_2("rhs_mag_rdg2_white"),
                LIST_10("rhs_VOG25"),
                LIST_2("rhs_VG40MD_White"),
                LIST_2("rhs_VG40MD_Green"),
                LIST_2("rhs_VG40MD_Red")
            };
            addItemsToVest[] = {
                LIST_4("rhs_30Rnd_762x39mm"),
                LIST_5("rhs_mag_rgd5")
            };
        };

        //Heavy Gunner
        class HeavyGunner_F: Soldier_F {

        };

        //Marksman
        class soldier_M_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_01";
    		    headgear = "LOP_H_Shemag_TAN";
            primaryWeapon = "rhs_weap_svdp";
            primaryWeaponMagazine = "rhs_10Rnd_762x54mmR_7N1";
            primaryWeaponAttachments[] = {"rhs_acc_pso1m21"};
            addItemsToVest[] = {
                LIST_2("rhs_mag_rgd5"),
                LIST_10("rhs_10Rnd_762x54mmR_7N1")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_02";
            secondaryWeapon = "rhs_weap_igla";
            secondaryWeaponMagazine = "rhs_mag_9k38_rocket";
            backpack = "rhs_rpg_empty";
            addItemsToBackpack[] = {
                "rhs_mag_9k38_rocket"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_03";
    		    headgear = "LOP_H_Shemag_BLU";
            secondaryWeapon = "rhs_weap_rpg7";
            secondaryWeaponMagazine = "rhs_rpg7_PG7VR_mag";
            backpack = "rhs_rpg_empty";
            addItemsToBackpack[] = {
                LIST_2("rhs_rpg7_PG7VR_mag")
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_02";
    		    headgear = "LOP_H_Shemag_BLK";
            backpack = "rhs_assault_umbts_engineer_empty";
            addItemsToBackpack[] = {
                "ToolKit",
                "ACE_wirecutter"
            };
        };

        //Rifleman (AT)
        class soldier_LAT_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_04";
    		    headgear = "LOP_H_Shemag_GRE";
            secondaryWeapon = "rhs_weap_rpg26";
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_01";
    		    headgear = "LOP_H_Shemag_RED1";
            primaryWeapon = "rhs_weap_akms_gp25";
            backpack = "rhs_sidor";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rdg2_white"),
                LIST_4("rhs_VG40MD_Green"),
                LIST_4("rhs_VG40MD_Red"),
                LIST_4("rhs_VG40MD_White")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_04";
    		    headgear = "LOP_H_Shemag_RED2";
            primaryWeapon = "rhs_weap_akms_gp25";
            backpack = "B_Carryall_khk";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rdg2_white"),
                LIST_2("rhs_VG40MD_Green"),
                LIST_2("rhs_VG40MD_Red"),
                LIST_2("rhs_VG40MD_White"),
                LIST_4("rhs_VOG25")
            };
        };
    };

    class Rank {
        class LIEUTENANT {
            headgear = "";
        };
    };
};

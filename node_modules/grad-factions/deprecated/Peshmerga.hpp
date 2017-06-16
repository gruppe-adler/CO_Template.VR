#ifdef NIGHTVISION
  #define NVITEM "ACE_NVG_Gen1"
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
  #define SUPPRESSORITEM "rhs_acc_dtk"
#else
  #define SUPPRESSORITEM ""
#endif

class Peshmerga {
	class AllUnits {
        uniform = "LOP_U_PESH_Fatigue_01";
        vest = "LOP_V_CarrierRig_TAN";
        backpack = "SMA_BackPack_Tan";
        headgear = "LOP_H_6B27M_M81";
        primaryWeapon = "rhs_weap_ak74m";
        primaryWeaponMagazine = "rhs_30Rnd_545x39_7N10_AK";
        primaryWeaponOptics = "rhs_acc_1p29";
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
        gps = "ItemGPS";
        radio = "tf_fadak";
        nvgoggles = NVITEM;
    };
    class Type {
        //Rifleman
        class Soldier_F {
            addItemsToUniform[] = {
                "ACE_Flashlight_MX991",
                "ACE_MapTools",
                "ACE_CableTie",
                "ACE_epinephrine",
                "ACE_EarPlugs",
                LIST_8("ACE_fieldDressing"),
                LIST_4("ACE_morphine"),
                LIST_10("ACE_fieldDressing"),
                LIST_2("ACE_Chemlight_White")
            };
            addItemsToVest[] = {
                "rhs_mag_rdg2_white",
                "rhs_mag_rdg2_black",
                "rhs_mag_rgd5",
                LIST_5("rhs_30Rnd_545x39_7N10_AK")
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                LIST_4("rhs_100Rnd_762x54mmR_7N26")
            };
        };

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_9k38_rocket")
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                LIST_2("rhs_rpg7_PG7VL_mag"),
                LIST_2("rhs_rpg7_OG7V_mag")
          	};
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_pkp";
            primaryWeaponMagazine = "rhs_100Rnd_762x54mmR_7N26";
            primaryWeaponOptics = "rhs_acc_1p29";
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR_7N26"),
                "rhs_acc_1p29"
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                LIST_12("ACE_bloodIV"),
                LIST_15("ACE_epinephrine"),
                LIST_20("ACE_morphine"),
                LIST_20("ACE_fieldDressing"),
                LIST_20("ACE_fieldDressing")
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShellPurple"),
                LIST_8("SmokeShell"),
                LIST_8("rhs_30Rnd_545x39_7N10_AK")
            };
        };

        //Explosive Specialist
        class soldier_exp_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                "ACE_Clacker",
                "ACE_M26_Clacker",
                "SatchelCharge_Remote_Mag",
                LIST_5("DemoCharge_Remote_Mag")
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "rhs_weap_ak74m_gp25";
            addItemsToVest[] = {
                LIST_2("rhs_mag_rgd5"),
                LIST_2("rhs_mag_rdg2_white"),
                LIST_8("rhs_30Rnd_545x39_7N10_AK"),
                LIST_2("rhs_VG40TB"),
                LIST_2("rhs_VOG25P"),
                LIST_1("rhs_VOG25")
            };
        };

        //Heavy Gunner
        class HeavyGunner_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
        };

        //Marksman
        class soldier_M_F: Soldier_F {
            primaryWeapon = "rhs_weap_svdp";
            primaryWeaponMagazine = "rhs_10Rnd_762x54mmR_7N1";
            primaryWeaponOptics = "rhs_acc_pso1m2";
            binoculars = "ACE_Vector";
            addItemsToVest[] = {
                LIST_2("SmokeShell"),
                LIST_7("rhs_10Rnd_762x54mmR_7N1")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_igla";
            secondaryWeaponMagazine = "rhs_mag_9k38_rocket";
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                "rhs_mag_9k38_rocket"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg7";
            secondaryWeaponMagazine = "rhs_rpg7_PG7VL_mag";
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                "rhs_rpg7_PG7VL_mag",
                LIST_2("rhs_rpg7_OG7V_mag")
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
            addItemsToBackpack[] = {
                "ToolKit",
                "ACE_wirecutter"
            };
        };

        //Rifleman (AT)
        class soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
            backpack = "tf_mr3000_rhs";
            uniform = "LOP_U_IA_Fatigue_03_slv";
            headgear = "LOP_H_6B27M_TRI";
            binoculars = "ACE_Vector";
            addItemsToBackpack[] = {
                LIST_2("rhs_mag_rdg2_white"),
                LIST_2("rhs_mag_rdg2_black"),
                LIST_5("rhs_mag_nspd")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            backpack = "SMA_BackPack_Tan";
        };
    };

    class Rank {
        class LIEUTENANT {
            headgear = "LOP_H_Beret_Pesh";
            uniform = "LOP_U_PESH_Fatigue_02";
        };
    };
};

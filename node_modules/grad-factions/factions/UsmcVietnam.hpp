#ifdef NIGHTVISION
  #define NVITEM "rhsusf_ANPVS_15"
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM ""
#else
  #define LLITEM ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "rhs_acc_2dpZenit_ris"
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhsusf_acc_nt4_black"
#else
  #define SUPPRESSORITEM ""
#endif

class UsmcVietnam {
	class AllUnits {
		uniform = "LOP_U_TKA_Fatigue_02";
		vest = "LOP_V_6Sh92_OLV";
		backpack = "";
		headgear = "rhsgref_helmet_M1_bare";
		primaryWeapon = "rhs_weap_m16a4_carryhandle";
        	primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_Mk318_Stanag";
		primaryWeaponOptics = "";
		primaryWeaponPointer = LLITEM;
		primaryWeaponMuzzle = SUPPRESSORITEM;
        	primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
        	secondaryWeapon = "";
        	secondaryWeaponMagazine = "";
		handgunWeapon = "rhsusf_weap_m1911a1";
        	handgunWeaponMagazine = "rhsusf_mag_7x45acp_MHP";
		binoculars = "";
		map = "ItemMap";
		compass = "ItemCompass";
		watch = "ItemWatch";
		gps = "";
		radio = "";
		goggles = "";
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
                LIST_2("rhsusf_mag_7x45acp_MHP"),
                LIST_7("rhs_mag_30Rnd_556x45_Mk318_Stanag")
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhs_200rnd_556x45_T_SAW"
            };
        };

        //Asst. Gunner (MMG) / Ammo Bearer
        class soldier_A_F: Soldier_F {
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m80a1epr"),
                LIST_4("rhsusf_50Rnd_762x51_m62_tracer")
            };
        };

        //Asst. Gunner (HMG/GMG)
        class support_AMG_F: Soldier_F {
            backpack = "RHS_M2_MiniTripod_Bag";
        };

        //Asst. Missile Specialist (AA)
        class soldier_AAA_F: Soldier_F {
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                LIST_2("rhs_fim92_mag")
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
            secondaryWeaponMagazine = "rhs_m72a7_mag";
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                LIST_2("rhs_m72a7_mag")
            };
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            headgear = "H_Bandanna_sgg";
            primaryWeapon = "rhs_weap_m249_pip";
            primaryWeaponMagazine = "rhs_200rnd_556x45_T_SAW";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "B_FieldPack_oli";
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
            backpack = "B_FieldPack_oli";
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
                LIST_2("rhsusf_mag_7x45acp_MHP"),
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
            headgear = "H_Bandanna_blu";
	    handgunWeapon = "ACE_VMH3";
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                "ACE_Clacker",
                "ACE_M26_Clacker",
                "SatchelCharge_Remote_Mag",
                LIST_5("DemoCharge_Remote_Mag")
            };
        };

        //Grenadier
        class Soldier_GL_F: Soldier_F {
			headgear = "H_Booniehat_oli";
            primaryWeapon = "rhs_weap_m16a4_carryhandle_M203";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhs_mag_m67"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag"),
                LIST_8("1Rnd_HE_Grenade_shell"),
                LIST_3("1Rnd_SmokeRed_Grenade_shell")
            };
        };

        //Heavy Gunner (MMG)
        class HeavyGunner_F: Soldier_F {
            headgear = "H_Bandanna_gry";
            primaryWeapon = "rhs_weap_m240G";
            primaryWeaponMagazine = "rhsusf_50Rnd_762x51_m62_tracer";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m80a1epr"),
                LIST_3("rhsusf_50Rnd_762x51_m62_tracer")
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
			headgear = "H_Booniehat_oli";
            primaryWeapon = "srifle_DMR_06_olive_F";
            primaryWeaponMagazine = "20Rnd_762x51_Mag";
            primaryWeaponOptics ="optic_KHS_old";
            primaryWeaponUnderbarrel ="";
            binoculars = "Binocular";
            addItemsToVest[] = {
                LIST_2("SmokeShell"),
				LIST_2("HandGrenade"),
                LIST_2("rhsusf_mag_7x45acp_MHP"),
                LIST_8("20Rnd_762x51_Mag"),
                LIST_4("ACE_20Rnd_762x51_Mag_Tracer")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fim92";
            secondaryWeaponMagazine = "rhs_fim92_mag";
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
            secondaryWeaponMagazine = "rhs_m72a7_mag";
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                "rhs_m72a7_mag"
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            backpack = "B_FieldPack_oli";
            addItemsToBackpack[] = {
                "ToolKit",
                "ACE_wirecutter"
            };
        };

        //Rifleman (AT)
        class soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
            secondaryWeaponMagazine = "rhs_m72a7_mag";
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
            primaryWeapon = "rhs_weap_m16a4_carryhandle_M203";
			backpack = "B_FieldPack_oli";
			binoculars = "Binocular";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhs_mag_m67"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag"),
                LIST_2("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
                LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
                LIST_2("1Rnd_HE_Grenade_shell"),
                "SmokeShellBlue",
                "SmokeShellGreen",
                "SmokeShellOrange",
                "SmokeShellPurple",
                "SmokeShellRed",
                "SmokeShellYellow"
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            primaryWeapon = "rhs_weap_m16a4_carryhandle_M203";
			backpack = "B_FieldPack_oli";
			binoculars = "Binocular";
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_2("rhs_mag_m67"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag"),
                LIST_2("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
                LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
                LIST_2("1Rnd_HE_Grenade_shell")
            };
        };

		class officer_F: Soldier_F {
            headgear = "rhssaf_beret_red";
			backpack = "B_FieldPack_oli";
			binoculars = "Binocular";
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

		class Helipilot_F: Soldier_F {
			headgear = "rhssaf_helmet_hgu56p";
			backpack = "tf_rt1523g_black";
			binoculars = "Binocular";
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

		class Soldier_UAV_F: Soldier_F {
			backpack = "tf_rt1523g_black";
			binoculars = "Binocular";
        };

    };

    class Rank {
        class LIEUTENANT {
            headgear = "rhssaf_beret_red";
			backpack = "B_FieldPack_oli";
			binoculars = "Binocular";
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
    };
};

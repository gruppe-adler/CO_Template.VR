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
  #define SUPPRESSORITEM "muzzle_snds_B_khk_F"
#endif

class UsmcVietnam {
    class AllUnits {
        uniform = "rhsgref_uniform_olive";
        vest = "rhsgref_alice_webbing";
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
        handgunWeapon = "";
        handgunWeaponMagazine = "";
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

                GRAD_FACTIONS_MEDICITEMS_INF_LIST
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_7("rhs_mag_30Rnd_556x45_Mk318_Stanag")
            };
        };

        //Asst. Autorifleman
        class soldier_AAR_F: Soldier_F {
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhs_200rnd_556x45_T_SAW"
            };
        };

        //Asst. Gunner (MMG) / Ammo Bearer
        class soldier_A_F: Soldier_F {
            backpack = "rhsgref_hidf_alicepack";
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
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                LIST_1("rhs_fim92_mag")
            };
        };

        //Asst. Missile Specialist (AT)
        class soldier_AAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
            secondaryWeaponMagazine = "rhs_m72a7_mag";
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                LIST_2("rhs_m72a7_mag")
            };
        };

        //Autorifleman
        class soldier_AR_F: Soldier_F {
            headgear = "H_Bandanna_sgg";
            primaryWeapon = "rhs_weap_m249_pip";
            primaryWeaponMagazine = "rhs_200rnd_556x45_T_SAW";
            primaryWeaponPointer = "";
            handgunWeapon = "rhsusf_weap_m1911a1";
            handgunWeaponMagazine = "rhsusf_mag_7x45acp_MHP";
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhsusf_100Rnd_556x45_soft_pouch"
            };
            addItemsToVest[] = {
                LIST_1("rhsusf_mag_7x45acp_MHP")
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
            backpack = "rhsgref_hidf_alicepack";
            addItemsToUniform[] = {
                "ACE_MapTools",
                "ACE_DefusalKit",
                LIST_2("ACE_CableTie"),
                "ACE_Flashlight_MX991"
            };
            addItemsToVest[] = {
                LIST_2("SmokeShellPurple"),
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
            handgunWeaponMagazine = "";
            backpack = "rhsgref_hidf_alicepack";
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
            backpack = "rhsgref_hidf_alicepack";
            primaryWeapon = "rhs_weap_m3a1";
            primaryWeaponMagazine = "rhsgref_30rnd_1143x23_M1T_2mag_SMG";
            primaryWeaponMuzzle = "";
            primaryWeaponPointer = "";
            addItemsToVest[] = {
                LIST_2("rhs_mag_m67"),
                LIST_5("rhsgref_30rnd_1143x23_M1T_2mag_SMG")
            };
            addItemsToBackpack[] = {
                "rhs_weap_m79",
                LIST_8("rhs_mag_M433_HEDP"),
                LIST_3("1Rnd_SmokeRed_Grenade_shell"),
                LIST_2("1Rnd_Smoke_Grenade_shell"),
                LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
                LIST_2("1Rnd_SmokeBlue_Grenade_shell"),
                LIST_2("UGL_FlareWhite_F"),
                LIST_2("UGL_FlareGreen_F"),
                LIST_2("UGL_FlareRed_F"),
                LIST_2("UGL_FlareYellow_F"),
                LIST_3("rhsgref_30rnd_1143x23_M1T_2mag_SMG")
            };
            class rhs_weap_m79 {
                magazine = "rhs_mag_M433_HEDP";
            };
        };

        //Heavy Gunner (MMG)
        class HeavyGunner_F: Soldier_F {
            headgear = "H_Bandanna_gry";
            primaryWeapon = "rhs_weap_m240G";
            primaryWeaponMagazine = "rhsusf_50Rnd_762x51_m62_tracer";
            primaryWeaponMuzzle = "";
            primaryWeaponPointer = "";
            handgunWeapon = "rhsusf_weap_m1911a1";
            handgunWeaponMagazine = "rhsusf_mag_7x45acp_MHP";
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                LIST_2("rhsusf_100Rnd_762x51_m80a1epr"),
                LIST_3("rhsusf_50Rnd_762x51_m62_tracer")
            };
            addItemsToVest[] = {
                LIST_1("rhsusf_mag_7x45acp_MHP")
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
            primaryWeaponMuzzle = "";
            primaryWeaponPointer = "";
            handgunWeapon = "rhsusf_weap_m1911a1";
            handgunWeaponMagazine = "rhsusf_mag_7x45acp_MHP";
            binoculars = "Binocular";
            addItemsToVest[] = {
                LIST_2("rhsusf_mag_7x45acp_MHP")
            };
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                LIST_8("20Rnd_762x51_Mag"),
                LIST_4("ACE_20Rnd_762x51_Mag_Tracer")
            };
        };

        //Missile Specialist (AA)
        class soldier_AA_F: Soldier_F {
            secondaryWeapon = "rhs_weap_fim92";
            secondaryWeaponMagazine = "rhs_fim92_mag";
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                "rhs_fim92_mag"
            };
        };

        //Missile Specialist (AT)
        class soldier_AT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
            secondaryWeaponMagazine = "rhs_m72a7_mag";
            backpack = "rhsgref_hidf_alicepack";
            addItemsToBackpack[] = {
                "rhs_m72a7_mag"
            };
        };

        //Repair Specialist
        class soldier_repair_F: Soldier_F {
            backpack = "rhsgref_hidf_alicepack";
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
            handgunWeapon = "rhsusf_weap_m1911a1";
            handgunWeaponMagazine = "rhsusf_mag_7x45acp_MHP";
            backpack = "rhsgref_hidf_alicepack";
            binoculars = "Binocular";
            addItemsToVest[] = {
                LIST_2("rhs_mag_m67"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag"),
                LIST_1("rhsusf_mag_7x45acp_MHP")

            };
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed"),
                LIST_2("SmokeShellYellow"),
                LIST_2("SmokeShell"),
                LIST_2("hgun_Pistol_Signal_F"),
                LIST_1("6Rnd_GreenSignal_F"),
                LIST_1("6Rnd_RedSignal_F")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            backpack = "rhsgref_hidf_alicepack";
            binoculars = "Binocular";
            addItemsToVest[] = {
                LIST_2("rhs_mag_m67"),
                LIST_8("rhs_mag_30Rnd_556x45_Mk318_Stanag")
            };
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

        class officer_F: Soldier_F {
            headgear = "rhssaf_beret_red";
            backpack = "rhsgref_hidf_alicepack";
            binoculars = "Binocular";
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed"),
                LIST_2("SmokeShellYellow"),
                LIST_2("SmokeShell"),
                LIST_2("hgun_Pistol_Signal_F"),
                LIST_1("6Rnd_GreenSignal_F"),
                LIST_1("6Rnd_RedSignal_F")
            };
        };

        class Helipilot_F: Soldier_F {
            headgear = "rhsusf_hgu56p_green";
            backpack = "tfar_rt1523g_black";
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
            backpack = "tfar_rt1523g_black";
            binoculars = "Binocular";
        };
    };

    class Rank {
        class LIEUTENANT {
            headgear = "rhssaf_beret_red";
            backpack = "rhsgref_hidf_alicepack";
            binoculars = "Binocular";
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed"),
                LIST_2("SmokeShellYellow"),
                LIST_2("SmokeShell"),
                LIST_2("hgun_Pistol_Signal_F"),
                LIST_1("6Rnd_GreenSignal_F"),
                LIST_1("6Rnd_RedSignal_F")
            };
        };
    };
};

#ifdef NIGHTVISION
  #define NVITEM "NVGoggles"
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
  #define SUPPRESSORITEM "rhs_acc_tgpa"
#else
  #define SUPPRESSORITEM "rhs_acc_dtk"
#endif

class RuMedit: RUFlora {
	class AllUnits: AllUnits {
		uniform = "rhs_uniform_flora_patchless_alt";
		vest = "rhs_6b23_ML_6sh92";
		backpack = "";
		headgear = "rhs_6b27m_ml";
		primaryWeapon = "rhs_weap_ak74m_fullplum";
        primaryWeaponMagazine = "rhs_30Rnd_545x39_AK";
        primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponPointer = LLITEM;
		goggles = "";
		nvgoggles = NVITEM;
    };
    class Type: Type {
        class Soldier_F: Soldier_F {};
        class soldier_AAR_F: soldier_AAR_F {};
        class support_AMG_F: support_AMG_F {};
        class soldier_AAA_F: soldier_AAA_F {};
        class soldier_AAT_F: soldier_AAT_F {};

        class soldier_AR_F: soldier_AR_F {
			headgear = "rhs_6b27m_ml_ess";
			addItemsToBackpack[] = {
                LIST_2("rhs_100Rnd_762x54mmR_green"),
                "rhs_100Rnd_762x54mmR_7N26"
			};
        };

        class medic_F: medic_F {
			vest = "rhs_6b23_ML_medic";
        };

        class soldier_exp_F: soldier_exp_F {
			primaryWeapon = "rhs_weap_ak74m_2mag_camo";
			headgear = "rhs_6b27m_ml_ess";
        };

        class Soldier_GL_F: Soldier_GL_F {
			primaryWeapon = "rhs_weap_ak74m_fullplum_gp25";
			vest = "rhs_6b23_ML_6sh92_vog";
        };

        class HeavyGunner_F: HeavyGunner_F {
			headgear = "rhs_6b27m_ml_ess";
        };

        class soldier_M_F: soldier_M_F {
			vest = "rhs_6b23_ML_6sh92_radio";
			goggles = "rhs_balaclava";
			primaryWeapon = "rhs_weap_svdp_wd";
        };

        class soldier_AA_F: soldier_AA_F {
			headgear = "rhs_6b27m_ml_ess_bala";
        };

        class soldier_AT_F: soldier_AT_F {
			headgear = "rhs_6b27m_ml_ess_bala";
        };

        class soldier_repair_F: soldier_repair_F {
			primaryWeapon = "rhs_weap_ak74m_2mag_camo";
			headgear = "rhs_6b27m_ml_ess";
        };

        class soldier_LAT_F: soldier_LAT_F {
			headgear = "rhs_6b27m_ml_ess";
			secondaryWeapon = "rhs_weap_rpg26";
        };

        class Sniper_F: Sniper_F {
            headgear = "rhs_fieldcap_ml";
            vest = "rhs_6b23_ML_6sh92_radio";
        };

        class Soldier_SL_F: Soldier_SL_F {
			vest = "rhs_6b23_ML_6sh92_vog_headset";
			headgear = "rhs_6b27m_ml_ess_bala";
			primaryWeapon = "rhs_weap_ak74m_fullplum_gp25";
        };

        class Spotter_F: Spotter_F {
            primaryWeapon = "rhs_weap_ak74m_camo";
            goggles = "rhs_balaclava";
            vest = "rhs_6b23_ML_6sh92_radio";
            headgear = "rhs_fieldcap_ml";
        };

        class Soldier_TL_F: Soldier_TL_F {
			headgear = "rhs_6b27m_ml_bala";
			vest = "rhs_6b23_ML_6sh92_vog_headset";
			primaryWeapon = "rhs_weap_ak74m_fullplum_gp25";
        };
    };

    class Rank {
        class LIEUTENANT {
            vest = "rhs_6b23_ML_crewofficer";
			headgear = "rhs_beret_vdv3";
        };
    };
};

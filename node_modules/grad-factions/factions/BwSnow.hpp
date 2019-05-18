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
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhsusf_acc_nt4_tan"
#else
  #define SUPPRESSORITEM ""
#endif

class BWSnow: BWFleck {
	class AllUnits: AllUnits {
		uniform = "SMM_Uniform_BW_ST";
		vest = "SMM_Vest_BW_ST";
		headgear = "SMM_Helmet_A_BW_ST";
	};
    class Type: Type {
        class Soldier_F: Soldier_F {

        };

        class soldier_AAR_F: soldier_AAR_F {
            backpack = "SMM_Kitbag_BW_ST";
        };

        class soldier_A_F: soldier_A_F {
            backpack = "SMM_Kitbag_BW_ST";
        };

        class support_AMG_F: support_AMG_F {

        };

        class soldier_AAA_F: soldier_AAA_F {
            backpack = "SMM_Carryall_BW_ST";
        };

        class soldier_AAT_F: soldier_AAT_F {
            backpack = "SMM_Carryall_BW_ST";
        };

        class soldier_AR_F: soldier_AR_F {
            backpack = "SMM_Kitbag_BW_ST";
        };

        class medic_F: medic_F {
            backpack = "SMM_Kitbag_BW_ST";
        };

        class soldier_exp_F: soldier_exp_F {
            backpack = "SMM_Kitbag_BW_ST";
        };

        class Soldier_GL_F: Soldier_GL_F {

        };

        class HeavyGunner_F: HeavyGunner_F {
            backpack = "SMM_Kitbag_BW_ST";
        };

        class support_MG_F: support_MG_F {

        };

        class soldier_M_F: soldier_M_F {

        };

        class soldier_AA_F: soldier_AA_F {
            backpack = "SMM_Carryall_BW_ST";
        };

        class soldier_AT_F: soldier_AT_F {
            backpack = "SMM_Carryall_BW_ST";
        };

        class soldier_repair_F: soldier_repair_F {
            backpack = "SMM_Kitbag_BW_ST";
        };

        class soldier_LAT_F: soldier_LAT_F {

        };

        class Soldier_SL_F: Soldier_SL_F {

        };

        class Soldier_TL_F: Soldier_TL_F {

        };
    };

    class Rank: Rank {
        class LIEUTENANT: LIEUTENANT {
            headgear = "SMM_MilCap_BW_ST";
        };
    };
};

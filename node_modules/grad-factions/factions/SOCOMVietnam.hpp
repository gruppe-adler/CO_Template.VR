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

class SOCOMVietnam: UsmcVietnam {
    class AllUnits: AllUnits {
        uniform = "rhsgref_uniform_tigerstripe";
        headgear = "H_Booniehat_oli";
    };
	class Type: Type {
        class Soldier_F: Soldier_F {};
        class soldier_AAR_F: soldier_AAR_F {};
        class soldier_A_F: soldier_A_F {};
        class support_AMG_F: support_AMG_F {};
        class soldier_AAA_F: soldier_AAA_F {};
        class soldier_AAT_F: soldier_AAT_F {};
        class soldier_AR_F: soldier_AR_F {};
        class medic_F: medic_F {};
        class soldier_exp_F: soldier_exp_F {};
        class Soldier_GL_F: Soldier_GL_F {};
        class HeavyGunner_F: HeavyGunner_F {};
        class support_MG_F: support_MG_F {};
        class soldier_M_F: soldier_M_F {};
        class soldier_AA_F: soldier_AA_F {};
        class soldier_AT_F: soldier_AT_F {};
        class soldier_repair_F: soldier_repair_F {};
        class soldier_LAT_F: soldier_LAT_F {};
        class Soldier_SL_F: Soldier_SL_F {};
        class Soldier_TL_F: Soldier_TL_F {};
		class officer_F: officer_F {};
		class Helipilot_F: Helipilot_F {};
		class Soldier_UAV_F: Soldier_UAV_F {};
    };
    class Rank: Rank {
        class LIEUTENANT: LIEUTENANT {};
    };
};

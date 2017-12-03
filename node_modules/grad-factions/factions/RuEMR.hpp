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
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhs_acc_tgpa"
#else
  #define SUPPRESSORITEM "rhs_acc_dtk"
#endif

class RUEMR: RUFlora {
    class AllUnits: AllUnits {
        uniform = "rhs_uniform_msv_emr";
        vest = "rhs_6b13_EMR_6sh92";
        headgear = "rhs_6b27m_digi";
    };
    class Type: Type {
        class Soldier_F: Soldier_F {};
        class soldier_AAR_F: soldier_AAR_F {};
        class soldier_A_F: soldier_A_F {};
        class support_AMG_F: support_AMG_F {};
        class soldier_AAA_F: soldier_AAA_F {};
        class soldier_AAT_F: soldier_AAT_F {};
        class soldier_AR_F: soldier_AR_F {};
        class medic_F: medic_F {
            vest = "rhs_6b13_EMR_6sh92_headset_mapcase";
        };
        class soldier_exp_F: soldier_exp_F {};
        class Soldier_GL_F: Soldier_GL_F {
            vest = "rhs_6b13_EMR_6sh92_vog";
        };
        class HeavyGunner_F: HeavyGunner_F {};
        class support_MG_F: support_MG_F {};
        class soldier_M_F: soldier_M_F {};
        class soldier_AA_F: soldier_AA_F {};
        class soldier_AT_F: soldier_AT_F {};
        class soldier_repair_F: soldier_repair_F {
            headgear = "rhs_6b27m_digi_ess";
        };
        class soldier_LAT_F: soldier_LAT_F {
            heargear = "rhs_6b27m_digi_bala";
        };
        class Sniper_F: Sniper_F {
            headgear = "rhs_Booniehat_digi";
            vest = "rhs_6b23_digi_sniper";
        };
        class Soldier_SL_F: Soldier_SL_F {
            headgear = "rhs_6b27m_digi_ess";
            vest = "rhs_6b13_EMR_6sh92_radio";
        };
        class Spotter_F: Spotter_F {
            headgear = "rhs_Booniehat_digi";
        };
        class Soldier_TL_F: Soldier_TL_F {
            headgear = "rhs_6b27m_digi_ess";
            vest = "rhs_6b13_EMR_6sh92_radio";
        };
    };
    class Rank: Rank {
        class LIEUTENANT: LIEUTENANT {
            headgear = "rhs_fieldcap_digi";
        };
    };
};

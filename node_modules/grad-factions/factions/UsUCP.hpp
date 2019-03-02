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

class USUCP: USOCP {
    class AllUnits: AllUnits {
        uniform = "rhs_uniform_cu_ucp";
        vest = "rhsusf_iotv_ocp_Rifleman";
        backpack = "";
        headgear = "rhsusf_ach_helmet_ucp";
        primaryWeapon = "rhs_weap_m4a1_blockII_d";
        primaryWeaponOptics = "rhsusf_acc_g33_T1";
    };
    class Type: Type {
        class Soldier_F: Soldier_F {};
        class soldier_AAR_F: soldier_AAR_F {
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class soldier_A_F: soldier_A_F {
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class support_AMG_F: support_AMG_F {
        };
        class soldier_AAA_F: soldier_AAA_F {
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class soldier_AAT_F: soldier_AAT_F {
        };
        class soldier_AR_F: soldier_AR_F {
            vest = "rhsusf_iotv_ucp_SAW";
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class medic_F: medic_F {
            vest = "rhsusf_iotv_ucp_Medic";
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class soldier_exp_F: soldier_exp_F {
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class Soldier_GL_F: Soldier_GL_F {
            primaryWeapon = "rhs_weap_m4a1_blockII_M203_d";
        };
        class HeavyGunner_F: HeavyGunner_F {
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class support_MG_F: support_MG_F {
        };
        class soldier_M_F: soldier_M_F {
            primaryWeapon = "rhs_weap_sr25_ec_d";
        };
        class soldier_AA_F: soldier_AA_F {
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class soldier_AT_F: soldier_AT_F {
        };
        class soldier_repair_F: soldier_repair_F {
            backpack = "rhsusf_assault_eagleaiii_ucp";
        };
        class soldier_LAT_F: soldier_LAT_F {};
        class Soldier_SL_F: Soldier_SL_F {
            backpack = "tfar_rt1523g_bwmod";
            headgear = "rhsusf_ach_helmet_headset_ucp";
            vest = "rhsusf_iotv_ucp_Squadleader";
        };
        class Soldier_TL_F: Soldier_TL_F {
            primaryWeapon = "rhs_weap_m4a1_blockII_M203_d";
            headgear = "rhsusf_ach_helmet_headset_ucp";
            vest = "rhsusf_iotv_ucp_Teamleader";
        };
    };
    class Rank: Rank {
        class LIEUTENANT: LIEUTENANT {
            headgear = "rhsusf_patrolcap_ucp";
        };
    };
};

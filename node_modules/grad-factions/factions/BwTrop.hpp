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
#else
  #define LLITEM
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "rhsusf_acc_nt4_tan"
#else
  #define SUPPRESSORITEM ""
#endif

class BWTrop: BWFleck {
	class AllUnits: AllUnits {
		uniform = "ARC_GER_Tropentarn_Uniform";
		vest = "ARC_GER_Tropentarn_Plate_Carrier";
		headgear = "ARC_GER_Tropentarn_Mich";
	};
    class Type: Type {
        class Soldier_F: Soldier_F {

        };

        class soldier_AAR_F: soldier_AAR_F {
            backpack = "ARC_GER_Kitbag_compact_Tropentarn";
        };

        class support_AMG_F: support_AMG_F {
            backpack = "ARC_GER_Kitbag_compact_Tropentarn";
        };

        class soldier_AAA_F: soldier_AAA_F {
            backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
        };

        class soldier_AAT_F: soldier_AAT_F {
            backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
        };

        class soldier_AR_F: soldier_AR_F {
            backpack = "ARC_GER_Kitbag_compact_Tropentarn";
        };

        class medic_F: medic_F {
            backpack = "ARC_GER_Backpack_Tropentarn";
        };

        class soldier_exp_F: soldier_exp_F {
            backpack = "ARC_GER_Kitbag_compact_Tropentarn";
        };

        class Soldier_GL_F: Soldier_GL_F {

        };

        class HeavyGunner_F: HeavyGunner_F {
            backpack = "ARC_GER_Kitbag_compact_Tropentarn";
        };

        class soldier_M_F: soldier_M_F {

        };

        class soldier_AA_F: soldier_AA_F {
            backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
        };

        class soldier_AT_F: soldier_AT_F {
            backpack = "ARC_GER_Backpack_Carryall_Tropentarn";
        };

        class soldier_repair_F: soldier_repair_F {
            backpack = "ARC_GER_Kitbag_compact_Tropentarn";
        };

        class soldier_LAT_F: soldier_LAT_F {

        };

        class Soldier_SL_F: Soldier_SL_F {
            backpack = "tf_rt1523g_big_bwmod_tropen";
        };

        class Soldier_TL_F: Soldier_TL_F {

        };
    };

    class Rank: Rank {
        class LIEUTENANT: LIEUTENANT {
            headgear = "ARC_GER_Tropentarn_Milcap";
        };
    };
};

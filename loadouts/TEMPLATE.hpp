#ifdef NIGHTVISION
  #define NVITEM "CLASSNAME"
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM "CLASSNAME"
#else
  #define LLITEM ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "CLASSNAME"
#else
  #define LLITEM
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM "CLASSNAME"
#else
  #define SUPPRESSORITEM ""
#endif


class LOADOUTNAME {
  class AllPlayable {
    uniform = "";
    vest = "";
    backpack = "";
    headgear = "";
    primaryWeapon = "";
    primaryWeaponAttachments[] = {"" ,LLITEM, SUPPRESSORITEM};
    handgunWeapon = "";
    binoculars = "";
    map = "";
    compass = "";
    watch = "";
    gps = "";
    radio = "";
    nvgoggles = NVITEM;
    items[] = {};
    magazines[] = {};

    class Type {
      //Rifleman
      class B_Soldier_F {
        addItemsToUniform[] = {

        };
        addItemsToVest[] = {

        };
      };

      //Asst. Autorifleman
      class B_soldier_AAR_F: B_Soldier_F {

      };

      //Asst. Gunner (HMG/GMG)
      class B_support_AMG_F: B_Soldier_F {

      };

      //Asst. Missile Specialist (AA)
      class B_soldier_AAA_F: B_Soldier_F {

      };

      //Asst. Missile Specialist (AT)
      class B_soldier_AAT_F: B_Soldier_F {

      };

      //Autorifleman
      class B_soldier_AR_F: B_Soldier_F {

      };

      //Combat Life Saver
      class B_medic_F: B_Soldier_F {

      };

      //Explosive Specialist
      class B_soldier_exp_F: B_Soldier_F {

      };

      //Grenadier
      class B_Soldier_GL_F: B_Soldier_F {

      };

      //Heavy Gunner
      class B_HeavyGunner_F: B_Soldier_F {

      };

      //Marksman
      class B_soldier_M_F: B_Soldier_F {

      };

      //Missile Specialist (AA)
      class B_soldier_AA_F: B_Soldier_F {

      };

      //Missile Specialist (AT)
      class B_soldier_AT_F: B_Soldier_F {

      };

      //Repair Specialist
      class B_soldier_repair_F: B_Soldier_F {

      };

      //Rifleman (AT)
      class B_soldier_LAT_F: B_Soldier_F {

      };

      //Squad Leader
      class B_Soldier_SL_F: B_Soldier_F {

      };

      //Team Leader
      class B_Soldier_TL_F: B_Soldier_F {

      };
    };
  };
};


class ABGELEITETESLOADOUT: LOADOUTNAME {
  class AllPlayable: AllPlayable {

    class Type: Type {
      class B_Soldier_F: B_Soldier_F {};

      class B_soldier_AAR_F: B_soldier_AAR_F {

      };

      class B_support_AMG_F: B_support_AMG_F {

      };

      class B_soldier_AAA_F: B_soldier_AAA_F {

      };

      class B_soldier_AAT_F: B_soldier_AAT_F {

      };

      class B_soldier_AR_F: B_soldier_AR_F {

      };

      class B_medic_F: B_medic_F {

      };

      class B_soldier_exp_F: B_soldier_exp_F {

      };

      class B_Soldier_GL_F: B_Soldier_GL_F {

      };

      class B_HeavyGunner_F: B_HeavyGunner_F {

      };

      class B_soldier_M_F: B_soldier_M_F {

      };

      class B_soldier_AA_F: B_soldier_AA_F {

      };

      class B_soldier_AT_F: B_soldier_AT_F {

      };

      class B_soldier_repair_F: B_soldier_repair_F {

      };

      class B_soldier_LAT_F: B_soldier_LAT_F {

      };

      class B_Soldier_SL_F: B_Soldier_SL_F {

      };

      class B_Soldier_TL_F: B_Soldier_TL_F {

      };
    };
  };
};

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
      class O_Soldier_F {
        addItemsToUniform[] = {

        };
        addItemsToVest[] = {

        };
      };

      //Asst. Autorifleman
      class O_soldier_AAR_F: O_Soldier_F {

      };

      //Asst. Gunner (HMG/GMG)
      class O_support_AMG_F: O_Soldier_F {

      };

      //Asst. Missile Specialist (AA)
      class O_soldier_AAA_F: O_Soldier_F {

      };

      //Asst. Missile Specialist (AT)
      class O_soldier_AAT_F: O_Soldier_F {

      };

      //Autorifleman
      class O_soldier_AR_F: O_Soldier_F {

      };

      //Combat Life Saver
      class O_medic_F: O_Soldier_F {

      };

      //Explosive Specialist
      class O_soldier_exp_F: O_Soldier_F {

      };

      //Grenadier
      class O_Soldier_GL_F: O_Soldier_F {

      };

      //Heavy Gunner
      class O_HeavyGunner_F: O_Soldier_F {

      };

      //Marksman
      class O_soldier_M_F: O_Soldier_F {

      };

      //Missile Specialist (AA)
      class O_soldier_AA_F: O_Soldier_F {

      };

      //Missile Specialist (AT)
      class O_soldier_AT_F: O_Soldier_F {

      };

      //Repair Specialist
      class O_soldier_repair_F: O_Soldier_F {

      };

      //Rifleman (AT)
      class O_soldier_LAT_F: O_Soldier_F {

      };

      //Squad Leader
      class O_Soldier_SL_F: O_Soldier_F {

      };

      //Team Leader
      class O_Soldier_TL_F: O_Soldier_F {

      };
    };
  };

  class Rank {
    class LIEUTENANT {

    };
  };
};

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
      class I_Soldier_F {
        addItemsToUniform[] = {

        };
        addItemsToVest[] = {

        };
      };

      //Asst. Autorifleman
      class I_soldier_AAR_F: I_Soldier_F {

      };

      //Asst. Gunner (HMG/GMG)
      class I_support_AMG_F: I_Soldier_F {

      };

      //Asst. Missile Specialist (AA)
      class I_soldier_AAA_F: I_Soldier_F {

      };

      //Asst. Missile Specialist (AT)
      class I_soldier_AAT_F: I_Soldier_F {

      };

      //Autorifleman
      class I_soldier_AR_F: I_Soldier_F {

      };

      //Combat Life Saver
      class I_medic_F: I_Soldier_F {

      };

      //Explosive Specialist
      class I_soldier_exp_F: I_Soldier_F {

      };

      //Grenadier
      class I_Soldier_GL_F: I_Soldier_F {

      };

      //Heavy Gunner
      class I_HeavyGunner_F: I_Soldier_F {

      };

      //Marksman
      class I_soldier_M_F: I_Soldier_F {

      };

      //Missile Specialist (AA)
      class I_soldier_AA_F: I_Soldier_F {

      };

      //Missile Specialist (AT)
      class I_soldier_AT_F: I_Soldier_F {

      };

      //Repair Specialist
      class I_soldier_repair_F: I_Soldier_F {

      };

      //Rifleman (AT)
      class I_soldier_LAT_F: I_Soldier_F {

      };

      //Squad Leader
      class I_Soldier_SL_F: I_Soldier_F {

      };

      //Team Leader
      class I_Soldier_TL_F: I_Soldier_F {

      };
    };
  };

  class Rank {
    class LIEUTENANT {
  
    };
  };
};

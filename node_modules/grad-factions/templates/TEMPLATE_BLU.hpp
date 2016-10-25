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
    primaryWeaponMuzzle = SUPPRESSORITEM;
    primaryWeaponPointer = LLITEM;
    handgunWeapon = "";
    binoculars = "";
    map = "";
    compass = "";
    watch = "";
    gps = "";
    radio = "";
    nvgoggles = NVITEM;

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

  class Rank {
    class LIEUTENANT {

    };
  };
};

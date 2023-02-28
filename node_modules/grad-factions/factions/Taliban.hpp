#ifdef NIGHTVISION
  #define NVITEM "rhs_1PN138"
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
  #define SUPPRESSORITEM "rhs_acc_pbs1"
#else
  #define SUPPRESSORITEM ""
#endif

class Taliban {
	class AllUnits {
		uniform[] = {   
			"UK3CB_TKM_I_U_01",
			"UK3CB_TKM_I_U_01_B",
			"UK3CB_TKM_I_U_01_C",
			"UK3CB_TKM_O_U_01",
			"UK3CB_TKM_O_U_01_D",
			"UK3CB_TKM_B_U_01_B",
			"UK3CB_TKM_B_U_01_C",
			"UK3CB_ADE_O_U_01_C",
			"UK3CB_ADE_O_U_01_D"
		};
		vest[] = {		
			"UK3CB_TKA_I_V_vydra_3m_Tan",
			"UK3CB_TKA_I_V_vydra_3m_TKA_Brush"
		};
		backpack = "";
		headgear[] = {	
			"UK3CB_H_Turban_Facewrap_01_Tan",
			"UK3CB_H_Turban_Facewrap_02_Tan",
			"UK3CB_H_Turban_Facewrap_03_Tan",
			"UK3CB_H_Turban_Facewrap_01_Blk",
			"UK3CB_H_Turban_Facewrap_02_BLk",
			"UK3CB_H_Turban_Facewrap_03_Blk",
			"UK3CB_H_Turban_Facewrap_02_Red",
			"UK3CB_H_Turban_Facewrap_03_Whi",
			"UK3CB_H_Shemag_tan",
			"UK3CB_H_Shemag_blk",
			"UK3CB_H_Shemag_grey",
			"UK3CB_H_Shemag_red",
			"UK3CB_H_Shemag_white"
		};
		primaryWeapon = "rhs_weap_m70b1";
		primaryWeaponMagazine = "rhs_30Rnd_762x39mm";
		primaryWeaponOptics = "";
		primaryWeaponPointer = LLITEM;
		primaryWeaponMuzzle = SUPPRESSORITEM;
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
		binoculars[] = {
			"",
			"",
			"Binocular"
		};
		map[] = {		
			"",
			"ItemMap"
		};
		compass[] = {	
			"",
			"ItemCompass"
		};
		watch[] = {		
			"",
			"ItemWatch"
		};
		gps = "";
		radio = "tfar_fadak";
		nvgoggles = NVITEM;
	};
	class Type {
		//Rifleman
		class Soldier_F {
			addItemsToUniform[] = {
				"ACE_Flashlight_KSF1",
				LIST_2("ACE_Cabletie"),
				
				GRAD_FACTIONS_MEDICITEMS_INF_LIST
			};
			addItemsToVest[] = {
				LIST_4("rhs_30Rnd_762x39mm"),
				LIST_3("rhs_mag_rdg2_white"),
				"rhs_mag_rgd5"
			};
		};

		//Asst. Autorifleman
		class soldier_AAR_F: Soldier_F {
			vest = "";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"UK3CB_CHC_C_B_HIKER",
				"UK3CB_CW_SOV_O_LATE_B_Sidor_RIF",
				"UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF",
				"rhs_sidor"
			};
			addItemsToBackpack[] = {
				LIST_3("rhs_100Rnd_762x54mmR_green")
			};
		};

		//Asst. Gunner (HMG/GMG)
		class support_AMG_F: Soldier_F {

		};

		//Asst. Missile Specialist (AA)
		class soldier_AAA_F: Soldier_F {
			vest = "";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"B_Carryall_khk",
				"B_Carryall_cbr",			
				"UK3CB_CHC_C_B_HIKER",
				"rhs_rpg_empty"
			};
			addItemsToBackpack[] = {
				LIST_2("rhs_mag_9k38_rocket")
			};
		};

		//Asst. Missile Specialist (AT)
		class soldier_AAT_F: Soldier_F {
			vest = "";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"B_Carryall_khk",
				"B_Carryall_cbr",
				"UK3CB_CHC_C_B_HIKER",
				"rhs_rpg_empty"
			};
			addItemsToBackpack[] = {
				LIST_3("rhs_rpg7_PG7VR_mag")
			};
		};

		//Autorifleman
		class soldier_AR_F: Soldier_F {
			uniform[] = {	
				"UK3CB_TKM_B_U_05",
				"UK3CB_TKM_I_U_04",
				"UK3CB_TKM_I_U_04_B",
				"UK3CB_TKM_I_U_04_C",
				"UK3CB_TKM_I_U_05",
				"UK3CB_TKM_I_U_05_B",
				"UK3CB_TKM_I_U_05_C"
			};
			vest[] = {		
				"UK3CB_TKA_I_V_6Sh92_Khk",
				"UK3CB_TKA_I_V_6Sh92_Grey",
				"UK3CB_TKA_I_V_6Sh92_Oli",
				"UK3CB_TKP_I_V_6Sh92_Blk",
				"UK3CB_TKP_I_V_6Sh92_Khk",
				"UK3CB_TKP_I_V_6Sh92_Des",
				"UK3CB_TKP_I_V_6Sh92_Tan"
			};
			primaryWeapon = "rhs_weap_pkm";
			primaryWeaponMagazine = "rhs_100Rnd_762x54mmR_green";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"UK3CB_CHC_C_B_HIKER",
				"UK3CB_CW_SOV_O_LATE_B_Sidor_RIF",
				"UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF",
				"rhs_sidor",
				"B_Messenger_Black_F"
			};
			addItemsToBackpack[] = {
				LIST_3("rhs_100Rnd_762x54mmR_green")
			};
			addItemsToVest[] = {
			  "rhs_100Rnd_762x54mmR_green",
			  LIST_3("rhs_mag_rdg2_white"),
			  "rhs_mag_rgd5"
			};
		};
		
		//Combat Life Saver
		//Kein Loadout Ã¼ber Medicloadout, die Tasche kann zu klein sein!
		//Das ist gewollt.
		class medic_F: Soldier_F {
			uniform[] = {	
				"UK3CB_TKM_B_U_03",
				"UK3CB_TKM_B_U_03_B",
				"UK3CB_TKM_B_U_03_C",
				"UK3CB_TKM_I_U_03",
				"UK3CB_TKM_I_U_03_B",
				"UK3CB_TKM_I_U_03_C",
				"UK3CB_TKM_O_U_03",
				"UK3CB_TKM_O_U_03_B",
				"UK3CB_TKM_O_U_03_C"
			};
			primaryWeapon = "rhs_weap_m92_fold";
			backpack[] = {	
				"rhs_medic_bag",
				"UK3CB_TKC_C_B_Sidor_MED",
				"UK3CB_TKP_O_B_ASS_MED_BLK",
				"UK3CB_TKP_I_B_ASS_MED_TAN"
			};
			addItemsToUniform[] = {
			  LIST_2("ACE_Cabletie"),
			  LIST_20("ACE_fieldDressing"),
			  LIST_20("ACE_quikclot"),
			  LIST_20("ACE_elasticBandage"),
			  LIST_4("ACE_morphine"),
			  "ACE_Flashlight_KSF1"
			};
			addItemsToBackpack[] = {
				LIST_5("ACE_salineIV"),
				LIST_10("ACE_epinephrine"),
				LIST_10("ACE_morphine"),
				"GRAD_ALK",
				"ACE_surgicalKit"
			};
		};

		//Explosive Specialist
		class soldier_exp_F: soldier_F {
			uniform[] = {	
				"UK3CB_TKM_B_U_05",
				"UK3CB_TKM_I_U_04",
				"UK3CB_TKM_I_U_04_B",
				"UK3CB_TKM_I_U_04_C",
				"UK3CB_TKM_I_U_05",
				"UK3CB_TKM_I_U_05_B",
				"UK3CB_TKM_I_U_05_C"
			};
			vest[] = {		
				"UK3CB_TKA_I_V_6Sh92_Khk",
				"UK3CB_TKA_I_V_6Sh92_Grey",
				"UK3CB_TKA_I_V_6Sh92_Oli",
				"UK3CB_TKP_I_V_6Sh92_Blk",
				"UK3CB_TKP_I_V_6Sh92_Khk",
				"UK3CB_TKP_I_V_6Sh92_Des",
				"UK3CB_TKP_I_V_6Sh92_Tan"
			};
			addItemsToBackpack[] = {
				"IEDLandBig_Remote_Mag",
				LIST_2("IEDLandSmall_Remote_Mag")
			};
			addItemsToVest[] = {
				"ACE_Cellphone",
				LIST_3 ("rhs_mag_rgd5")
			};
		};

		//Grenadier
		class Soldier_GL_F: Soldier_F {
			primaryWeapon = "rhs_weap_akm_gp25";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"UK3CB_CHC_C_B_HIKER",
				"UK3CB_CW_SOV_O_LATE_B_Sidor_RIF",
				"UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF",
				"rhs_sidor",
				"B_Messenger_Black_F"
			};
			addItemsToBackpack[] = {
				LIST_2("rhs_mag_rgd5"),
				LIST_2("rhs_mag_rdg2_white"),
				LIST_10("rhs_VOG25"),
				LIST_2("rhs_VG40MD_White"),
				LIST_2("rhs_VG40MD_Green"),
				LIST_2("rhs_VG40MD_Red")
			};
			addItemsToVest[] = {
				LIST_4("rhs_30Rnd_762x39mm"),
				LIST_5("rhs_mag_rgd5")
			};
		};

		//Heavy Gunner
		class HeavyGunner_F: Soldier_F {

		};

		//Marksman
		class soldier_M_F: Soldier_F {
			uniform[] = {	
				"UK3CB_ADE_O_U_06",
				"UK3CB_ADE_O_U_06_B",
				"UK3CB_ADE_O_U_06_C",
				"UK3CB_ADE_O_U_06_D",
				"UK3CB_ADE_O_U_06_E",
				"UK3CB_TKM_O_U_06",
				"UK3CB_TKM_O_U_06_B",
				"UK3CB_TKM_O_U_06_C",
				"UK3CB_TKM_B_U_06_B",
				"UK3CB_TKM_B_U_06_C",
				"UK3CB_TKM_I_U_06",
				"UK3CB_TKM_I_U_06_B",
				"UK3CB_TKM_I_U_06_C"
			};
			vest = "";
			backpack[] = {	
				"B_Kitbag_cbr",
				"B_Kitbag_tan",
				"B_Messenger_Black_F",
				"B_Messenger_Coyote_F",
				"UK3CB_B_Alice_Bedroll_K",
				"UK3CB_B_Alice_K"		
			};
			primaryWeapon = "rhs_weap_svdp";
			primaryWeaponMagazine = "rhs_10Rnd_762x54mmR_7N1";
			primaryWeaponAttachments[] = {"rhs_acc_pso1m21"};
			addItemsToBackpack[] = {
				"rhs_mag_rgd5",
				LIST_10("rhs_10Rnd_762x54mmR_7N1")
			};
		};

		//Missile Specialist (AA)
		class soldier_AA_F: Soldier_F {
			secondaryWeapon = "rhs_weap_igla";
			secondaryWeaponMagazine = "rhs_mag_9k38_rocket";
			vest = "";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"UK3CB_CHC_C_B_HIKER",
				"rhs_rpg_empty"
			};
			addItemsToBackpack[] = {
				"rhs_mag_9k38_rocket"
			};
		};

		//Missile Specialist (AT)
		class soldier_AT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_rpg7";
			secondaryWeaponMagazine = "rhs_rpg7_PG7VR_mag";
			vest = "";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"UK3CB_CHC_C_B_HIKER",
				"rhs_rpg_empty"
			};
			addItemsToBackpack[] = {
				LIST_2("rhs_rpg7_PG7VR_mag")
			};
		};

		//Repair Specialist
		class soldier_repair_F: Soldier_F {
			backpack = "rhs_assault_umbts_engineer_empty";
			addItemsToBackpack[] = {
				"ToolKit",
				"ACE_wirecutter"
			};
		};

		//Rifleman (AT)
		class soldier_LAT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_rpg26";
		};

		//Squad Leader
		class Soldier_SL_F: soldier_F {
			uniform[] = {	
				"UK3CB_ADE_O_U_06",
				"UK3CB_ADE_O_U_06_B",
				"UK3CB_ADE_O_U_06_C",
				"UK3CB_ADE_O_U_06_D",
				"UK3CB_ADE_O_U_06_E",
				"UK3CB_TKM_O_U_06",
				"UK3CB_TKM_O_U_06_B",
				"UK3CB_TKM_O_U_06_C",
				"UK3CB_TKM_B_U_06_B",
				"UK3CB_TKM_B_U_06_C",
				"UK3CB_TKM_I_U_06",
				"UK3CB_TKM_I_U_06_B",
				"UK3CB_TKM_I_U_06_C"
			};
		};

		//Team Leader
		class Soldier_TL_F: soldier_F {
			uniform[] = {	
				"UK3CB_ADE_O_U_06",
				"UK3CB_ADE_O_U_06_B",
				"UK3CB_ADE_O_U_06_C",
				"UK3CB_ADE_O_U_06_D",
				"UK3CB_ADE_O_U_06_E",
				"UK3CB_TKM_O_U_06",
				"UK3CB_TKM_O_U_06_B",
				"UK3CB_TKM_O_U_06_C",
				"UK3CB_TKM_B_U_06_B",
				"UK3CB_TKM_B_U_06_C",
				"UK3CB_TKM_I_U_06",
				"UK3CB_TKM_I_U_06_B",
				"UK3CB_TKM_I_U_06_C"
			};
			primaryWeapon = "rhs_weap_akms_gp25";
			backpack[] = {	
				"UK3CB_B_Alice_K",
				"UK3CB_CHC_C_B_HIKER",
				"UK3CB_CW_SOV_O_LATE_B_Sidor_RIF",
				"UK3CB_CW_SOV_O_EARLY_B_Sidor_RIF",
				"rhs_sidor"
			};
			addItemsToBackpack[] = {
				LIST_2("rhs_mag_rdg2_white"),
				LIST_2("rhs_VG40MD_Green"),
				LIST_2("rhs_VG40MD_Red"),
				LIST_2("rhs_VG40MD_White"),
				LIST_4("rhs_VOG25")
			};
		};
	};
};
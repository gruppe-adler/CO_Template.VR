// ACE Medical
private _medicSettings = [missionConfigFile >> "medicalSettings", "NUMBER", 0] call CBA_fnc_getConfigEntry;

switch (_medicSettings) do {
	case 0 : {
		//No Death
		force ace_medical_ai_enabledFor = 0;
		force ace_medical_AIDamageThreshold = 0.7;
		force ace_medical_fatalDamageSource = 2;
		force ace_medical_fractures = 1;
		force ace_medical_ivFlowRate = 1;
		force ace_medical_limping = 2;
		force ace_medical_playerDamageThreshold = 1.25;
		force ace_medical_spontaneousWakeUpChance = 0.5;
		force ace_medical_spontaneousWakeUpEpinephrineBoost = 1.5;
		force ace_medical_statemachine_AIUnconsciousness = true;
		force ace_medical_statemachine_cardiacArrestTime = 3600;
		force ace_medical_statemachine_fatalInjuriesAI = 0;
		force ace_medical_statemachine_fatalInjuriesPlayer = 2;
		force ace_medical_treatment_advancedDiagnose = true;
		force ace_medical_treatment_advancedMedication = true;
		force ace_medical_treatment_allowSelfIV = 0;
		force ace_medical_treatment_allowSelfStitch = 0;
		force ace_medical_treatment_allowSharedEquipment = 0;
		force ace_medical_treatment_clearTraumaAfterBandage = false;
		force ace_medical_treatment_consumePAK = 0;
		force ace_medical_treatment_consumeSurgicalKit = 0;
		force ace_medical_treatment_cprSuccessChance = 0.5;
		force ace_medical_treatment_holsterRequired = 0;
		force ace_medical_treatment_medicIV = 1;
	};
	case 1 : {
		//Waverespawn
		force ace_medical_ai_enabledFor = 0;
		force ace_medical_AIDamageThreshold = 6;
		force ace_medical_bleedingCoefficient = 0.7;
		force ace_medical_blood_bloodLifetime = 600;
		force ace_medical_fatalDamageSource = 2;
		force ace_medical_fractureChance = 0.696238;
		force ace_medical_fractures = 1;
		force ace_medical_gui_maxDistance = 2.5;
		force ace_medical_ivFlowRate = 1;
		force ace_medical_limping = 2;
		force ace_medical_painCoefficient = 1;
		force ace_medical_playerDamageThreshold = 2.5;
		force ace_medical_spontaneousWakeUpChance = 0.5;
		force ace_medical_spontaneousWakeUpEpinephrineBoost = 2.5;
		force ace_medical_statemachine_AIUnconsciousness = false;
		force ace_medical_statemachine_cardiacArrestTime = 600;
		force ace_medical_statemachine_fatalInjuriesAI = 0;
		force ace_medical_statemachine_fatalInjuriesPlayer = 2;
		force ace_medical_treatment_advancedBandages = 2;
		force ace_medical_treatment_advancedDiagnose = true;
		force ace_medical_treatment_advancedMedication = true;
		force ace_medical_treatment_allowSelfIV = 0;
		force ace_medical_treatment_allowSelfStitch = 1;
		force ace_medical_treatment_allowSharedEquipment = 0;
		force ace_medical_treatment_clearTraumaAfterBandage = false;
		force ace_medical_treatment_consumePAK = 0;
		force ace_medical_treatment_consumeSurgicalKit = 0;
		force ace_medical_treatment_convertItems = 0;
		force ace_medical_treatment_cprSuccessChance = 0.2;
		force ace_medical_treatment_holsterRequired = 0;
		force ace_medical_treatment_locationEpinephrine = 0;
		force ace_medical_treatment_locationPAK = 3;
		force ace_medical_treatment_locationsBoostTraining = false;
		force ace_medical_treatment_locationSurgicalKit = 0;
		force ace_medical_treatment_medicEpinephrine = 0;
		force ace_medical_treatment_medicIV = 1;
		force ace_medical_treatment_medicPAK = 1;
		force ace_medical_treatment_medicSurgicalKit = 1;
		force ace_medical_treatment_timeCoefficientPAK = 1;
	};
};

// ACE Artillery
force ace_mk6mortar_airResistanceEnabled = true;
force ace_mk6mortar_allowComputerRangefinder = false;

// ACE Hearing
force ace_hearing_disableEarRinging = true;
force ace_hearing_enableCombatDeafness = false;

// ACE Interaction
force ace_interaction_disableNegativeRating = true;

// ACE Map
force ace_map_BFT_Enabled = true;
force ace_map_BFT_HideAiGroups = true;
force ace_map_DefaultChannel = 0;
force ace_map_mapShowCursorCoordinates = true;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0.4;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 0.5;
force ace_nightvision_fogScaling = 0.1;
force ace_nightvision_noiseScaling = 0.329131;

// ACE Pointing
force ace_finger_enabled = true;

// ACE Vehicle Lock
force ace_vehiclelock_lockVehicleInventory = true;

// ACE Weather
force ace_weather_enabled = false;

// ACEX Headless
force acex_headless_enabled = true;
force acex_headless_endMission = 0;
force acex_headless_log = true;

// ACEX Sitting
force acex_sitting_enable = true;

// TFAR - Global settings
force TFAR_enableIntercom = true;
force TFAR_fullDuplex = true;
force TFAR_giveLongRangeRadioToGroupLeaders = false;
force TFAR_giveMicroDagrToSoldier = false;
force TFAR_givePersonalRadioToRegularSoldier = false;
force TFAR_objectInterceptionEnabled = true;
force TFAR_SameLRFrequenciesForSide = false;
force TFAR_SameSRFrequenciesForSide = false;
force TFAR_spectatorCanHearEnemyUnits = true;
force TFAR_spectatorCanHearFriendlies = true;

// GRAD Trenches
force grad_trenches_functions_allowBigEnvelope = true;
force grad_trenches_functions_allowCamouflage = true;
force grad_trenches_functions_allowDigging = true;
force grad_trenches_functions_allowGiantEnvelope = true;
force grad_trenches_functions_allowLongEnvelope = true;
force grad_trenches_functions_allowShortEnvelope = true;
force grad_trenches_functions_allowSmallEnvelope = true;
force grad_trenches_functions_allowVehicleEnvelope = true;
force grad_trenches_functions_bigEnvelopeDigTime = 40;
force grad_trenches_functions_buildFatigueFactor = 1;
force grad_trenches_functions_camouflageRequireEntrenchmentTool = false;
force grad_trenches_functions_giantEnvelopeDigTime = 90;
force grad_trenches_functions_LongEnvelopeDigTime = 100;
force grad_trenches_functions_shortEnvelopeDigTime = 20;
force grad_trenches_functions_smallEnvelopeDigTime = 30;
force grad_trenches_functions_stopBuildingAtFatigueMax = false;
force grad_trenches_functions_vehicleEnvelopeDigTime = 120;

/*

    note these are disabled by default 
    and should only be used for 1 life mini missions 
    as dying is possible here

*/


// ACE Advanced Ballistics
ace_advanced_ballistics_ammoTemperatureEnabled = true;
ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
ace_advanced_ballistics_bulletTraceEnabled = true;
ace_advanced_ballistics_enabled = false;
ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
ace_advanced_fatigue_enabled = true;
ace_advanced_fatigue_enableStaminaBar = true;
ace_advanced_fatigue_fadeStaminaBar = true;
ace_advanced_fatigue_loadFactor = 1;
ace_advanced_fatigue_performanceFactor = 1;
ace_advanced_fatigue_recoveryFactor = 1;
ace_advanced_fatigue_swayFactor = 1;
ace_advanced_fatigue_terrainGradientFactor = 1;

// ACE Advanced Throwing
ace_advanced_throwing_enabled = true;
ace_advanced_throwing_enablePickUp = true;
ace_advanced_throwing_enablePickUpAttached = true;
ace_advanced_throwing_showMouseControls = true;
ace_advanced_throwing_showThrowArc = true;

// ACE Advanced Vehicle Damage
ace_vehicle_damage_enableCarDamage = false;
ace_vehicle_damage_enabled = true;
ace_vehicle_damage_removeAmmoDuringCookoff = true;

// ACE Arsenal
ace_arsenal_allowDefaultLoadouts = true;
ace_arsenal_allowSharedLoadouts = true;
ace_arsenal_camInverted = false;
ace_arsenal_enableIdentityTabs = true;
ace_arsenal_enableModIcons = true;
ace_arsenal_EnableRPTLog = false;
ace_arsenal_fontHeight = 4.5;

// ACE Artillery
ace_artillerytables_advancedCorrections = false;
ace_artillerytables_disableArtilleryComputer = false;
force ace_mk6mortar_airResistanceEnabled = true;
ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = false;
force ace_mk6mortar_useAmmoHandling = true;

// ACE Captives
ace_captives_allowHandcuffOwnSide = true;
ace_captives_allowSurrender = true;
ace_captives_requireSurrender = 1;
ace_captives_requireSurrenderAi = false;

// ACE Common
ace_common_allowFadeMusic = true;
ace_common_checkPBOsAction = 0;
ace_common_checkPBOsCheckAll = false;
ace_common_checkPBOsWhitelist = "[]";
ace_common_displayTextColor = [0,0,0,0.1];
ace_common_displayTextFontColor = [1,1,1,1];
ace_common_settingFeedbackIcons = 1;
ace_common_settingProgressBarLocation = 0;
ace_noradio_enabled = true;
force ace_parachute_hideAltimeter = false;

// ACE Cook off
force ace_cookoff_ammoCookoffDuration = 0.62952;
force ace_cookoff_enable = 0;
force ace_cookoff_enableAmmobox = true;
force ace_cookoff_enableAmmoCookoff = true;
force ace_cookoff_probabilityCoef = 1;

// ACE Crew Served Weapons
ace_csw_ammoHandling = 2;
ace_csw_defaultAssemblyMode = false;
ace_csw_dragAfterDeploy = false;
ace_csw_handleExtraMagazines = true;
ace_csw_progressBarTimeCoefficent = 1;

// ACE Explosives
ace_explosives_explodeOnDefuse = true;
ace_explosives_punishNonSpecialists = true;
ace_explosives_requireSpecialist = false;

// ACE Fire
ace_fire_enabled = true;
ace_fire_enableFlare = false;

// ACE Fragmentation Simulation
ace_frag_enabled = true;
ace_frag_maxTrack = 10;
ace_frag_maxTrackPerFrame = 10;
ace_frag_reflectionsEnabled = false;
ace_frag_spallEnabled = false;

// ACE Goggles
ace_goggles_effects = 2;
ace_goggles_showClearGlasses = false;
ace_goggles_showInThirdPerson = false;

// ACE Hearing
ace_hearing_autoAddEarplugsToUnits = true;
force ace_hearing_disableEarRinging = true;
ace_hearing_earplugsVolume = 0.5;
force ace_hearing_enableCombatDeafness = false;
ace_hearing_enabledForZeusUnits = true;
ace_hearing_unconsciousnessVolume = 0.4;

// ACE Interaction
force ace_interaction_disableNegativeRating = true;
ace_interaction_enableMagazinePassing = true;
ace_interaction_enableTeamManagement = true;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
ace_interact_menu_addBuildingActions = false;
ace_interact_menu_alwaysUseCursorInteraction = false;
ace_interact_menu_alwaysUseCursorSelfInteraction = true;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_cursorKeepCenteredSelfInteraction = false;
ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_menuBackgroundSelf = 0;
ace_interact_menu_selectorColor = [1,0,0];
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
ace_interact_menu_useListMenu = false;
ace_interact_menu_useListMenuSelf = false;

// ACE Logistics
ace_cargo_enable = true;
ace_cargo_loadTimeCoefficient = 5;
ace_cargo_paradropTimeCoefficent = 2.5;
ace_rearm_distance = 20;
ace_rearm_level = 0;
ace_rearm_supply = 0;
ace_refuel_hoseLength = 12;
ace_refuel_rate = 1;
ace_repair_addSpareParts = true;
force ace_repair_autoShutOffEngineWhenStartingRepair = true;
ace_repair_consumeItem_toolKit = 0;
ace_repair_displayTextOnRepair = true;
ace_repair_engineerSetting_fullRepair = 2;
force ace_repair_engineerSetting_repair = 0;
ace_repair_engineerSetting_wheel = 0;
ace_repair_fullRepairLocation = 2;
ace_repair_fullRepairRequiredItems = ["ToolKit"];
ace_repair_miscRepairRequiredItems = ["ToolKit"];
force ace_repair_repairDamageThreshold = 0.7;
ace_repair_repairDamageThreshold_engineer = 0.4;
ace_repair_wheelRepairRequiredItems = [];

// ACE Magazine Repack
ace_magazinerepack_timePerAmmo = 1.5;
ace_magazinerepack_timePerBeltLink = 8;
ace_magazinerepack_timePerMagazine = 2;

// ACE Map
force ace_map_BFT_Enabled = true;
force ace_map_BFT_HideAiGroups = true;
ace_map_BFT_Interval = 1;
ace_map_BFT_ShowPlayerNames = false;
force ace_map_DefaultChannel = 1;
ace_map_mapGlow = true;
ace_map_mapIllumination = true;
ace_map_mapLimitZoom = false;
ace_map_mapShake = true;
force ace_map_mapShowCursorCoordinates = true;
ace_markers_moveRestriction = 0;

// ACE Map Gestures
ace_map_gestures_defaultColor = [1,0.88,0,0.7];
ace_map_gestures_defaultLeadColor = [1,0.88,0,0.95];
ace_map_gestures_enabled = true;
ace_map_gestures_interval = 0.03;
ace_map_gestures_maxRange = 7;
ace_map_gestures_nameTextColor = [0.2,0.2,0.2,0.3];

// ACE Map Tools
ace_maptools_drawStraightLines = true;
ace_maptools_rotateModifierKey = 1;

// ACE Medical
force ace_medical_ai_enabledFor = 0;
force ace_medical_AIDamageThreshold = 0.7;
force ace_medical_bleedingCoefficient = 0.7;
ace_medical_blood_bloodLifetime = 600;
ace_medical_blood_enabledFor = 2;
ace_medical_blood_maxBloodObjects = 500;
force ace_medical_fatalDamageSource = 2;
ace_medical_feedback_bloodVolumeEffectType = 0;
ace_medical_feedback_painEffectType = 0;
force ace_medical_fractureChance = 0.497159;
force ace_medical_fractures = 1;
ace_medical_gui_enableActions = 0;
ace_medical_gui_enableMedicalMenu = 1;
ace_medical_gui_enableSelfActions = true;
force ace_medical_gui_maxDistance = 2.5;
ace_medical_gui_openAfterTreatment = true;
force ace_medical_ivFlowRate = 1;
force ace_medical_limping = 1;
force ace_medical_painCoefficient = 1;
force ace_medical_playerDamageThreshold = 1.25;
force ace_medical_spontaneousWakeUpChance = 0.902491;
force ace_medical_spontaneousWakeUpEpinephrineBoost = 2.51873;
force ace_medical_statemachine_AIUnconsciousness = false;
force ace_medical_statemachine_cardiacArrestTime = 60;
force ace_medical_statemachine_fatalInjuriesAI = 0;
force ace_medical_statemachine_fatalInjuriesPlayer = 1;
force ace_medical_treatment_advancedBandages = 2;
force ace_medical_treatment_advancedDiagnose = true;
force ace_medical_treatment_advancedMedication = true;
ace_medical_treatment_allowLitterCreation = true;
force ace_medical_treatment_allowSelfIV = 0;
force ace_medical_treatment_allowSelfPAK = 0;
force ace_medical_treatment_allowSelfStitch = 1;
force ace_medical_treatment_allowSharedEquipment = 0;
force ace_medical_treatment_clearTraumaAfterBandage = false;
force ace_medical_treatment_consumePAK = 0;
force ace_medical_treatment_consumeSurgicalKit = 0;
force ace_medical_treatment_convertItems = 0;
force ace_medical_treatment_cprSuccessChance = 0.5;
force ace_medical_treatment_holsterRequired = 0;
ace_medical_treatment_litterCleanupDelay = 600;
force ace_medical_treatment_locationEpinephrine = 0;
force ace_medical_treatment_locationPAK = 3;
force ace_medical_treatment_locationsBoostTraining = false;
force ace_medical_treatment_locationSurgicalKit = 0;
ace_medical_treatment_maxLitterObjects = 500;
force ace_medical_treatment_medicEpinephrine = 0;
force ace_medical_treatment_medicIV = 1;
force ace_medical_treatment_medicPAK = 1;
force ace_medical_treatment_medicSurgicalKit = 1;
force ace_medical_treatment_timeCoefficientPAK = 1;

// ACE Name Tags
ace_nametags_defaultNametagColor = [0.77,0.51,0.08,1];
ace_nametags_nametagColorBlue = [0.67,0.67,1,1];
ace_nametags_nametagColorGreen = [0.67,1,0.67,1];
ace_nametags_nametagColorMain = [1,1,1,1];
ace_nametags_nametagColorRed = [1,0.67,0.67,1];
ace_nametags_nametagColorYellow = [1,1,0.67,1];
ace_nametags_playerNamesMaxAlpha = 0.8;
ace_nametags_playerNamesViewDistance = 5;
ace_nametags_showCursorTagForVehicles = false;
ace_nametags_showNamesForAI = false;
ace_nametags_showPlayerNames = 1;
ace_nametags_showPlayerRanks = true;
ace_nametags_showSoundWaves = 1;
ace_nametags_showVehicleCrewInfo = true;
ace_nametags_tagSize = 2;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 0.5;
force ace_nightvision_fogScaling = 0;
force ace_nightvision_noiseScaling = 0.2;
ace_nightvision_shutterEffects = true;

// ACE Overheating
ace_overheating_displayTextOnJam = true;
ace_overheating_enabled = true;
ace_overheating_overheatingDispersion = true;
ace_overheating_showParticleEffects = true;
ace_overheating_showParticleEffectsForEveryone = false;
ace_overheating_unJamFailChance = 0.1;
ace_overheating_unJamOnreload = false;

// ACE Pointing
force ace_finger_enabled = true;
ace_finger_indicatorColor = [0.83,0.68,0.21,0.75];
ace_finger_indicatorForSelf = true;
ace_finger_maxRange = 4;

// ACE Pylons
ace_pylons_enabledForZeus = true;
ace_pylons_enabledFromAmmoTrucks = true;
ace_pylons_rearmNewPylons = false;
ace_pylons_requireEngineer = false;
ace_pylons_requireToolkit = true;
ace_pylons_searchDistance = 15;
ace_pylons_timePerPylon = 5;

// ACE Quick Mount
ace_quickmount_distance = 3;
ace_quickmount_enabled = true;
ace_quickmount_enableMenu = 3;
ace_quickmount_priority = 0;
ace_quickmount_speed = 18;

// ACE Respawn
ace_respawn_removeDeadBodiesDisconnected = true;
ace_respawn_savePreDeathGear = false;

// ACE Scopes
ace_scopes_correctZeroing = true;
ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
ace_scopes_defaultZeroRange = 100;
ace_scopes_enabled = true;
ace_scopes_forceUseOfAdjustmentTurrets = false;
ace_scopes_overwriteZeroRange = false;
ace_scopes_simplifiedZeroing = false;
ace_scopes_useLegacyUI = false;
ace_scopes_zeroReferenceBarometricPressure = 1013.25;
ace_scopes_zeroReferenceHumidity = 0;
ace_scopes_zeroReferenceTemperature = 15;

// ACE Spectator
ace_spectator_enableAI = false;
ace_spectator_maxFollowDistance = 5;
ace_spectator_restrictModes = 0;
ace_spectator_restrictVisions = 0;

// ACE Switch Units
ace_switchunits_enableSafeZone = true;
ace_switchunits_enableSwitchUnits = false;
ace_switchunits_safeZoneRadius = 100;
ace_switchunits_switchToCivilian = false;
ace_switchunits_switchToEast = false;
ace_switchunits_switchToIndependent = false;
ace_switchunits_switchToWest = false;

// ACE Uncategorized
ace_fastroping_requireRopeItems = false;
ace_gforces_enabledFor = 1;
ace_hitreactions_minDamageToTrigger = 0.1;
ace_inventory_inventoryDisplaySize = 0;
ace_laser_dispersionCount = 2;
ace_microdagr_mapDataAvailable = 2;
ace_microdagr_waypointPrecision = 3;
ace_optionsmenu_showNewsOnMainMenu = true;
ace_overpressure_distanceCoefficient = 1;
ace_tagging_quickTag = 1;

// ACE User Interface
ace_ui_allowSelectiveUI = true;
ace_ui_ammoCount = false;
ace_ui_ammoType = true;
ace_ui_commandMenu = true;
ace_ui_firingMode = true;
ace_ui_groupBar = false;
ace_ui_gunnerAmmoCount = true;
ace_ui_gunnerAmmoType = true;
ace_ui_gunnerFiringMode = true;
ace_ui_gunnerLaunchableCount = true;
ace_ui_gunnerLaunchableName = true;
ace_ui_gunnerMagCount = true;
ace_ui_gunnerWeaponLowerInfoBackground = true;
ace_ui_gunnerWeaponName = true;
ace_ui_gunnerWeaponNameBackground = true;
ace_ui_gunnerZeroing = true;
ace_ui_magCount = true;
ace_ui_soldierVehicleWeaponInfo = true;
ace_ui_staminaBar = true;
ace_ui_stance = true;
ace_ui_throwableCount = true;
ace_ui_throwableName = true;
ace_ui_vehicleAltitude = true;
ace_ui_vehicleCompass = true;
ace_ui_vehicleDamage = true;
ace_ui_vehicleFuelBar = true;
ace_ui_vehicleInfoBackground = true;
ace_ui_vehicleName = true;
ace_ui_vehicleNameBackground = true;
ace_ui_vehicleRadar = true;
ace_ui_vehicleSpeed = true;
ace_ui_weaponLowerInfoBackground = true;
ace_ui_weaponName = true;
ace_ui_weaponNameBackground = true;
ace_ui_zeroing = true;

// ACE Vehicle Lock
ace_vehiclelock_defaultLockpickStrength = 10;
force ace_vehiclelock_lockVehicleInventory = true;
ace_vehiclelock_vehicleStartingLockState = -1;

// ACE Vehicles
ace_vehicles_hideEjectAction = true;
ace_vehicles_keepEngineRunning = false;
ace_vehicles_speedLimiterStep = 5;

// ACE View Distance Limiter
ace_viewdistance_enabled = true;
ace_viewdistance_limitViewDistance = 10000;
ace_viewdistance_objectViewDistanceCoeff = 0;
ace_viewdistance_viewDistanceAirVehicle = 0;
ace_viewdistance_viewDistanceLandVehicle = 0;
ace_viewdistance_viewDistanceOnFoot = 0;

// ACE Weapons
ace_common_persistentLaserEnabled = false;
ace_laserpointer_enabled = true;
ace_reload_displayText = true;
ace_reload_showCheckAmmoSelf = false;
ace_weaponselect_displayText = true;

// ACE Weather
force ace_weather_enabled = false;
ace_weather_showCheckAirTemperature = true;
ace_weather_updateInterval = 60;
ace_weather_windSimulation = true;

// ACE Wind Deflection
ace_winddeflection_enabled = true;
ace_winddeflection_simulationInterval = 0.05;
ace_winddeflection_vehicleEnabled = true;

// ACE Zeus
force ace_zeus_autoAddObjects = true;
ace_zeus_canCreateZeus = -1;
ace_zeus_radioOrdnance = false;
ace_zeus_remoteWind = false;
ace_zeus_revealMines = 0;
ace_zeus_zeusAscension = false;
ace_zeus_zeusBird = false;

// ACEX Field Rations
acex_field_rations_affectAdvancedFatigue = true;
acex_field_rations_enabled = false;
acex_field_rations_hudShowLevel = 0;
acex_field_rations_hudTransparency = -1;
acex_field_rations_hudType = 0;
acex_field_rations_hungerSatiated = 1;
acex_field_rations_terrainObjectActions = true;
acex_field_rations_thirstQuenched = 1;
acex_field_rations_timeWithoutFood = 2;
acex_field_rations_timeWithoutWater = 2;
acex_field_rations_waterSourceActions = 2;

// ACEX Fortify
acex_fortify_settingHint = 2;

// ACEX Headless
acex_headless_delay = 15;
force acex_headless_enabled = true;
force acex_headless_endMission = 0;
force acex_headless_log = true;
acex_headless_transferLoadout = 0;

// ACEX Sitting
force acex_sitting_enable = true;

// ACEX View Restriction
acex_viewrestriction_mode = 0;
acex_viewrestriction_modeSelectiveAir = 0;
acex_viewrestriction_modeSelectiveFoot = 0;
acex_viewrestriction_modeSelectiveLand = 0;
acex_viewrestriction_modeSelectiveSea = 0;
acex_viewrestriction_preserveView = false;

// ACEX Volume
acex_volume_enabled = false;
acex_volume_fadeDelay = 1;
acex_volume_lowerInVehicles = false;
acex_volume_reduction = 5;
acex_volume_remindIfLowered = false;
acex_volume_showNotification = true;

// CBA UI
cba_diagnostic_ConsoleIndentType = -1;
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// CBA Weapons
cba_disposable_dropUsedLauncher = 2;
cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
cba_optics_usePipOptics = true;

// Community Base Addons - Network
cba_network_loadoutValidation = 0;

// DUI - Squad Radar - Indicators
diwako_dui_indicators_crew_range_enabled = false;
diwako_dui_indicators_fov_scale = false;
diwako_dui_indicators_icon_buddy = true;
diwako_dui_indicators_icon_leader = true;
diwako_dui_indicators_icon_medic = true;
diwako_dui_indicators_range = 20;
diwako_dui_indicators_range_crew = 300;
diwako_dui_indicators_range_scale = false;
diwako_dui_indicators_show = true;
diwako_dui_indicators_size = 1;
diwako_dui_indicators_style = "standard";
diwako_dui_indicators_useACENametagsRange = true;

// DUI - Squad Radar - Main
diwako_dui_ace_hide_interaction = true;
diwako_dui_colors = "standard";
diwako_dui_font = "RobotoCondensed";
diwako_dui_icon_style = "standard";
diwako_dui_main_hide_dialog = true;
diwako_dui_main_hide_ui_by_default = false;
diwako_dui_main_squadBlue = [0,0,1,1];
diwako_dui_main_squadGreen = [0,1,0,1];
diwako_dui_main_squadMain = [1,1,1,1];
diwako_dui_main_squadRed = [1,0,0,1];
diwako_dui_main_squadYellow = [1,1,0,1];
diwako_dui_main_trackingColor = [0.93,0.26,0.93,1];
diwako_dui_reset_ui_pos = false;

// DUI - Squad Radar - Nametags
diwako_dui_nametags_deadColor = [0.2,0.2,0.2,1];
diwako_dui_nametags_deadRenderDistance = 3.5;
diwako_dui_nametags_drawRank = true;
diwako_dui_nametags_enabled = true;
diwako_dui_nametags_enableFOVBoost = true;
diwako_dui_nametags_enableOcclusion = true;
diwako_dui_nametags_fadeInTime = 0.05;
diwako_dui_nametags_fadeOutTime = 0.5;
diwako_dui_nametags_fontGroup = "RobotoCondensedLight";
diwako_dui_nametags_fontGroupNameSize = 8;
diwako_dui_nametags_fontName = "RobotoCondensedBold";
diwako_dui_nametags_fontNameSize = 10;
diwako_dui_nametags_groupColor = [1,1,1,1];
diwako_dui_nametags_groupFontShadow = 1;
diwako_dui_nametags_groupNameOtherGroupColor = [0.6,0.85,0.6,1];
diwako_dui_nametags_nameFontShadow = 1;
diwako_dui_nametags_nameOtherGroupColor = [0.2,1,0,1];
diwako_dui_nametags_renderDistance = 40;
diwako_dui_nametags_showUnconAsDead = true;
diwako_dui_nametags_useLIS = true;
diwako_dui_nametags_useSideIsFriendly = true;

// DUI - Squad Radar - Radar
diwako_dui_compass_hide_alone_group = false;
diwako_dui_compass_hide_blip_alone_group = false;
diwako_dui_compass_icon_scale = 1;
diwako_dui_compass_opacity = 1;
diwako_dui_compass_style = ["\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass_limited.paa","\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass.paa"];
diwako_dui_compassRange = 35;
diwako_dui_compassRefreshrate = 0;
diwako_dui_dir_showMildot = false;
diwako_dui_dir_size = 1.25;
diwako_dui_distanceWarning = 3;
diwako_dui_enable_compass = true;
diwako_dui_enable_compass_dir = 1;
diwako_dui_enable_occlusion = false;
diwako_dui_enable_occlusion_cone = 360;
diwako_dui_hudScaling = 1;
diwako_dui_namelist = true;
diwako_dui_namelist_bg = 0;
diwako_dui_namelist_only_buddy_icon = false;
diwako_dui_namelist_size = 1;
diwako_dui_namelist_text_shadow = 2;
diwako_dui_namelist_width = 215;
diwako_dui_radar_ace_finger = true;
diwako_dui_radar_ace_medic = true;
diwako_dui_radar_compassRangeCrew = 500;
diwako_dui_radar_dir_padding = 25;
diwako_dui_radar_dir_shadow = 2;
diwako_dui_radar_group_by_vehicle = false;
diwako_dui_radar_icon_opacity = 1;
diwako_dui_radar_icon_opacity_no_player = true;
diwako_dui_radar_icon_priority_setting = 1;
diwako_dui_radar_icon_scale_crew = 6;
diwako_dui_radar_leadingZeroes = false;
diwako_dui_radar_namelist_hideWhenLeader = false;
diwako_dui_radar_namelist_vertical_spacing = 1;
diwako_dui_radar_occlusion_fade_in_time = 1;
diwako_dui_radar_occlusion_fade_time = 10;
diwako_dui_radar_pointer_color = [1,0.5,0,1];
diwako_dui_radar_pointer_style = "standard";
diwako_dui_radar_show_cardinal_points = true;
diwako_dui_radar_showSpeaking = true;
diwako_dui_radar_showSpeaking_radioOnly = false;
diwako_dui_radar_showSpeaking_replaceIcon = true;
diwako_dui_radar_sortType = "none";
diwako_dui_radar_sqlFirst = false;
diwako_dui_radar_vehicleCompassEnabled = false;
diwako_dui_use_layout_editor = false;

// Enhanced Movement Rework
emr_main_allowMidairClimbing = true;
emr_main_animSpeedCoef = 1;
emr_main_animSpeedStaminaCoef = 0.4;
emr_main_blacklistStr = "";
emr_main_climbingEnabled = true;
emr_main_climbOnDuty = 3.4;
emr_main_climbOverDuty = 3;
emr_main_dropDuty = 0.7;
emr_main_dropViewElevation = -0.7;
emr_main_enableWalkableSurface = true;
emr_main_enableWeightCheck = false;
emr_main_hintType = 2;
emr_main_jumpDuty = 1;
emr_main_jumpingEnabled = true;
emr_main_jumpingLoadCoefficient = 1;
emr_main_jumpVelocity = 3.4;
emr_main_maxClimbHeight = 2.6;
emr_main_maxDropHeight = 6;
emr_main_maxWeightClimb1 = 100;
emr_main_maxWeightClimb2 = 85;
emr_main_maxWeightClimb3 = 60;
emr_main_maxWeightJump = 100;
emr_main_preventHighVaulting = false;
emr_main_staminaCoefficient = 1;
emr_main_whitelistStr = "";

// GRAD Animal Transport
grad_animalTransport_common_loadingRange = 5;
grad_animalTransport_common_unloadSpeed = 1;

// GRAD Axe
GRAD_axe_setting_maxTime = 40;
GRAD_axe_setting_timeFactor = 1;

// GRAD Civs
grad_civs_activities_panicCooldown = "[15, 120, 240]";
grad_civs_cars_animalTransportChance = 0.4;
grad_civs_cars_animalTransportVehicles = "";
grad_civs_cars_automaticVehicleGroupSize = true;
grad_civs_cars_vehicles = "[""C_Van_01_fuel_F"",""C_Hatchback_01_F"",""C_Truck_02_fuel_F"",""C_Truck_02_covered_F"",""C_Offroad_01_F"",""C_SUV_01_F"",""C_Van_01_transport_F"",""C_Van_01_box_F""]";
grad_civs_diagnostics_showFps = false;
grad_civs_diagnostics_showInfoLine = false;
grad_civs_diagnostics_showMisc = false;
grad_civs_diagnostics_showOnMap = false;
grad_civs_diagnostics_showPinkArrows = false;
grad_civs_gta_enabled = true;
grad_civs_lifecycle_civClasses = "C_Man_1";
grad_civs_lifecycle_cleanupCorpses = true;
grad_civs_lifecycle_minCivOwnerFps = 30;
grad_civs_lifecycle_minCivUpdateTime = 3;
grad_civs_lifecycle_minServerFps = 40;
grad_civs_lifecycle_smMultiplicator = 1;
grad_civs_lifecycle_spawnOnlyWithPlayers = true;
grad_civs_loadout_backpackProbability = 0.5;
grad_civs_loadout_backpacks = "[]";
grad_civs_loadout_clothes = "[]";
grad_civs_loadout_faces = "[]";
grad_civs_loadout_goggles = "[]";
grad_civs_loadout_headgear = "[]";
grad_civs_main_enabled = false;
grad_civs_mimikry_enabled = true;
grad_civs_patrol_initialGroupSize = 3;
grad_civs_patrol_maxCivsOnFoot = 30;
grad_civs_patrol_spawnDistancesOnFoot = "[1000, 4500]";
grad_civs_residents_chatTime = 20;
grad_civs_residents_maxCivsResidents = 20;
grad_civs_residents_meetNeighborCooldown = 150;
grad_civs_residents_spawnDistancesResidents = "[500,  1000]";
grad_civs_transit_maxVehiclesInTransit = 5;
grad_civs_transit_vehicles = "[]";
grad_civs_voyage_maxCivsInVehicles = 10;
grad_civs_voyage_maxTravelRadius = 0;
grad_civs_voyage_spawnDistancesInVehicles = "[1500, 6000]";

// GRAD Save Markers
GRAD_saveMarkers_setting_canBeOpened = 1;

// GRAD Trenches
grad_trenches_functions_allowBigEnvelope = true;
grad_trenches_functions_allowCamouflage = true;
grad_trenches_functions_allowDigging = true;
grad_trenches_functions_allowDiggingInVehicle = true;
grad_trenches_functions_allowGiantEnvelope = true;
grad_trenches_functions_allowHitDecay = true;
grad_trenches_functions_allowLongEnvelope = true;
grad_trenches_functions_allowShortEnvelope = true;
grad_trenches_functions_allowSmallEnvelope = true;
grad_trenches_functions_allowTrenchDecay = false;
grad_trenches_functions_allowVehicleEnvelope = true;
grad_trenches_functions_bigEnvelopeDamageMultiplier = 2;
grad_trenches_functions_bigEnvelopeDigTime = 40;
grad_trenches_functions_bigEnvelopeRemovalTime = -1;
grad_trenches_functions_buildFatigueFactor = 1;
grad_trenches_functions_camouflageRequireEntrenchmentTool = false;
grad_trenches_functions_createTrenchMarker = false;
grad_trenches_functions_decayTime = 1800;
grad_trenches_functions_giantEnvelopeDamageMultiplier = 1;
grad_trenches_functions_giantEnvelopeDigTime = 90;
grad_trenches_functions_giantEnvelopeRemovalTime = -1;
grad_trenches_functions_hitDecayMultiplier = 1;
grad_trenches_functions_LongEnvelopeDigTime = 100;
grad_trenches_functions_LongEnvelopeRemovalTime = -1;
grad_trenches_functions_shortEnvelopeDamageMultiplier = 2;
grad_trenches_functions_shortEnvelopeDigTime = 20;
grad_trenches_functions_shortEnvelopeRemovalTime = -1;
grad_trenches_functions_smallEnvelopeDamageMultiplier = 3;
grad_trenches_functions_smallEnvelopeDigTime = 30;
grad_trenches_functions_smallEnvelopeRemovalTime = -1;
grad_trenches_functions_stopBuildingAtFatigueMax = false;
grad_trenches_functions_timeoutToDecay = 7200;
grad_trenches_functions_vehicleEnvelopeDamageMultiplier = 1;
grad_trenches_functions_vehicleEnvelopeDigTime = 120;
grad_trenches_functions_vehicleEnvelopeRemovalTime = -1;

// GRAD Version Check
grad_versionCheck_setting_dontKickAdmin = false;
grad_versionCheck_setting_kickOnMissingClient = true;
grad_versionCheck_setting_kickOnMissingServer = true;
grad_versionCheck_setting_kickOnTimeout = false;
grad_versionCheck_setting_kickOnVersionMismatch = true;

// NIArms
niarms_accswitch = true;
niarms_magSwitch = true;

// TFAR - Clientside settings
TFAR_curatorCamEars = false;
TFAR_default_radioVolume = 6;
TFAR_intercomDucking = 0.2;
TFAR_intercomVolume = 0.2;
TFAR_moveWhileTabbedOut = false;
TFAR_noAutomoveSpectator = false;
TFAR_oldVolumeHint = false;
TFAR_pluginTimeout = 4;
TFAR_PosUpdateMode = 0.1;
TFAR_showChannelChangedHint = true;
TFAR_ShowDiaryRecord = true;
TFAR_showTransmittingHint = true;
TFAR_ShowVolumeHUD = false;
TFAR_tangentReleaseDelay = 0;
TFAR_VolumeHudTransparency = 0;
TFAR_volumeModifier_forceSpeech = false;

// TFAR - Global settings
TFAR_AICanHearPlayer = false;
TFAR_AICanHearSpeaker = false;
TFAR_allowDebugging = true;
tfar_core_noTSNotConnectedHint = false;
TFAR_defaultIntercomSlot = 0;
TFAR_disableAutoMute = false;
force TFAR_enableIntercom = true;
TFAR_experimentalVehicleIsolation = true;
force TFAR_fullDuplex = true;
force TFAR_giveLongRangeRadioToGroupLeaders = false;
force TFAR_giveMicroDagrToSoldier = false;
force TFAR_givePersonalRadioToRegularSoldier = false;
TFAR_globalRadioRangeCoef = 1;
TFAR_instantiate_instantiateAtBriefing = false;
force TFAR_objectInterceptionEnabled = true;
TFAR_objectInterceptionStrength = 400;
tfar_radiocode_east = "_opfor";
tfar_radiocode_independent = "_independent";
tfar_radiocode_west = "_bluefor";
tfar_radioCodesDisabled = false;
force TFAR_SameLRFrequenciesForSide = false;
force TFAR_SameSRFrequenciesForSide = false;
TFAR_setting_defaultFrequencies_lr_east = "";
TFAR_setting_defaultFrequencies_lr_independent = "";
TFAR_setting_defaultFrequencies_lr_west = "";
TFAR_setting_defaultFrequencies_sr_east = "";
TFAR_setting_defaultFrequencies_sr_independent = "";
TFAR_setting_defaultFrequencies_sr_west = "";
TFAR_setting_DefaultRadio_Airborne_east = "TFAR_mr6000l";
TFAR_setting_DefaultRadio_Airborne_Independent = "TFAR_anarc164";
TFAR_setting_DefaultRadio_Airborne_West = "TFAR_anarc210";
TFAR_setting_DefaultRadio_Backpack_east = "TFAR_mr3000";
TFAR_setting_DefaultRadio_Backpack_Independent = "TFAR_anprc155";
TFAR_setting_DefaultRadio_Backpack_west = "TFAR_rt1523g";
TFAR_setting_DefaultRadio_Personal_east = "TFAR_fadak";
TFAR_setting_DefaultRadio_Personal_Independent = "TFAR_anprc148jem";
TFAR_setting_DefaultRadio_Personal_West = "TFAR_anprc152";
TFAR_setting_DefaultRadio_Rifleman_East = "TFAR_pnr1000a";
TFAR_setting_DefaultRadio_Rifleman_Independent = "TFAR_anprc154";
TFAR_setting_DefaultRadio_Rifleman_West = "TFAR_rf7800str";
force TFAR_spectatorCanHearEnemyUnits = true;
force TFAR_spectatorCanHearFriendlies = true;
TFAR_takingRadio = 2;
TFAR_Teamspeak_Channel_Name = "TaskForceRadio";
TFAR_Teamspeak_Channel_Password = "123";
tfar_terrain_interception_coefficient = 7;
TFAR_voiceCone = true;

// VET_Unflipping
vet_unflipping_require_serviceVehicle = false;
vet_unflipping_require_toolkit = false;
vet_unflipping_time = 5;
vet_unflipping_unit_man_limit = 7;
vet_unflipping_unit_mass_limit = 3000;
vet_unflipping_vehicle_mass_limit = 100000;

// Zeus Enhanced
zen_camera_adaptiveSpeed = true;
zen_camera_defaultSpeedCoef = 1;
zen_camera_fastSpeedCoef = 1;
zen_camera_followTerrain = true;
zen_common_ascensionMessages = false;
zen_common_autoAddObjects = false;
zen_common_cameraBird = false;
zen_common_darkMode = false;
zen_common_disableGearAnim = false;
zen_common_preferredArsenal = 1;
zen_compat_ace_hideModules = true;
zen_context_menu_enabled = 2;
zen_context_menu_overrideWaypoints = false;
zen_editor_addGroupIcons = false;
zen_editor_declutterEmptyTree = true;
zen_editor_disableLiveSearch = false;
zen_editor_moveDisplayToEdge = true;
zen_editor_parachuteSounds = true;
zen_editor_previews_enabled = true;
zen_editor_randomizeCopyPaste = false;
zen_editor_removeWatermark = true;
zen_editor_unitRadioMessages = 0;
zen_placement_enabled = false;
zen_visibility_enabled = false;
zen_vision_enableBlackHot = false;
zen_vision_enableBlackHotGreenCold = false;
zen_vision_enableBlackHotRedCold = false;
zen_vision_enableGreenHotCold = false;
zen_vision_enableNVG = true;
zen_vision_enableRedGreenThermal = false;
zen_vision_enableRedHotCold = false;
zen_vision_enableWhiteHot = true;
zen_vision_enableWhiteHotRedCold = false;

// Zeus Enhanced - Faction Filter
zen_faction_filter_0_gm_fc_gc = true;
zen_faction_filter_0_gm_fc_gc_bgs = true;
zen_faction_filter_0_gm_fc_pl = true;
zen_faction_filter_0_gm_gc_army_win = true;
zen_faction_filter_0_gm_pl_army_win = true;
zen_faction_filter_0_OPF_F = true;
zen_faction_filter_0_OPF_G_F = true;
zen_faction_filter_0_OPF_GEN_F = true;
zen_faction_filter_0_OPF_R_F = true;
zen_faction_filter_0_OPF_T_F = true;
zen_faction_filter_0_rhs_faction_msv = true;
zen_faction_filter_0_rhs_faction_rva = true;
zen_faction_filter_0_rhs_faction_tv = true;
zen_faction_filter_0_rhs_faction_vdv = true;
zen_faction_filter_0_rhs_faction_vmf = true;
zen_faction_filter_0_rhs_faction_vpvo = true;
zen_faction_filter_0_rhs_faction_vv = true;
zen_faction_filter_0_rhs_faction_vvs = true;
zen_faction_filter_0_rhs_faction_vvs_c = true;
zen_faction_filter_0_rhsgref_faction_chdkz = true;
zen_faction_filter_0_rhsgref_faction_chdkz_groups = true;
zen_faction_filter_0_rhsgref_faction_tla = true;
zen_faction_filter_0_rhssaf_faction_airforce_opfor = true;
zen_faction_filter_0_rhssaf_faction_army_opfor = true;
zen_faction_filter_0_UK3CB_AAF_O = true;
zen_faction_filter_0_UK3CB_ADA_O = true;
zen_faction_filter_0_UK3CB_ADC_O = true;
zen_faction_filter_0_UK3CB_ADE_O = true;
zen_faction_filter_0_UK3CB_ADG_O = true;
zen_faction_filter_0_UK3CB_ADM_O = true;
zen_faction_filter_0_UK3CB_ADP_O = true;
zen_faction_filter_0_UK3CB_ADR_O = true;
zen_faction_filter_0_UK3CB_CCM_O = true;
zen_faction_filter_0_UK3CB_CHC_O = true;
zen_faction_filter_0_UK3CB_CHD_O = true;
zen_faction_filter_0_UK3CB_CHD_O_groups = true;
zen_faction_filter_0_UK3CB_CPD_O = true;
zen_faction_filter_0_UK3CB_CW_SOV_O_EARLY = true;
zen_faction_filter_0_UK3CB_CW_SOV_O_LATE = true;
zen_faction_filter_0_UK3CB_NAP_O = true;
zen_faction_filter_0_UK3CB_NAP_O_groups = true;
zen_faction_filter_0_UK3CB_TKA_O = true;
zen_faction_filter_0_UK3CB_TKC_O = true;
zen_faction_filter_0_UK3CB_TKM_O = true;
zen_faction_filter_0_UK3CB_TKP_O = true;
zen_faction_filter_1_BLU_CTRG_F = true;
zen_faction_filter_1_BLU_F = true;
zen_faction_filter_1_BLU_G_F = true;
zen_faction_filter_1_BLU_GEN_F = true;
zen_faction_filter_1_BLU_T_F = true;
zen_faction_filter_1_BLU_W_F = true;
zen_faction_filter_1_gm_dk_army_win = true;
zen_faction_filter_1_gm_fc_dk = true;
zen_faction_filter_1_gm_fc_ge = true;
zen_faction_filter_1_gm_fc_ge_bgs = true;
zen_faction_filter_1_gm_ge_army_win = true;
zen_faction_filter_1_Redd_Vehicles = true;
zen_faction_filter_1_rhs_faction_socom = true;
zen_faction_filter_1_rhs_faction_usaf = true;
zen_faction_filter_1_rhs_faction_usarmy_d = true;
zen_faction_filter_1_rhs_faction_usarmy_wd = true;
zen_faction_filter_1_rhs_faction_usmc_d = true;
zen_faction_filter_1_rhs_faction_usmc_wd = true;
zen_faction_filter_1_rhs_faction_usn = true;
zen_faction_filter_1_rhsgref_faction_cdf_air_b = true;
zen_faction_filter_1_rhsgref_faction_cdf_ground_b = true;
zen_faction_filter_1_rhsgref_faction_cdf_ground_b_groups = true;
zen_faction_filter_1_rhsgref_faction_cdf_ng_b = true;
zen_faction_filter_1_rhsgref_faction_hidf = true;
zen_faction_filter_1_UK3CB_AAF_B = true;
zen_faction_filter_1_UK3CB_ADA_B = true;
zen_faction_filter_1_UK3CB_ADC_B = true;
zen_faction_filter_1_UK3CB_ADG_B = true;
zen_faction_filter_1_UK3CB_ADM_B = true;
zen_faction_filter_1_UK3CB_ADP_B = true;
zen_faction_filter_1_UK3CB_ADR_B = true;
zen_faction_filter_1_UK3CB_ANA_B = true;
zen_faction_filter_1_UK3CB_ANP_B = true;
zen_faction_filter_1_UK3CB_CCM_B = true;
zen_faction_filter_1_UK3CB_CHC_B = true;
zen_faction_filter_1_UK3CB_CHD_B = true;
zen_faction_filter_1_UK3CB_CHD_B_groups = true;
zen_faction_filter_1_UK3CB_CPD_B = true;
zen_faction_filter_1_UK3CB_CW_US_B_EARLY = true;
zen_faction_filter_1_UK3CB_CW_US_B_LATE = true;
zen_faction_filter_1_UK3CB_NAP_B = true;
zen_faction_filter_1_UK3CB_NAP_B_groups = true;
zen_faction_filter_1_UK3CB_TKA_B = true;
zen_faction_filter_1_UK3CB_TKC_B = true;
zen_faction_filter_1_UK3CB_TKM_B = true;
zen_faction_filter_1_UK3CB_TKP_B = true;
zen_faction_filter_1_UK3CB_UN_B = true;
zen_faction_filter_2_IND_C_F = true;
zen_faction_filter_2_IND_E_F = true;
zen_faction_filter_2_IND_F = true;
zen_faction_filter_2_IND_G_F = true;
zen_faction_filter_2_IND_L_F = true;
zen_faction_filter_2_rhsgref_faction_cdf_air = true;
zen_faction_filter_2_rhsgref_faction_cdf_ground = true;
zen_faction_filter_2_rhsgref_faction_cdf_ground_groups = true;
zen_faction_filter_2_rhsgref_faction_cdf_ng = true;
zen_faction_filter_2_rhsgref_faction_cdf_ng_groups = true;
zen_faction_filter_2_rhsgref_faction_chdkz_g = true;
zen_faction_filter_2_rhsgref_faction_chdkz_g_groups = true;
zen_faction_filter_2_rhsgref_faction_nationalist = true;
zen_faction_filter_2_rhsgref_faction_nationalist_groups = true;
zen_faction_filter_2_rhsgref_faction_tla_g = true;
zen_faction_filter_2_rhsgref_faction_un = true;
zen_faction_filter_2_rhssaf_faction_airforce = true;
zen_faction_filter_2_rhssaf_faction_army = true;
zen_faction_filter_2_rhssaf_faction_un = true;
zen_faction_filter_2_UK3CB_AAF_I = true;
zen_faction_filter_2_UK3CB_ADA_I = true;
zen_faction_filter_2_UK3CB_ADC_I = true;
zen_faction_filter_2_UK3CB_ADE_I = true;
zen_faction_filter_2_UK3CB_ADG_I = true;
zen_faction_filter_2_UK3CB_ADM_I = true;
zen_faction_filter_2_UK3CB_ADP_I = true;
zen_faction_filter_2_UK3CB_ADR_I = true;
zen_faction_filter_2_UK3CB_CCM_I = true;
zen_faction_filter_2_UK3CB_CHC_I = true;
zen_faction_filter_2_UK3CB_CHD_I = true;
zen_faction_filter_2_UK3CB_CHD_I_groups = true;
zen_faction_filter_2_UK3CB_CPD_I = true;
zen_faction_filter_2_UK3CB_NAP_I = true;
zen_faction_filter_2_UK3CB_NAP_I_groups = true;
zen_faction_filter_2_UK3CB_TKA_I = true;
zen_faction_filter_2_UK3CB_TKC_I = true;
zen_faction_filter_2_UK3CB_TKM_I = true;
zen_faction_filter_2_UK3CB_TKP_I = true;
zen_faction_filter_2_UK3CB_UN_I = true;
zen_faction_filter_3_CIV_F = true;
zen_faction_filter_3_CIV_IDAP_F = true;
zen_faction_filter_3_EdCat_jbad_vehicles = true;
zen_faction_filter_3_gm_fc_gc_civ = true;
zen_faction_filter_3_gm_fc_ge_civ = true;
zen_faction_filter_3_IND_L_F = true;
zen_faction_filter_3_UK3CB_ADC_C = true;
zen_faction_filter_3_UK3CB_CHC_C = true;
zen_faction_filter_3_UK3CB_TKC_C = true;

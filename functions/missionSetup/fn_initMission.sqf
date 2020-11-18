#include "component.hpp"

[] call grad_missionSetup_fnc_loadouts;
[] call grad_missionSetup_fnc_setMissionSettings;
[] call grad_missionSetup_fnc_createDiaryRecords;
[] call grad_missionSetup_fnc_intro;
[] call grad_missionSetup_fnc_initPlayableAI;
[] call grad_radiosettings_fnc_setRadioSettings;
[] call grad_groupsettings_fnc_setGroupSettings;

if (hasInterface) then {
    [] call GRAD_radiosettings_fnc_activateSettings;
    [] call GRAD_events_fnc_addBleedoutPFH;
};

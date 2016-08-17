_selectedFactionIndex = "factionselector" call BIS_fnc_getParamValue;
_factions = [
    "CSAT",
    "Eastern_European_Armed_Force",
    "Russia_VDV",
    "Russia_VV",
    "FIA",
    "Insurgents_Eastern_Europe",
    "Middle_East_Armed_Force",
    "Insurgents_Middle_East",
    "Terrorists_Middle_East",
    "African_State_Defense_Force",
    "Insurgents_Africa",
    "Pirates_Africa"
];
GRAD_Loadout_Chosen_Prefix = _factions select _selectedFactionIndex;

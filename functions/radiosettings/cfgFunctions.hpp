class GRAD_radiosettings {
    class radiosettings {
        class activateSettings {
            description = "Activates settings on current radios.";
        };
        class createChannelMarkers {
            description = "Creates markers on map for each channel that has a name.";
        };
        class extractChannelNames {
            description = "Extracts channel names from settings";
        };
        class extractFrequencies {
            description = "Extracts frequencies from settings";
        };
        class getLoadoutRadios {
            description = "Gets radios that are defined in applicable grad-loadout.";
        };
        class getUserSettings {
            description = "Gets radio settings defined by user in USERSCRIPTS.";
        };
        class setDefaultRadios {
            description = "Sets TFAR default radios based on grad-loadout.";
        };
        class setTFARSettings {
            postInit = 1;
            description = "Sets TFAR settings as early as possible.";
        };
    };
};

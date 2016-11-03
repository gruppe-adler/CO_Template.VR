class GRAD_radiosettings {
    class radiosettings {
        class getLoadoutRadios {
            description = "Gets radios that are defined in applicable grad-loadout.";
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

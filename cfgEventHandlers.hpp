class Extended_Init_EventHandlers  {
    class CAManBase {
        class grad_template_loadoutInit {
            init = "params ['_u']; if (!(isPlayer _u) && {local _u}) then {[_u] call GRAD_Loadout_fnc_doLoadoutForUnit};";
        };
    };

    class ModuleCurator_F {
        class grad_template_curatorInit {
            init = "_this call grad_events_fnc_addCuratorEHs";
        };
    };
};

class Extended_Local_EventHandlers {
    class CAManBase {
        class grad_template_unitLocality {
            local = "_this call grad_events_fnc_onUnitLocalityChanged"´;
        };
    };
};

class Extended_PreInit_EventHandlers {
    class grad_template_preInit {
        serverInit = "call compile preprocessFileLineNumbers 'XEH_preServerInit.sqf'";
    };
};

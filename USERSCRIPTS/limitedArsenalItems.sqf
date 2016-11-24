//WHITELIST FÜR EINGESCHRÄNKTES VIRTUELLES ARSENAL =============================
_backpacks = [

];

_items = [

];

_magazines = [

];

_weapons = [

];


//NICHT EDITIEREN ==============================================================
private ["_classBackpacks", "_classItems", "_classMagazines", "_classWeapons"];
switch (typeOf player) do {
//==============================================================================


//KLASSENSPEZIFISCHE WHITELIST =================================================
    //Rifleman
    case ("B_Soldier_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Asst. Autorifleman
    case ("B_soldier_AAR_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Asst. Gunner (HMG/GMG)
    case ("B_support_AMG_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Asst. Missile Specialist (AA)
    case ("B_soldier_AAA_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Asst. Missile Specialist (AT)
    case ("B_soldier_AAT_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Autorifleman
    case ("B_soldier_AR_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Combat Life Saver
    case ("B_medic_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Explosive Specialist
    case ("B_soldier_exp_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Grenadier
    case ("B_Soldier_GL_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Heavy Gunner
    case ("B_HeavyGunner_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Marksman
    case ("B_soldier_M_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Missile Specialist (AA)
    case ("B_soldier_AA_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Missile Specialist (AT)
    case ("B_soldier_AT_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Repair Specialist
    case ("B_soldier_repair_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Rifleman (AT)
    case ("B_soldier_LAT_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Squad Leader
    case ("B_Soldier_SL_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };

    //Team Leader
    case ("B_Soldier_TL_F"): {
        _classBackpacks = [

        ];

        _classItems = [

        ];

        _classMagazines = [

        ];

        _classWeapons = [

        ];
    };




//AB HIER NICHT EDITIEREN ======================================================
    default {_classBackpacks = []; _classItems = []; _classMagazines = []; _classWeapons = []};
};
[_backpacks+_classBackpacks, _items+_classItems, _magazines+_classMagazines, _weapons+_classWeapons]

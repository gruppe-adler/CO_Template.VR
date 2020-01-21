#define GRAD_FACTIONS_MEDICITEMS_INF_LIST \
LIST_4("ACE_packingBandage"), \
LIST_4("ACE_elasticBandage"), \
LIST_4("ACE_quikclot"), \
LIST_4("ACE_tourniquet"), \
LIST_2("ACE_morphine"), \
LIST_2("ACE_epinephrine"), \
LIST_4("ACE_splint")


#define GRAD_FACTIONS_MEDICITEMS_CFR \
addItemsToUniform[] = { \
    "ACE_surgicalKit" \
}; \
addItemsToBackpack[] = { \
    LIST_10("ACE_elasticBandage"), \
    LIST_10("ACE_packingBandage"), \
    LIST_10("ACE_quikclot"), \
    LIST_8("ACE_tourniquet"), \
    LIST_8("ACE_morphine"), \
    LIST_8("ACE_epinephrine") \
};



#define GRAD_FACTIONS_MEDICITEMS_SQ \
addItemsToUniform[] = { \
    "ACE_surgicalKit" \
}; \
addItemsToBackpack[] = { \
    LIST_2("ACE_salineIV"), \
    LIST_10("ACE_salineIV_500"), \
    LIST_20("ACE_elasticBandage"), \
    LIST_20("ACE_packingBandage"), \
    LIST_20("ACE_quikclot"), \
    LIST_15("ACE_tourniquet"), \
    LIST_20("ACE_morphine"), \
    LIST_20("ACE_epinephrine") \
};



#define GRAD_FACTIONS_MEDICITEMS_PT \
addItemsToUniform[] = { \
    "ACE_surgicalKit", \
}; \
addItemsToBackpack[] = { \
    LIST_4("ACE_salineIV"), \
    LIST_8("ACE_salineIV_500"), \
    LIST_20("ACE_elasticBandage"), \
    LIST_20("ACE_packingBandage"), \
    LIST_20("ACE_quikclot"), \
    LIST_8("ACE_tourniquet"), \
    LIST_25("ACE_morphine"), \
    LIST_25("ACE_epinephrine"), \
    LIST_16("ACE_splint") \
};

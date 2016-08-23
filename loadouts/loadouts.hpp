#include ".\list_macros.hpp"
#define FACTIONIZE(var) class O_##var: B_##var {}; class I_##var: B_##var {};

class Loadouts {
    baseDelay = 1;
    handleRadios = 1;

    #include "BW.hpp"
    #include "US.hpp"
};

/*  Checks if weapon optic is Russian
*
*   Params:
*   0:  classname of optic (string)
*
*   Returns:
*   is Russian (bool)
*/


params ["_optic"];

_isRussian = (getNumber (configfile >> "CfgWeapons" >> "rhs_weap_ak74m" >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" >> _optic) == 1);
_isRussian

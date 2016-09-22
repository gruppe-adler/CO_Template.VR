/*  Loads gear array from profileNamespace and broadcasts
*
*/

if (!isServer) exitWith {};

_gearArray = profileNamespace getVariable ["mcd_coTemplate_customGearArray", nil];
if (isNil "_gearArray") then {
  profileNamespace setVariable ["mcd_coTemplate_customGearArray", []];
  saveProfileNamespace;
};

mcd_coTemplate_customGearArray = profileNamespace getVariable ["mcd_coTemplate_customGearArray", []];
publicVariable "mcd_coTemplate_customGearArray";

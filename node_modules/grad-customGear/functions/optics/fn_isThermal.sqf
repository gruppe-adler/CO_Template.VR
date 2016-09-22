/*  Checks visionmodes of weapon optic for thermal
*
*   Params:
*   0:  classname of optic (string)
*
*   Returns:
*   optic has thermal mode (bool)
*/

params ["_optic"];

_opticModes = "true" configClasses (configFile >> "CfgWeapons" >> _optic >> "ItemInfo" >> "OpticsModes");
_isThermal = false;
{
  _visionModes = getArray (_x >> "visionMode");
  if ("Ti" in _visionModes) exitWith {_isThermal = true};
} forEach _opticModes;

_isThermal

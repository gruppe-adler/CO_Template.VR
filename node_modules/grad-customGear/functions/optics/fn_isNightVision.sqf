/*  Checks visionmodes of weapon optic for nightvision
*
*   Params:
*   0:  classname of optic (string)
*
*   Returns:
*   optic has nightvision mode (bool)
*/

params ["_optic"];

_opticModes = "true" configClasses (configFile >> "CfgWeapons" >> _optic >> "ItemInfo" >> "OpticsModes");
_isNightVision = false;
{
  _visionModes = getArray (_x >> "visionMode");
  if ("NVG" in _visionModes) exitWith {_isNightVision = true};
} forEach _opticModes;

_isNightVision

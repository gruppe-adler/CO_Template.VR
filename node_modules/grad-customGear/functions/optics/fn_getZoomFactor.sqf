/*  Reads maximum zoom factor of weapon optic from config
*
*   Params:
*   0:  classname of optic (string)
*
*   Returns:
*   zoom factor (number)
*/

params ["_optic"];

_opticModes = "true" configClasses (configFile >> "CfgWeapons" >> _optic >> "ItemInfo" >> "OpticsModes");
_opticsZoomMin = 1000;
{
  if (isNumber (_x >> "opticsZoomMin")) then {
    if (getNumber (_x >> "opticsZoomMin") < _opticsZoomMin) then {
      _opticsZoomMin = getNumber (_x >> "opticsZoomMin");
    };
  };

  if (isText (_x >> "opticsZoomMin")) then {
    if ((call compile (getText (_x >> "opticsZoomMin"))) < _opticsZoomMin) then {
      _opticsZoomMin = call compile (getText (_x >> "opticsZoomMin"));
    };
  };
} forEach _opticModes;

if (_opticsZoomMin == 1000) then {
  _opticsZoomMin = -0.25;
};

_zoomFactor = 0.25/_opticsZoomMin;
_zoomFactor

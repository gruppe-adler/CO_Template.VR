/*  Gets display name of class from either CfgWeapons or CfgGlasses
*
*   Params:
*   0:  classname (string)
*
*   Returns:
*   displayname (string)
*/

params ["_class"];

_displayName = "";

if (_displayName == "") then {
  _displayName = getText (configfile >> "CfgWeapons" >> _class >> "displayName");
};

if (_displayName == "") then {
  _displayName = getText (configfile >> "CfgGlasses" >> _class >> "displayName");
};

_displayName

#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_conview_fnc_getFactions

Description: Find all available Factions.

Parameters: [(Optional:FactionName)]

            Optional: FactionName - Find FactionName in Config

Returns: Array with FactionNames / Bool

Examples:

            _factionlist = [] call GRAD_conview_fnc_getFactions;
            _isFactionavailable = ["OPF_F"] call GRAD_conview_fnc_getFactions;
Author: Fry

-------------------------------------------------------------------------------------------------- */
private ["_holder_arr","_output","_config_path","_factions","_animals","_x"];
params ["_factionname"];
_holder_arr = [];
If(isNil "_factionname")then{_factionname = ""};
_output = If(isNil "_factionname")then{[]}else{false};

_config_path = (configFile >> "CfgFactionClasses");
_factions = "((getNumber (_x >> 'side') > -1) && (getNumber (_x >> 'side') <= 3) && (getText (_x >> 'displayName') != ''))" configClasses (_config_path);
_animals = "(configName _x == 'Animals')" configClasses (_config_path);

If(count _factions > 0)then
{
  {
    _holder_arr pushBack (configName _x);
  }forEach _factions;
  If(count _animals > 0)then{_holder_arr pushBack (configName (_animals select 0));};
  switch(true)do
  {
    case (_factionname != ""):{_output = (_factionname In _holder_arr);};
    case (_factionname == ""):{_output = _holder_arr;};
  }
};
_output

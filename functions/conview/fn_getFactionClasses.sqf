#include "script_component.hpp"

/* -----------------------------------------------------------------------------------------------
Function: GRAD_conview_fnc_getFactionClasses

Description: Find all Classnames of given Faction.

Parameters: [FactionName]



Returns: Array with sorted Classnames
editorSubcategory = "EdSubcat_Terrestrial";
Examples:
          _faction_classes = ["OPF_F"] call GRAD_conview_fnc_getFactionClasses;
Author: Fry
-------------------------------------------------------------------------------------------------- */
private ["_output","_fact_is","_config_path","_sel_classes","_men_normal","_men_urban","_men_specops","_men_story","_men_vr","_cars_all","_artillery",
         "_boats","_drones","_antiair","_planes","_turrets","_helicopters","_tanks","_apcs","_submarine","_setup_arr","_value","_class_dir","_config_category",
         "_bool_string","_class_arr","_men_african","_men_asien","_men_europe","_animals"];
params ["_factionname"];

_output = [];
_setup_arr = [];
_fact_is = [_factionname] call FNC_SMC(conview,getFactions);

If(_fact_is)then
{
  _men_normal = ["men_normal",[]];_men_urban = ["men_urban",[]];_men_specops = ["men_specops",[]];_men_story = ["men_story",[]];_men_vr = ["men_vr",[]];
  _cars_all = ["cars",[]];_artillery = ["artillery",[]];_boats = ["boats",[]];_drones = ["drones",[]];_antiair = ["anti_air",[]];_planes = ["planes",[]];
  _turrets = ["turrets",[]];_helicopters = ["helicopters",[]];_tanks = ["tanks",[]];_apcs = ["apc",[]];_submarine = ["submarine",[]];
  _men_african = ["men_african",[]],_men_asien = ["men_asien",[]];_men_europe = ["men_europe",[]];_animals = ["animals",[]];

 switch(_factionname)do
 {
    case "Animals":{_setup_arr = [[_animals,'EdSubcat_Terrestrial']];};
    default {
      _setup_arr = [
                    [_men_normal,'EdSubcat_Personnel'],[_men_urban,'EdSubcat_Personnel_Camo_Urban'],[_men_specops,'EdSubcat_Personnel_SpecialForces'],
                    [_men_african,'EdSubcat_Personnel_African'],[_men_asien,'EdSubcat_Personnel_Asian'],[_men_europe,'EdSubcat_Personnel_European'],
                    [_men_story,'EdSubcat_Personnel_Story'],[_men_vr,'EdSubcat_Personnel_VR'],[_cars_all,'EdSubcat_Cars'],[_artillery,'EdSubcat_Artillery'],
                    [_boats,'EdSubcat_Boats'],[_drones,'EdSubcat_Drones'],[_antiair,'EdSubcat_AAs'],[_planes,'EdSubcat_Planes'],[_turrets,'EdSubcat_Turrets'],
                    [_helicopters,'EdSubcat_Helicopters'],[_tanks,'EdSubcat_Tanks'],[_apcs,'EdSubcat_APCs'],[_submarine,'EdSubcat_Submersibles']
                   ];
            };
 };
  _config_path = (configFile >> "CfgVehicles");

for "_i" from 0 to ((count _setup_arr) - 1) do
{
  _sel_classes = [];
  _class_arr = [];
  _bool_string = "";
  _value = (_setup_arr select _i);
  _class_dir = (_value select 0);
  _config_category = (_value select 1);

  switch(_class_dir select 0)do
  {
    case "animals":{_bool_string = "((getText (_x >> 'vehicleClass') == 'Animals') && (getNumber (_x >> 'scope') >= 1) && (getText (_x >> 'editorSubcategory') == _config_category))";};
    default {_bool_string = "((getText (_x >> 'faction') == _factionname) && (getNumber (_x >> 'scope') >= 2) && (getText (_x >> 'editorSubcategory') == _config_category))";};
  };

  _sel_classes = _bool_string configClasses (_config_path);

  If(count _sel_classes > 0)then
  {
    {
      switch(_class_dir select 0)do
      {
        case "turrets":{
                         If(getText(_x >> "vehicleClass") != "Support")then{_class_arr pushBack (configName _x);};
                       };
        default {_class_arr pushBack (configName _x);};
      };

    }forEach _sel_classes;
    _class_dir set [1,_class_arr];
    _output pushBack _class_dir;
  };
  sleep 0.1;
};

}else{LOG_ERR("GRAD_conview_fnc_getFactionClasses: FACTION NOT FOUND")};

_output

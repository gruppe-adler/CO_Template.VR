/*  Registers all playable groups with predefined groupnames
*
*/

private ["_groupNames"];

_findPlayable = {
  params ["_array", "_side"];
  {
    if (side _x == _side) then {
      if ((leader _x) in playableUnits) then {_array pushBack _x};
    };
  } forEach allGroups;
};

groupsBlufor = [];
groupsOpfor = [];
groupsIndep = [];
[groupsBlufor, WEST] call _findPlayable;
[groupsOpfor, EAST] call _findPlayable;
[groupsIndep, INDEPENDENT] call _findPlayable;


_groupNames = [];
if (["USERSCRIPTS\groupNames.sqf"] call KK_fnc_fileExists) then {
  _groupNames = call compile preprocessFileLineNumbers "USERSCRIPTS\groupNames.sqf";
};


{
  for [{_i=0}, {_i < (count _groupNames min count _x)}, {_i=_i+1}] do {
    _name = _groupNames select _i;
    _group = _x select _i;
    _leader = leader _group;
    _data = [nil, _name, false];
    ["RegisterGroup", [_group, _leader, _data]] call BIS_fnc_dynamicGroups;
  };
} forEach [groupsBlufor, groupsOpfor, groupsIndep];

/*  Sets group names and radio channels
*
*/


if (isServer) then {
  private ["_groupSettings"];

  if (hasInterface && !(["USERSCRIPTS\groupSettings.sqf"] call KK_fnc_fileExists)) exitWith {};
  _groupSettings = call compile preprocessFileLineNumbers "USERSCRIPTS\groupSettings.sqf";
  if (isNil "_groupSettings") then {_groupSettings = []};

  //find groups
  _findPlayable = {
    params ["_array", "_side"];
    {
      if (side _x == _side) then {
        if ((leader _x) in playableUnits) then {
          _x setVariable ["grad_groupIndex", count _array, true];
          _array pushBack _x;
        };
      };
    } forEach allGroups;
  };
  groupsBlufor = [];
  groupsOpfor = [];
  groupsIndep = [];
  [groupsBlufor, WEST] call _findPlayable;
  [groupsOpfor, EAST] call _findPlayable;
  [groupsIndep, INDEPENDENT] call _findPlayable;

  //set names
  {
    for [{_i=0}, {_i < (count _groupSettings min count _x)}, {_i=_i+1}] do {
      _name = (_groupSettings select _i) select 0;
      _group = _x select _i;
      _leader = leader _group;
      _data = [nil, _name, false];
      ["RegisterGroup", [_group, _leader, _data]] call BIS_fnc_dynamicGroups;
    };
  } forEach [groupsBlufor, groupsOpfor, groupsIndep];
};

if (hasInterface) then {
  if !(["USERSCRIPTS\groupSettings.sqf"] call KK_fnc_fileExists) exitWith {};
  _groupSettings = call compile preprocessFileLineNumbers "USERSCRIPTS\groupSettings.sqf";

  [{_groupIndex = (group player) getVariable "grad_groupIndex"; !isNil "_groupIndex" && !(missionNamespace getVariable ["TF_first_radio_request",true])}, {
    params ["_groupSettings"];
    _i = (group player) getVariable ["grad_groupIndex", 0];

    if (count _groupSettings - 1 < _i) exitWith {};
    _mySettings = _groupSettings select _i;
    [(call TFAR_fnc_activeSwRadio), (_mySettings select 1)-1] call TFAR_fnc_setSwChannel;
    [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, (_mySettings select 2)-1] call TFAR_fnc_setLrChannel;
  }, [_groupSettings]] call CBA_fnc_waitUntilAndExecute;
};

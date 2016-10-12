private ["_settings"];
_shortRange = [];
_longRange = [];
_shortRangeChannels = [];
_longRangeChannels = [];


//get
if (hasInterface) then {
  if (["USERSCRIPTS\radioSettings.sqf"] call KK_fnc_fileExists) then {
    _settings = call compile preprocessFileLineNumbers "USERSCRIPTS\radioSettings.sqf";
  };
} else {
  _settings = call compile preprocessFileLineNumbers "USERSCRIPTS\radioSettings.sqf";
};

if (isNil "_settings") then {
  _settings = [[50,60,70,80,90,100,110,120],[30,31,32,33,34,35,36,37]];
};
_settings params ["_shortRangeSettings", "_longRangeSettings"];


//filter
{
  if (typeName _x == "ARRAY") then {
    _shortRangeChannels pushBack _x;
    _shortRange pushBack (_x select 0);
  } else {
    _shortRange pushBack _x;
  };
} forEach _shortRangeSettings;

{
  if (typeName _x == "ARRAY") then {
    _longRangeChannels pushBack _x;
    _longRange pushBack (_x select 0);
  } else {
    _longRange pushBack _x;
  };
} forEach _longRangeSettings;


//sanitize & convert
_shortRange = _shortRange apply {if (_x < 30 || _x > 512) then {30} else {_x}};
_longRange = _longRange apply {if (_x < 30 || _x > 87) then {30} else {_x}};
_shortRange = _shortRange apply {str _x};
_longRange = _longRange apply {str _x};


//set
tf_freq_west = [0,7,_shortRange,0,"_bluefor",-1,0,getplayerUID player,false];
tf_freq_east = [0,7,_shortRange,0,"_opfor",-1,0,getplayerUID player,false];
tf_freq_guer = [0,7,_shortRange,0,"_guer",-1,0,getplayerUID player,false];

tf_freq_west_lr = [0,7,_longRange,0,"_bluefor",-1,0,false];
tf_freq_east_lr = [0,7,_longRange,0,"_opfor",-1,0,false];
tf_freq_guer_lr = [0,7,_longRange,0,"_guer",-1,0,false];

if (hasInterface) then {
  [{player getvariable ["tf_handlers_set", false]}, {
    _activeLR = [] call TFAR_fnc_activeLrRadio;
    if (!isNil "_activeLR") then {
      _settings = switch (side player) do {
        case (WEST): {tf_freq_west_lr};
        case (EAST): {tf_freq_east_lr};
        case (INDEPENDENT): {tf_freq_guer_lr};
        default {tf_freq_west_lr};
      };
      [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, _settings] call TFAR_fnc_setLrSettings;
    };
  }, []] call CBA_fnc_waitUntilAndExecute;
};


//create markers (server only)
if (!isServer) exitWith {};
_allChannels = _longRangeChannels + _shortRangeChannels;
if (count _allChannels == 0) exitWith {};

_pos = [worldSize + 200, worldSize - 100, 0];
_marker = createMarker ["grad_radioMarker_headline", _pos];
_marker setMarkerType "mil_dot";
_marker setMarkerColor "COLORWEST";
_marker setMarkerText "FUNK:";

_mcd_fnc_radioMarker = {
  params ["_id", "_args"];
  _args params ["_freq", "_desc"];

  _name = format ["grad_radioMarker_%1", _id];
  _pos = [worldSize + 200, worldSize - 450, 0] vectorAdd [0,_id * (-350), 0];
  _marker = createMarker [_name, _pos];
  _marker setMarkerType "mil_dot";
  _marker setMarkerColor "COLORBLACK";
  _marker setMarkerText format ["%1: %2", _desc, _freq];
};

{[_forEachIndex, _x] call _mcd_fnc_radioMarker} forEach _allChannels;

if (hasInterface) then {
  if (["USERSCRIPTS\userInit.sqf"] call KK_fnc_fileExists) then {
    [] execVM "USERSCRIPTS\userInit.sqf";
  };
} else {
  [] execVM "USERSCRIPTS\userInit.sqf";
};

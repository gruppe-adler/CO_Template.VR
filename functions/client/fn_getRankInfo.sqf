If(!hasInterface) exitWith {};
#include "script_component.hpp"
private ["_output"];

// Check the Rank of Soldier for flow of Informations (Chain of Command)
//missionNamespace setVariable [VAR_SMA(allowed_informations),false,false];
_output = -1;
switch("chainofcommand" call FNC_BIS(getParamValue))do
{
  case 0:{missionNamespace setVariable [VAR_SMA(allowed_informations),true,false];};
  case 1:{_output = rankId player;If(_output >= 1)then{missionNamespace setVariable [VAR_SMA(allowed_informations),true,false];};};
  case 2:{_output = rankId player;If(_output >= 2)then{missionNamespace setVariable [VAR_SMA(allowed_informations),true,false];};};
  case 3:{_output = rankId player;If(_output >= 3)then{missionNamespace setVariable [VAR_SMA(allowed_informations),true,false];};};
  case 4:{_output = rankId player;If(_output >= 4)then{missionNamespace setVariable [VAR_SMA(allowed_informations),true,false];};};
  case 5:{_output = rankId player;If(_output >= 5)then{missionNamespace setVariable [VAR_SMA(allowed_informations),true,false];};};
  case 6:{_output = rankId player;If(_output == 6)then{missionNamespace setVariable [VAR_SMA(allowed_informations),true,false];};};
};
_output

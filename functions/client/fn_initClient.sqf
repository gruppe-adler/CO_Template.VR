If(!hasInterface) exitWith {};
#include "script_component.hpp"


//Function to init a Client


//Get Rank of Soldier
[] call FNC_SMC(client,getRankInfo);

//Add Client Self-Interaction Menu SatPhone
If(missionNamespace getVariable [VAR_SMA(allowed_informations),false])then
{
 [0,true] call FNC_SMC(client,setClientAction); // Add ACE Self-InteractionMenue
};

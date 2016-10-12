If(isMultiplayer)then{If(!isDedicated) exitWith {};};
#include "script_component.hpp"

If(isMultiplayer)then{If(!isDedicated) exitWith {};};
#include "script_component.hpp"


/* -----------------------------------------------------------------------------------------------
Function: GRAD_dial_fnc_SatPhone

Description: Send SatPhone Information to Client!

Parameters: ["STRING"]

            STRING - The Text you want to show in Satphonedisplay
            ARRAY - Array with 2 Strings
                    [StringtableTXT,EMBEDDED_TXT]

                    ["My Name is %1","Fry"] => "My Name is Fry"

            DEDICATED SERVER ONLY!
            JIP Execution

Returns: BOOL

Examples:
          _setText = ["STR_Mission_txt2"] call GRAD_dial_fnc_SatPhone;
          _setText = ["Hello World!"] call GRAD_dial_fnc_SatPhone;
          _setText = [["STR_Mission_txt2","Hello World"]] call GRAD_dial_fnc_SatPhone;

Author: Fry
-------------------------------------------------------------------------------------------------- */
private ["_jip_id","_new_jip_id"];
params ["_text"];

_jip_id = missionNamespace getVariable ["grad_jiptxt_id",true];
If(isMultiplayer)then
{
  _new_jip_id = [_text] remoteExec ["GRAD_dial_fnc_getSatPhoneData",-2,_jip_id];
  missionNamespace setVariable ["grad_jiptxt_id",_new_jip_id,false];
}else{
       [_text] spawn FNC_SMI(getSatPhoneData);
     };

true

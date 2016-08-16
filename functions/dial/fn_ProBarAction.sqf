If(!hasInterface) exitWith {};

//Function to Control Progress Bar

private ["_display"];
disableSerialization;
_display = _this select 0;

_ctrl_pbar_text = _display displayCtrl 48449;
_ctrl_pbar_Probar = _display displayCtrl 48448;


_ctrl_pbar_text ctrlSetText (missionNamespace getVariable "grad_pbar_txt");
_ctrl_pbar_Probar  progressSetPosition (missionNamespace getVariable "grad_pbar_state");
_ctrl_pbar_Probar ctrlSetTextColor (missionNamespace getVariable "grad_pbar_cstate");

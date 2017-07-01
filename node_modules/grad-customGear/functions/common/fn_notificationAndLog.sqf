#include "..\..\component.hpp"

params ["_text",["_title","GRAD Custom Gear"]];

["grad_customgear_notification",[_title,_text]] call bis_fnc_showNotification;
INFO_2("%1 - %2",_title,_text);

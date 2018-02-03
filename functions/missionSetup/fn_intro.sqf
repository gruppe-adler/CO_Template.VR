/*  Displays Gruppe Adler logo and mission name at start of game
*
*   executed on players via init.sqf
*/

#include "component.hpp"

if !(hasInterface) exitWith {};

private _show = [missionConfigFile >> "missionSettings","showLogo",1] call BIS_fnc_returnConfigEntry;
if (_show isEqualTo 0) exitWith {};

["CBA_loadingScreenDone", {
    _waitCondition = {time > (_this + 3)};
    _show = [missionConfigFile >> "missionSettings","showLogo",1] call BIS_fnc_returnConfigEntry;

    if (_show isEqualType "") then {
        _waitCondition = compile _show;
        _show = 1;
    };
    if (_show != 1) exitWith {};

    [_waitCondition,{
        _missionName = getMissionConfigValue ["onLoadName", "NAME NOT FOUND"];
        _text = format ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\gruppe-adler.paa'/><br/><t size='.9' color='#FFFFFF'>%1</t>", _missionName];
        [_text,0,0,2,2] spawn BIS_fnc_dynamicText;
    },time] call CBA_fnc_waitUntilAndExecute;

}] call CBA_fnc_addEventHandler;

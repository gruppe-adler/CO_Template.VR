/*  Displays Gruppe Adler logo and mission name at start of game
*
*   executed on players via init.sqf
*/

waitUntil {time > 3};
_missionName = getMissionConfigValue ["onLoadName", "NAME NOT FOUND"];
_text = format ["<img size= '6' style='vertical-align:middle' shadow='false' image='data\gruppe-adler.paa'/><br/><t size='.9' color='#FFFFFF'>%1</t>", _missionName];
[_text,0,0,2,2] spawn BIS_fnc_dynamicText;

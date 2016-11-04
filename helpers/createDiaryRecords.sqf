#include "..\USERSCRIPTS\briefing.sqf"

//create in reverse order --> correct order in briefing
if (_einsatzunterstuetzung != "") then {
    player createDiaryRecord ["Diary", ["Einsatzunterstützung", _einsatzunterstuetzung]];
};

if (_durchfuehrung != "") then {
    player createDiaryRecord ["Diary", ["Durchführung", _durchfuehrung]];
};

if (_auftrag != "") then {
    player createDiaryRecord ["Diary", ["Auftrag", _auftrag]];
};

if (_lage != "") then {
    player createDiaryRecord ["Diary", ["Lage", _lage]];
};

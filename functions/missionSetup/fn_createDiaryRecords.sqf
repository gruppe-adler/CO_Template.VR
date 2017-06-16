#include "component.hpp"

if (!hasInterface) exitWith {};

#include "..\..\USER\briefing.sqf"

//create in reverse order --> correct order in briefing
if !(_einsatzunterstuetzung in ["","verfügbare Einsatzunterstützung"]) then {
    player createDiaryRecord ["Diary", ["Einsatzunterstützung", _einsatzunterstuetzung]];
};

if !(_durchfuehrung in ["","Durchführung der Mission"]) then {
    player createDiaryRecord ["Diary", ["Durchführung", _durchfuehrung]];
};

if !(_auftrag in ["","Auftragsbeschreibung"]) then {
    player createDiaryRecord ["Diary", ["Auftrag", _auftrag]];
};

if !(_lage in ["","Lagebeschreibung"]) then {
    player createDiaryRecord ["Diary", ["Lage", _lage]];
};

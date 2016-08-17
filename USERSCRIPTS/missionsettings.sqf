//ÜBER DIE MISSION =============================================================
author = "Name für Gruppe Adler";                                               //Missionsersteller (Du)
onLoadName = "COOP TEMPLATE";                                                   //Name der Mission
onLoadMission = "";                                                             //Beschreibung der Mission (wird im Ladebildschirm unterhalb des Ladebildes angezeigt)
loadScreen = "data\loadpic.paa";                                                //Ladebild


//BRIEFING =====================================================================
                                                                                //Briefingeinträge - Wenn Variable leeren String enthält (Bsp.: _lage = ""), wird dieser Eintrag nicht erstellt.
_lage =                                                                         //Geschehnisse bis jetzt, Feindlage (Stärke, Verhalten, Absicht), eigene Lage (Stärke, Position, Absicht)
"Lagebeschreibung";

_auftrag =                                                                      //Darlegung des Missionszieles
"Auftragsbeschreibung";

_durchfuehrung =                                                                //Wie soll das Missionsziel erreicht werden? Truppeneinteilung, Sicherung, Gefechtsaufklärung
"Durchführung der Mission";

_einsatzunterstuetzung =                                                        //Informationen über unterstützende Einheiten (Luft, Artillerie, etc.) und Nachschub / Versorgungsmöglichkeiten
"verfügbare Einsatzunterstützung";



//ALLGEMEINE EINSTELLUNGEN =====================================================
_timeMultiplication = 1;                                                        //Zeit-Multiplikator - Eine Spiel-Stunde dauert (eine Echtzeit-Stunde * _timeMultiplication) - mögliche Werte: Zahl > 0



//AI CACHING ===================================================================
_useCaching = true;                                                             //F3 Caching - wenn ausgeschaltet, können alle anderen Caching-Einstellungen vernachlässigt werden - mögliche Werte: true, false
                                                                                //Caching bringt bessere Performance bei vielen KI-Einheiten, die nicht in direktem Kontakt mit den Spielern stehen. Einheiten werden "ausgeblendet".
                                                                                //Caching macht nur Sinn, wenn ohne Headless Client gespielt wird, da Einheiten auf dem HC nicht gecached werden können.

_cachingDebug = 1;                                                              //Caching Debug Mode - mögliche Werte: 0,1 (0 - off, 1 - on)

_cachingRange = 1200;                                                           //Abstand zu Spielereinheiten, nach der KI-Einheiten gecached werden können - mögliche Werte: Zahl > 0
                                                                                //Achtung: Gecachte Einheiten sind für die Spieler nicht sichtbar! chachingRange muss also größer als die übliche Sichtweite sein, aber klein genug für gute Performance.
                                                                                // --> In städtischen Missionen kann der Wert kleiner sein / In Missionen in offenem Gelände muss der Wert größer sein.

_cachingAgressiveness = 2;                                                      //Welche Einheiten gecached werden:
                                                                                // 1 - nur nicht-Gruppenführer und nicht-Fahrer (dies ist die richtige Einstellung für Zeus-Missionen, da auch gecachte Gruppen kontrollierbar bleiben!)
                                                                                // 2 - alle statischen Einheiten exklusive Fahrer (dies ist die richtige Einstellung für fast alle anderen Missionen)
                                                                                // 3 - alle Einheiten inklusive Fahrer und Gruppenführer

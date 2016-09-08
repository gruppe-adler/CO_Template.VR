# CO_Template.Stratis
Gruppe Adler Coop Template

Ziel dieser Vorlage ist es, eine standardisierte Plattform für unsere Coop Missionen zu bieten und dem Missionsersteller den Großteil der Voreinstellungsarbeit abzunehmen.

Alle vom Benutzer anzupassenden Dateien befinden sich im *USERSCRIPTS* Ordner und können mit jedem beliebigen Texteditor geöffnet und bearbeitet werden.
Zusätzlich zu dieser Anleitung sind die einzustellenden Parameter auch in den Dateien selbst noch einmal erklärt.

**Inhalt**
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Installation](#installation)
  - [Maps](#maps)
- [Updates](#updates)
- [missionsettings.sqf](#missionsettingssqf)
  - [Ueber Die Mission](#ueber-die-mission)
  - [Briefing](#briefing)
  - [Allgemeine Einstellungen](#allgemeine-einstellungen)
  - [AI Caching](#ai-caching)
- [loadouts.sqf](#loadoutssqf)
  - [Eigene Loadouts](#eigene-loadouts)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Installation
1. Neueste Version als .zip von [Github](https://github.com/gruppe-adler/CO_Template.Stratis/releases) herunterladen
2. Inhalt nach `Dokumente\Arma 3 - Other Profiles\YOURPROFILENAME\mpmissions` extrahieren
3. Ordner umbenennen (z.B. für Sahrani: `CO_Template.Stratis` umbenennen zu `CO_MeineMission.Sara_dbe1`, siehe Unterpunkt "Maps")
4. Voreinstellungen in `USERSCRIPTS\missionsettings.sqf`festlegen

### Maps
| Map               | Suffix             |
|-------------------|--------------------|
| Altis             | Altis              |
| Chernarus         | Chernarus          |
| Chern. Sum.       | Chernarus_Summer   |
| Esseker           | Esseker            |
| PR Fata           | fata               |
| Podagorsk         | FDF_Isle1_a        |
| Ramahdi           | Intro              |
| Kunduz            | Kunduz             |
| Namalsk           | namalsk            |
| Porto             | Porto              |
| Proving Grounds   | ProvingGrounds_PMC |
| United Sahrani    | Sara_dbe1          |
| Shapur            | Shapur_BAF         |
| Stratis           | Stratis            |
| Sugar Lake        | SugarLake          |
| Takistan          | Takistan           |
| Utes              | utes               |
| Virtual Reality   | VR                 |
| VT5 Suomi Finland | vt5                |
| Bystrica          | Woodland_ACR       |
| Zargabad          | Zargabad           |

## Updates
Ab dem ersten Release werden alle Updates rückwärtskompatibel sein, sofern nicht ausdrücklich erwähnt. Missionen können wie folgt auf eine neuere Version des Templates aktualisiert werden:

1. Missionsordner umbenennen (z.B. *CO_myMission.Altis* --> *CO_myMission.Altis.Backup*)
2. neue Version des Templates herunterladen und umbenennen (z.B. *CO_myMission.Altis*)
3. die folgenden Dateien aus der alten Version (*CO_myMission.Altis.Backup*) in die neue Version (*CO_myMission.Altis*) kopieren und ggf. Existierende damit überschreiben:
  * *mission.sqm*
  * *USERSCRIPTS* (Ordner + Inhalt)

## missionsettings.sqf
In *USERSCRIPTS\missionsettings.sqf* sind die allgemeinen Missionseinstellungen definiert.

### Ueber Die Mission
Hier werden Missionsauthor, -name und -beschreibung, sowie das Vorschaubild für den Ladebildschirm festgelegt. Der Name der Mission wird beim Missionsstart erneut zusammen mit dem Gruppe-Adler Logo eingeblendet.
Im Parameter `loadScreen` kann der Pfad zu einem selbsterstellten Ladebild angegeben werden. Für die Auflösung des Bildes sind 512x256 oder 1024x512 Pixel zu empfehlen.

### Briefing
Das Template erstellt automatisch die hier angegebenen Einträge als Briefing für alle Spieler. Soll ein Eintrag nicht erstellt werden, muss der Text zwischen den jeweiligen Anführungszeichen gelöscht werden. Beispiel: `_auftrag = "";`.

### Allgemeine Einstellungen
`_timeMultiplication` stellt den Geschwindigkeitsfaktor der in-Spiel Zeit ein. Betroffen sind hiervon nur die Umweltereignisse wie Tag-/Nachwechsel oder Wetter.  
`_civTraffic` stellt den zufällig generierten Zivilverkehr ein bzw. aus. Ausserhalb der Sichtweite der Spieler spawnen zivile KI-Fahrzeuge mit einer zufällige Fahrtroute. Nach einer gewissen Zeit despawnen sie wieder ausserhalb der Sichtweite der Spieler.

### AI Caching
Im Template ist ein KI-Caching System enthalten, was über diese Parameter ein-/ausgeschaltet und eingestellt werden kann. Die voreingestellten Werte werden nicht in jeder Mission sinnvoll sein und sollten angepasst werden.  
Caching bringt bessere Performance bei vielen KI-Einheiten, die nicht in direktem Kontakt mit den Spielern stehen. Diese werden vom System unsichtbar gemacht und nur noch unvollständig simuliert, um Leistung zu sparen. Caching macht nur Sinn, wenn ohne Headless Client gespielt wird, da Einheiten auf dem HC nicht gecached werden können.

## loadouts.sqf
In *USERSCRIPTS\loadouts.sqf* wird das Standardloadout für die Spieler eingestellt. Im Eintrag `_loadoutFaction` kann eine der folgenden Parteien ausgewählt werden:  
Beispiel: `_loadoutFaction = "USOCP";`.

| Kürzel      |  Camo                  |  Einheiten-Kategorie |
|-------------|------------------------|----------------------|
| "BWFleck"   | Bundeswehr Flecktarn   | NATO                 |
| "BWTrop"    | Bundeswehr Tropentarn  | NATO                 |
| "USOCP"     | US Army OCP            | NATO                 |
| "USUCP"     | US Army UCP            | NATO                 |
| "USMPT"     | US Marines MARPAT      | NATO                 |
| "RUFlora"   | RUS MSV Flora          | CSAT                 |

Um keine Loadouts zu vergeben, muss der Text zwischen den Anführungszeichen gelöscht werden.  
Beispiel: `_loadoutFaction = "";`.  

Um Standardloadouts zu erhalten müssen im Editor Vanillaeinheiten platziert werden, oder die vorplatzierten Einheiten genutzt werden. Dabei sind die folgenden Kategorien zu verwenden:  

* Blufor:         NATO >> Men
* Opfor:          CSAT >> Men
* Independent:    AAF >> Men

Von den angegebenen Kategorien haben die folgenden Einheiten ein Standardloadout:

| Englisch:                                  | Deutsch:                                           | Funktion:                               |
|--------------------------------------------|----------------------------------------------------|-----------------------------------------|
| Asst. Autorifleman                         | Zweiter Automatik Schütze                          | Munitionsträger für LMG                 |
| Asst. Gunner (HMG/GMG)                     | Zweiter Schütze (Mk30/GMG)                         | Munitionsträger für MMG                 |
| Asst. Missile Specialist (AA)              | Zweiter Raketenspezialist (Luftabwehr)             | Munitionsträger für Luftabwehrschütze   |
| Asst. Missile Specialist (AT)              | Zweiter Raketenspezialist (Panzerabwehr)           | Munitionsträger für Panzerabwehrschütze |
| Autorifleman                               | Automatik-Schütze                                  | LMG Schütze                             |
| Combat Life Saver                          | Sanitäter                                          | Sanitäter                               |
| Explosive Specialist                       | Sprengmeister                                      | Sprengmeister                           |
| Grenadier                                  | Grenadier                                          | Grenadier                               |
| Heavy Gunner                               | Schwerer Schütze                                   | MMG Schütze                             |
| Marksman                                   | Scharfschütze (nicht DLC)                          | Gruppenscharfschütze (DMR)              |
| Missile Specialist (AA)                    | Raketenspezialist (Luftabwehr)                     | Luftabwehrschütze                       |
| Missile Specialist (AT)                    | Raketenspezialist (Panzerabwehr)                   | Panzerabwehrschütze                     |
| Repair Specialist                          | Reparaturspezialist                                | Reparaturspezialist                     |
| Rifleman                                   | Schütze                                            | Schütze                                 |
| Rifleman (AT)                              | Schütze (Panzerabwehr)                             | Schütze mit leichter AT-Waffe           |
| Squad Leader                               | Truppführer                                        | Truppführer                             |
| Team Leader                                | Teamleader                                         | Gruppenführer und Zugführer             |

Das bedeutet, um einen Sprengmeister mit US Army OCP Loadout als Spielerslot zur Verfügung zu stellen, platziere ich im Editor aus der Kategorie *NATO >> Men* einen *Explosive Specialist*, nachdem ich `_loadoutFaction = "USOCP";` festgelegt habe.  

### Eigene Loadouts
Eigene Loadouts können im Ordner *loadouts* festgelegt werden. Die Dokumentation zum Loadoutsystem gibt es unter [github/gruppe-adler/grad-loadout](https://github.com/gruppe-adler/grad-loadout). Neu erstellte Loadouts nehmen wir gerne ins Template auf, dann haben alle etwas davon.

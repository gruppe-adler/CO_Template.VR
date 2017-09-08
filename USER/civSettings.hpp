/*
*   Legt Einstellungen für grad-civs Zivilisten fest.
*   In der Klasse "userEquipment" können eigene Ausrüstungsgegenstände für die Zivilisten definiert werden.
*/

enableOnFoot = 0;                                                               // Zivilisten, die durch die Gegend laufen, einschalten (0/1)
enableInVehicles = 0;                                                           // Fahrzeugfahrende Zivilisten einschalten (0/1)

maxCivs = 60;                                                                   // maximale Anzahl an Zivilisten
spawnDistances[] = {1000,4500};                                                 // Mindest- und Maximalabstand zu allen Spielern, in denen Zivilisten spawnen
backpackProbability = 0.15;                                                     // Wahrscheinlichkeit, dass Zivilisten mit Backpacks spawnen (0-1)
exitOn = "";                                                                    // Skriptbedingung, ab der keine weiteren Zivilisten mehr spawnen
onSpawn = "";                                                                   // Code, der ausgeführt wird, wenn ein Zivilist spawnt
onHeldUp = "";                                                                  // Code, der ausgeführt wird, wenn ein Zivilist angehalten wird (Spieler zeigt mit Waffe auf Zivilist)


maxCivsOnFoot = 40;                                                             // maximale Anzahl an Zivilisten zu Fuß
maxCivsInVehicles = 15;                                                         // maximale Anzahl an Zivilisten in Fahrzeugen
spawnDistancesOnFoot[] = {1000,4500};                                           // Mindest- und Maximalabstand zu allen Spielern, in denen Zivilisten zu Fuß spawnen
spawnDistancesInVehicles[] = {1800,6000};                                       // Mindest- und Maximalabstand zu allen Spielern, in denen Zivilisten in Fahrzeugen spawnen


class userEquipment {
    // Soll die hier definierte Ausrüstung die vordefinierte, inselabhängige Ausrüstung ersetzen oder zu dieser hinzugefügt werden? (0: hinzufügen, 1: ersetzen)
    replace = 0;

    // Uniformen
    clothes[] = {

    };

    // Helme, Mützen
    headgear[] = {

    };

    // Gesichter
    faces[] = {

    };

    // Brillen, Masken, Halstücher
    goggles[] = {

    };

    // Rucksäcke
    backpacks[] = {

    };

    vehicles[] = {

    };
};

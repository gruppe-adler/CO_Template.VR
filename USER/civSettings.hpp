/*
*   Legt Einstellungen für grad-civs Zivilisten fest.
*   In der Klasse "userEquipment" können eigene Ausrüstungsgegenstände für die Zivilisten definiert werden.
*/

enableCivs = 0;

backpackProbability = 0.15;                                                     // Wahrscheinlichkeit, dass Zivilisten mit Backpacks spawnen (0-1)
exitOn = "";                                                                    // Skriptbedingung, ab der keine weiteren Zivilisten mehr spawnen
onSpawn = "";                                                                   // Code, der ausgeführt wird, wenn ein Zivilist spawnt
onHeldUp = "";                                                                  // Code, der ausgeführt wird, wenn ein Zivilist angehalten wird (Spieler zeigt mit Waffe auf Zivilist)

maxCivsOnFoot = 20;                                                             // Maximale Anzahl an Zivilisten die zu Fuß durch die Gegend latschen
maxCivsInVehicles = 30;                                                         // Maximale Anzahl an Zivilisten die mit Auto fahren. Achtung: inkludiert Beifahrer und Passagiere; denkt v.a. dran wenn ihr Busse einsetzt!
maxCivsResidents = 40;                                                          // Maximale Anzahl an Zivilisten mit festem Wohnsitz
spawnDistancesOnFoot[] = {1000,4500};
spawnDistancesInVehicles[] = {1800,5000};
spawnDistancesResidents[] = {750, 1500};                                        // Mindest- und Maximalabstand zu allen Spielern, in denen Zivilisten spawnen

initialGroupSize = 3;                                                           // Gruppengröße für Zivilisten zwischen 1..N
automaticVehicleGroupSize = 1;                                                  // Autos werden zufällig mit Passagieren bedacht

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

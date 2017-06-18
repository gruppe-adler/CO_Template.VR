/*
*   Legt Gruppennamen, Standardkanäle und Sonderfrequenzen fest.
*   Gruppen müssen in der Reihenfolge aufgeführt werden, in der sie in der Slotliste stehen.
*   Gruppenspezifische Kanäle können über die Einträge channel1-channel8 für Shortrange und channel1-channel9 für Longrange festgelegt werden.
*   Hier werden die in der radiosettings.hpp definierten Kanalnamen oder Klassennamen der Kanäle verwendet.
*
*   Beispiel:
*
    class BLUFOR {
        class group1 {
            groupName = "Command";

            class shortrange {
                defaultChannel = 1;
                altChannel = 3;
                altChannelOnlyTL = 1;

                channel1 = "Command Kanal";
                channel3 = "Logistik Kanal";
                channel7 = "Command Intern";
            };

            class longrange {
                defaultChannel = 2;
                altChannel = 5;
                altChannelOnlyTL = 1;

                channel2 = "Air";
                channel5 = "OPZ";
            };
        };
    };
*
*/

class BLUFOR {

};

class OPFOR {

};

class INDEPENDENT {

};

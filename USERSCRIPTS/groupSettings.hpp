/*  Legt Gruppennamen, Standardkanäle und Sonderfrequenzen fest.
*   Gruppen müssen in der Reihenfolge aufgeführt werden, in der sie in der Slotliste stehen. Blufor zuerst, dann Opfor, dann Independent.
*   Gruppenspezifische Kanäle können über die Einträge channel1,channel2,[...],channel8 festgelegt werden. Hier werden die in der radiosettings.hpp definierten Kanalnamen verwendet.
*
*   Beispiel:
*
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
*
*/

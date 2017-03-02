/*  Definiert voreingestellte Funkfrequenzen und die zugehörigen Kanalnamen.
*   Kanalname ist optional und wird, sofern vorhanden, bei Spielstart am Kartenrand vermerkt.
*   Die ersten 8 Shortrange Kanäle und die ersten 9 Longrange Kanäle werden standardmäßig voreingestellt. Es können aber mehr Kanäle definiert werden.
*
*   Benannte Kanäle können in der groupSettings.hpp einzelnen Gruppen zugewiesen werden.
*
*   Beispiel:
*   class channel1 {
*       freq = 32.5;
*       name = "Command Kanal";
*   };
*   [...]
*   class channel10 {
*       freq = 80.1;
*       name = "Air Intern";
*   };
*/

//SHORTRANGE KANÄLE ============================================================
class shortrange {
    class channel1 {
        freq = 50;
    };

    class channel2 {
        freq = 60;
    };

    class channel3 {
        freq = 70;
        name = "Test Kanal";
    };

    class channel4 {
        freq = 80;
    };

    class channel5 {
        freq = 90;
    };

    class channel6 {
        freq = 100;
    };

    class channel7 {
        freq = 110;
    };

    class channel8 {
        freq = 120;
    };
};


//LONGRANGE KANÄLE =============================================================
class longrange {
    class channel1 {
        freq = 32;
    };

    class channel2 {
        freq = 33;
    };

    class channel3 {
        freq = 34;
        name = "Test Kanal Longrange";
    };

    class channel4 {
        freq = 35;
    };

    class channel5 {
        freq = 36;
    };

    class channel6 {
        freq = 37;
    };

    class channel7 {
        freq = 38;
    };

    class channel8 {
        freq = 39;
    };

    class channel9 {
        freq = 40;
    };
};

//ALLGEMEINE EINSTELLUNGEN =====================================================

_civTraffic = true;                                                             //Zufällig generierter Zivilverkehr - mögliche Werte: true, false

//AI CACHING ===================================================================
_useCaching = false;                                                            //F3 Caching - wenn ausgeschaltet, können alle anderen Caching-Einstellungen vernachlässigt werden - mögliche Werte: true, false
                                                                                //Caching bringt bessere Performance bei vielen KI-Einheiten, die nicht in direktem Kontakt mit den Spielern stehen. Einheiten werden "ausgeblendet".
                                                                                //Caching macht nur Sinn, wenn ohne Headless Client gespielt wird, da Einheiten auf dem HC nicht gecached werden können.

_cachingDebug = 0;                                                              //Caching Debug Mode - mögliche Werte: 0,1 (0 - off, 1 - on)

_cachingRange = 1200;                                                           //Abstand zu Spielereinheiten, nach der KI-Einheiten gecached werden können - mögliche Werte: Zahl > 0
                                                                                //Achtung: Gecachte Einheiten sind für die Spieler nicht sichtbar! chachingRange muss also größer als die übliche Sichtweite sein, aber klein genug für gute Performance.
                                                                                // --> In städtischen Missionen kann der Wert kleiner sein / In Missionen in offenem Gelände muss der Wert größer sein.

_cachingAggressiveness = 2;                                                     //Welche Einheiten gecached werden:
                                                                                // 1 - nur nicht-Gruppenführer und nicht-Fahrer (dies ist die richtige Einstellung für Zeus-Missionen, da auch gecachte Gruppen kontrollierbar bleiben!)
                                                                                // 2 - alle statischen Einheiten exklusive Fahrer (dies ist die richtige Einstellung für fast alle anderen Missionen)
                                                                                // 3 - alle Einheiten inklusive Fahrer und Gruppenführer

_uncacheForZeus = false;                                                        //Einheiten auch dann entcachen, wenn eine spielergesteuerte, virtuelle Zeuseinheit innerhalb der _cachingRange ist.

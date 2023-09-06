/*
*   Legt Respawn-Einstellungen für die Mission fest.
*   Damit Spieler sterben können, muss die "Cardiac Arrest Time" in den "ACE Medical States" CBA Settings reduziert werden.
*   Wenn Waverespawn ausgeschaltet ist, wird normaler Respawn verwendet.
*   Alle Zeitangaben in Sekunden.
*/


//WAVE RESPAWN =================================================================
waveRespawnEnabled = 0;                                                         //Wave Respawn ein-/ausschalten (1/0)

bluforWaveSize = -1;                                                            //Wellengröße Blufor
opforWaveSize = -1;                                                             //Wellengröße Opfor
indepWaveSize = -1;                                                             //Wellengröße Independent

waverespawntimePlayer = 30;                                                     //Spielerrespawnzeit, bevor er der Welle hinzugefügt wird
waverespawntimeBlu = 30;                                                        //Wellenrespawnzeit Blufor in Sekunden
waverespawntimeOpf = 30;                                                        //Wellenrespawnzeit Opfor in Sekunden
waverespawntimeInd = 30;                                                        //Wellenrespawnzeit Independent in Sekunden


//NORMALER RESPAWN =============================================================
respawntimeBlu = 10;                                                            //Respawnzeit Blufor in Sekunden
respawntimeOpf = 10;                                                            //Respawnzeit Opfor in Sekunden
respawntimeInd = 10;                                                            //Respawnzeit Independent in Sekunden

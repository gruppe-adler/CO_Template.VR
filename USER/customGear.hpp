/*
*   Legt fest, welche persönlichen Ausrüstungsgegenstände bei Missionsstart geladen werden dürfen.
*   Selbst wenn eine Visierkategorie hier erlaubt wird, kann ein Spieler sein persönliches Visier nur laden, wenn für ihn im Missionsloadout ein Visier aus der gleichen Kategorie vorgegeben ist.
*   Beispiel1: Nicht- und mehrfachvergrößernde Visiere sind erlaubt. Im Missionsloadout ist für einen Spieler ein Rotpunktvisier vorgesehen. Bei Missionsstart wird er deshalb trotzdem nur das nichtvergrößernde Visier laden können.
*   Beispiel2: Nur Scharfschützenvisiere sind erlaubt. Bei Missionsstart wird nur der Marksman sein persönliches Visier laden können.
*
*   0: nicht erlaubt
*   1: erlaubt
*/

allowHelmet = 0;                                                                // Kopfbedeckungen
allowGoggles = 0;                                                               // Gesichtsbekleidung
allowSimpleScopes = 0;                                                          // nichtvergrößernde Visiere
allowMagnifyingScopes = 0;                                                      // Visiere bis x4 Vergrößerung
allowMarksmanScopes = 0;                                                        // Visiere ab x4 Vergrößerung aufwärts (Scharfschützenvisiere)

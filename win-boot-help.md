# Windows USB-Bootloader Treiber aktualisieren {#head}

<div class="description">
	Unter Windows kann es in seltenen Einzelfällen zu Problemen mit den Treibern des USB-Bootloader kommen. Was du tun kannst, um zu überprüfen ob deine Treiber korrekt installiert sind und wie du sie ggf. installieren kannst erfährst du hier.
</div>
<div class="line">
    <br>
    <br>
</div>

## Treiberstatus überprüfen

Um zu überprüfen, ob deine Treiber für den USB-Bootloader funktionieren, befolge die folgenden Schritte:
- Schließe deine senseBox MCU Board per USB-Kabel an deinen Windows-Computer an
- Öffne den Geräte-Manager, indem du in der Windowsleiste nach `Geräte-Manager` suchst und diesen durch eine Klick öffnest.
- Aktiviere den Bootloadermodus der senseBox MCU indem du den `Reset`-Knopf (roter mechanischer Knopf auf der senseBox MCU), zweimal schnell nacheinander drückst
- Im Gerätemanager sollte nun ein Punkt `Anschlüsse (COM & LPT)` erscheinen
- Durch anklicken des Punktes öffnet sich eine Liste mit angeschlossenen Geräten, dort sollte die senseBox MCU aufgeführt sein 
- Sollte die senseBox MCU nicht aufgeführt sein, trenne das USB-Kabel vom Computer und verbinde sie erneut - lasse dabei den Gerätemanager geöffnet und schau dir an was passiert

Falls dort kein entsprechendes Gerät angezeigt wird und auch auf erneutes verbinden kein neues Gerät angezeigt wird, sind deine USB-Bootloader Treiber nicht korrekt installiert. Lade dir die aktuellen Treiber hier mit einem Klick herunter:

[senseBox MCU Treiber herunterladen](https://github.com/watterott/senseBox-MCU/raw/master/arduino/driver.zip)

Gehe nun im Gerätemanager auf `Treiber aktualisieren` -> `Auf dem Computer suchen` und wähle die soeben heruntergeladenen Treiber aus. 

Starte den Computer neu und überprüfe den Treiberstatus erneut, wie oben angegeben. Die senseBox MCU sollte nun erkannt werden.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Falls dir dieser Artikel nicht weitergeholfen hat, kannst du versuchen in unserem <a href="https://forum.sensebox.de">Forum</a> nach einer Lösung suchen, oder gegebenenfalls selbst dort einen Beitrag erstellen.
</div>
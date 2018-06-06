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
- Öffne den Geräte-Manager, indem du in der Windowsleiste nach _Geräte-Manager_ suchst und diesen durch eine Klick öffnest.
- Aktiviere den Bootloadermodus der senseBox MCU indem du den _Reset_-Knopf (roter mechanischer Knopf auf der senseBox MCU), zweimal schnell nacheinander drückst
- Im Gerätemanager sollte nun ein Punkt _Anschlüsse (COM & LPT)_ erscheinen
- Durch anklicken des Punktes öffnet sich eine Liste mit angeschlossenen Geräten, dort sollte die senseBox MCU aufgeführt sein 
- Sollte die senseBox MCU nicht aufgeführt sein, trenne das USB-Kabel vom Computer und verbinde sie erneut - lasse dabei den Gerätemanager geöffnet und schau dir an was passiert

Falls dort kein entsprechendes Gerät angezeigt wird und auch auf erneutes verbinden kein neues Gerät angezeigt wird, sind deine USB-Bootloader Treiber nicht korrekt installiert. Lade dir die Treiber hier mit einem Klick herunter:

[senseBox MCU Treiber](https://github.com/watterott/senseBox-MCU/raw/master/arduino/driver.zip)

Gehe nun im Gerätemanager auf _Treiber aktualisieren_ -> _Auf dem Computer suchen_ und wähle die soeben heruntergeladenen Treiber aus. 

Starte den Computer neu und überprüfe den Treiberstatus erneut, wie oben angegeben. Die senseBox MCU sollte nun erkannt werden.

Falls dir dieser Artikel nicht weitergeholfen hat, kannst du versuchen in unserem [Forum](https://forum.sensebox.de) nach einer Lösung suchen, oder gegebenenfalls selbst einen Beitrag einreichen.
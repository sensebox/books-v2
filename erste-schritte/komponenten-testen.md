# Schritt 5: Komponenten Testen {#head}
<div class="description">Bevor ihr eure senseBox mit der openSenseMap verbindet sollten alle Sensoren und das Netzwerkmodul überprüft werden um späteren Fehlern vorzubeugen. Mit unserem Testprogramm können nach dem Aufbau der Station der Messvorgang und die Netzwerkverbindung getestet werden.</div>


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Voraussetzung dafür ist die vorherige Installation der Softwarebibliotheken aus Schritt 3.
</div>

<div class="line">
    <br>
    <br>
</div>


------
## Test-Sketch öffnen
Öffnet aus den Beispielen die Datei mcu_component_test (Datei -> Beispiele -> senseBoxMCU). Nachdem ihr diesen Sketch auf die MCU hochgeladen habt, startet ihr den seriellen Monitor indem ihr auf das Lupen-Symbol rechts oben in der Werkzeugleiste klickt. 


<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Für den Fall dass sich der Monitor nicht öffnet solltet ihr überprüfen ob sich das Board im Programmmodus befindet (einmal auf Reset drücken) und ob der richtige Port ausgewählt wurde. Danach versucht es erneut mit einem Klick auf die Lupe.
</div>

------
## Optionsmenü
Nachdem ihr den seriellen Monitor geöffnet habt erscheint ein Menü auf dessen Funktionen ihr über das Eingabefeld zugreifen könnt.

Dazu schreibt ihr die Nummer der entsprechenden Option in das Eingabefeld und klickt auf „Senden“. Unterhalb findet ihr eine Auflistung der Optionen mit kurzen Beschreibungen.

1. Find connected sensors
Hier könnt ihr überprüfen ob alle angeschlossenen Sensoren richtig initialisiert und erkannt wurden. Für jeden angeschlossenen Sensor sollte es eine Rückmeldung und eine Testmessung geben. Im Beispiel unterhalb wurde ein HDC1080 Temperatur- und Luftfeuchtesensor angeschlossen. Falls dort einer der angeschlossenen Sensoren fehlt solltet ihr die Kabelverbindung überprüfen und den Test wiederholen.

2. Test connection to openSenseMap
Mit dieser Option wird die Internetverbindung getestet. Bei einem erfolgreichen Verbindungsaufbau sollte 
Hinweis: Falls ihr ein WiFi-Modul nutzt, wird außerdem überprüft ob die aktuellste Version der Firmware auf dem Modul installiert ist. Falls die Version veraltet ist solltet ihr sie aktualisieren (s. Kapitel Firmewareupgrade).

3. Get security key
Jedes senseBox Board besitzt einen eigenen, einzigartigen Sicherheitsschlüssel den ihr mit dieser Option auslesen könnt. Er wird genutzt um die Verbindung zwischen der openSenseMap und eurer senseBox zu verschlüsseln damit niemand eure Messungen von außen Manipulieren kann.
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
   Ihr benötigt diesen Schlüssel im nächsten Schritt bei der Registrierung eurer senseBox auf der openSenseMap.
</div>

------








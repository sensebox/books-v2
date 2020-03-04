# Schritt 4: Programmierung der Hardware {#head}
<div class="description"> In diesem Kapitel wird beschrieben wie die Programmierung der senseBox funktioniert und wie du die mitgelieferten Sensoren und Komponenten testen kannst.</div>

<div class="line">
    <br>
    <br>
</div>

## Programmieren mit der Arduino IDE

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Ein Softwareprogramm für die senseBox wird im Folgenden auch Sketch genannt.
</div>

Mit der Arduino IDE lässt sich ein Sketch kompilieren und auf die senseBox MCU hochladen. Schließe nun die senseBox per USB Kabel an Deinen Computer an und befolge die nächsten Schritte.

### Konfiguration in der Arduino IDE
Bevor du die senseBox programmieren kannst, müsst du ein paar Einstellungen in der Arduino IDE vornehmen. Unter dem Reiter `Werkzeuge` musst du bei der Option `Boards` die senseBox MCU unten in der Liste auswählen.

![Boardauswahl](https://github.com/sensebox/resources/raw/master/gitbook_pictures/select_board.png)

Als nächstes wählst du unter `Werkzeuge` -> `Port` die Anschlussnummer des USB Ports aus, an dem die senseBox MCU mit dem Computer verbunden ist. 

![Portauswahl](https://github.com/sensebox/resources/raw/master/gitbook_pictures/select_port.png)

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Der Port lässt sich nur dann auswählen, wenn die senseBox mit dem USB Kabel an den Computer angeschlossen wurde.
</div>

### Hello World Beispiel
Kopiere das Beispiel unterhalb in Deine Arduino Umgebung und klicke auf das Pfeilsymbol in der Werkzeugleiste. Im unteren Teil der Arduino Oberfläche bekommst du Feedback zum Uploadvorgang. Wenn alles geklappt hat, erscheint dort die Meldung `Hochladen abgeschlossen`.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wenn du noch nicht mit der Arduino IDE gearbeitet hast, kannst du <a href="https://sensebox.github.io/books-v2/edu/grundlagen/der-arduino-sketch.html">hier im senseBox:edu book</a> erfahren, was es mit den verschiedenen Pfeilen und Symbolen auf sich hat.
</div>

```cpp
int ledPin = LED_BUILTIN; 

void setup()
{
  pinMode(ledPin, OUTPUT);
}

void loop()
{
  digitalWrite(ledPin, HIGH); // turn the LED on (HIGH is the voltage level)
  delay(1000);                // wait for a second
  digitalWrite(ledPin, LOW);  // turn the LED off by making the voltage LOW
  delay(1000);                // wait for a second
}
```

Bei dem Text der hinter dem `//` steht handelt es sich um einen Kommentar, der nicht vom Kompiler mit ausgewertet wird. Das hat den Sinn, dass man sich besser im Code zurecht findet und man es so anderen Programmierern leichter macht, den eigenen Code zu verstehen. 

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Anders als bei einem Laptop oder Smartphone läuft auf deiner senseBox kein Betriebssystem wie Windows, Linux oder MacOS. Die senseBox MCU ist ein Mikrocontroller, auf dem immer nur das letzte Programm ausgeführt wird, das hochgeladen wurde.
</div>

## Sensoren und Internetverbindung testen
<div class="description">Bevor du deine senseBox mit der openSenseMap verbindet, sollten alle Sensoren und das Netzwerkmodul überprüft werden, um späteren Fehlern vorzubeugen. Mit unserem Testprogramm können, nach dem Aufbau der Station, der Messvorgang und die Netzwerkverbindung getestet werden.</div>

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Voraussetzung dafür ist die aktuellste Version des Board-Support-Package aus <a href="board-support-packages-installieren.md">Schritt 2</a>. Am Ende von Schritt 2 ist erklärt, wie du das Board-Support-Package auf den neusten Stand bringen kannst.
</div>

------
### Test-Sketch öffnen
Öffnet aus den Beispielen die Datei `mcu_component_test` (`Datei` -> `Beispiele` -> `senseBox-Tests`). Nachdem du diesen Sketch auf die MCU hochgeladen hast, startest du den seriellen Monitor indem du auf das Lupen-Symbol rechts oben in der Werkzeugleiste klickst. 

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Für den Fall, dass sich der Monitor nicht öffnet, solltet du überprüfen, ob sich das Board im Programm-Modus befindet (einmal auf Reset drücken) und ob der richtige Port ausgewählt wurde. Danach versuche es erneut mit einem Klick auf die Lupe.
</div>

------
### Optionsmenü
Nachdem du den seriellen Monitor geöffnet hast, erscheint ein Menü auf dessen Funktionen du über das Eingabefeld zugreifen kannst:

![Optionsmenu](https://github.com/sensebox/resources/raw/master/gitbook_pictures/test_option-menu.png)

Dazu schreibt du die Nummer der entsprechenden Option in das Eingabefeld und klickst auf „Senden“. Unterhalb findest du eine Auflistung der Optionen mit kurzen Beschreibungen.

#### 1. Angeschlossene Sensoren finden

  Hier könntest du überprüfen, ob alle angeschlossenen Sensoren richtig initialisiert und erkannt wurden. Für jeden angeschlossenen Sensor sollte es eine Rückmeldung und eine Testmessung geben. Im Beispiel unterhalb wurde ein HDC1080 Temperatur- und Luftfeuchtesensor an einen `I2C/Wire` Port angeschlossen.

  ![Sensortest](https://github.com/sensebox/resources/raw/master/gitbook_pictures/test_option1.png)

  <div class="box_info">
      <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
     Falls bei der Ausgabe einer der angeschlossenen Sensoren fehlt, solltet du die Kabelverbindung überprüfen und den Test wiederholen.
  </div>

#### 2. Verbindugstest zur openSenseMap

  Mit dieser Option wird die Internetverbindung getestet. Bei einem erfolgreichen Verbindungsaufbau sollte eine Antwort mit HTTP-Status 200 vom Server ausgegeben werden:

  ![Verbindungs-Test](https://github.com/sensebox/resources/raw/master/gitbook_pictures/test_option2.png)

  <div class="box_info">
      <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
     Falls du ein WiFi-Modul nutzt, wird außerdem überprüft ob die aktuellste Version der Firmware auf dem Modul installiert ist. Falls die Version veraltet ist, solltest du sie aktualisieren.
  </div>

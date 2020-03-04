# Schritt 4: Programmierung{#head}
<div class="description"> In diesem Kapitel wird beschrieben, wie die Programmierung der senseBox funktioniert und wie du die mitgelieferten Sensoren und Komponenten testen kannst.</div>

## Programmieren mit der Arduino IDE

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Ein Softwareprogramm für die senseBox wird im Folgenden auch Sketch genannt.
</div>

Mit der Arduino IDE lässt sich ein Sketch kompilieren und auf die senseBox MCU hochladen. Schließe nun die senseBox per USB Kabel an deien Computer an und befolge die nächsten Schritte.

### Konfiguration in der Arduino IDE
Bevor du die senseBox programmieren kannst, musst du ein paar Einstellungen in der Arduino IDE vornehmen. Unter dem Reiter `Werkzeuge` musst du bei der Option `Boards` die senseBox MCU unten in der Liste auswählen.

![Boardauswahl](https://github.com/sensebox/resources/raw/master/gitbook_pictures/select_board.png)

Als nächstes wählst du unter `Werkzeuge` -> `Port` die Anschlussnummer des USB Ports aus, an dem die senseBox MCU mit dem Computer verbunden ist. 

![Portauswahl](https://github.com/sensebox/resources/raw/master/gitbook_pictures/select_port.png)

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Der Port lässt sich nur dann auswählen, wenn die senseBox mit dem USB Kabel an den Computer angeschlossen wurde.
</div>

### Hello World Beispiel
Kopiert das Beispiel unterhalb in deine Arduino Umgebung und klicke auf das Pfeilsymbol in der Werkzeugleiste. Im unteren Teil der Arduino Oberfläche bekommst du Feedback zum Uploadvorgang. Wenn alles geklappt hat, erscheint dort die Meldung `Hochladen abgeschlossen`.

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

Bei dem Text der hinter dem `//` steht handelt es sich um einen Kommentar der nicht vom Kompiler mit ausgewertet wird. Das hat den Sinn, dass man sich besser im Code zurecht findet und man macht es so anderen Programmierern leichter den eigenen Code zu verstehen. 

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Anders als bei einem Laptop oder Smartphone läuft auf deiner senseBox kein Betriebssystem wie Windows, Linux oder MacOS. Die senseBox MCU ist ein Mikrocontroller auf dem immer nur das letzte Programm ausgeführt wird, das hochgeladen wurde.
</div>

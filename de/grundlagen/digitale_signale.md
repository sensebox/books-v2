# Digitale Signale {#head}

<div class="description">Digitale Signale können lediglich die Werte 1 oder 0 bzw. High oder Low annehmen. Sie verwenden also nur abzählbare Elemente, wie zum Beispiel Finger. Daher auch der Begriff digital, der auf das lateinische digitus, der Finger, zurück geht. 

Um zu verstehen, wie digitale Signale funktionieren und wo wir mit ihnen Arbeiten, müssen wir den Aufbau eines Sketches in Arduino verstehen.</div>
<div class="line">
    <br>
    <br>
</div>

## Digitale Aktoren ansteuern 

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Die digitalen Schnittstellen der senseBox-MCU verfügen über 4 Anschlüsse:<br><b>Einen Ground(GND), eine Stromversorgung(5V) und zwei digitale Pins </b>mit denen du die Akteure ansteuern kannst ! 
</div>

Um nun einen digitalen Aktor - beispielsweise eine LED - anzusteuern, benötigt man zwei Befehle: 
* Der Erste steht im `setup()` 
* Der Zweite im `loop()` 

In der `setup`-Funktion wird mit dem Befehl `pinMode(1, OUTPUT);` festgelegt, dass an Pin Nummer 1 etwas angeschlossen ist, was als Ausgang (oder OUTPUT) benutzt werden soll. Die 1 kann hier durch jede andere Pin-Nummer ersetzt werden, je nachdem an welchen Arduino-Pin man den Aktor angeschlossen hat. 

Die zweite Funktion im `loop()` lautet `digitalWrite (1, HIGH);`. Damit wird der an Pin 1 angeschlossene Aktor mit Strom versorgt, also angeschaltet. Das Gegenstück zu diesen Befehl wäre `digital´Write(1, LOW);` um die Stromversorgung wieder zu beenden. Auch hier ist die 1 wieder durch jede andere Pinnummer ersetzbar.

Der Sketch sollte also wie folgt aussehen:

```arduino
void setup(){
    pinMode(1,OUTPUT); //Deklarier den Pin an dem die LED
                       // angeschlossen ist, als Ausgang
}
void loop(){
    digitalWrite(1,HIGH); // Schalte die LED an
}
```

## Digitale Sensoren auslesen
Dieselben Pins die wir zum Ansteuern von digitalen Aktoren genutzt haben, lassen sich auch zur Registrierung von Eingangssignalen verwenden.<br>Digitale Eingänge können dabei genau wie digitale Ausgänge zwei Zustände annehmen; `HIGH` oder `LOW`.<br>Damit eingehende Signale verarbeitet werden können, müssen diese in [Variablen](variablen.md) gespeichert werden.

Um digitale Signale zu speichern, eignet sich besonders eine boolesche Variable (auch `boolean` genannt), welche nur zwei Werte annehmen kann.<br>
Um nun einen digitalen Sensor auszulesen, werden ähnlich wie beim Ansteuern digitaler Sensoren zwei Befehle benötigt.

Im `loop()` wird durch den Befehl `pinMode(1, INPUT);` Pin 1 des Arduino als Eingang festgelegt.

Im `setup()` kann durch den Befehl `TestVariable = digitalRead(1);` ein an Pin 1 angeschlossener Sensor ausgelesen und der Wert in der zuvor angelegten Testvariable gespeichert werden.

Genau wie beim Ansteuern von digitalen Aktoren steht die 1 für den verwendeten Pin und kann durch jeden anderen digitalen Pin ersetzt werden.

Der Sketch sollte also wie folgt aussehen:

```arduino
boolean TestVariable = 0;          // deklariere eine neue boolean Variable

void setup() {
  pinMode(1,INPUT);
}
void loop() {
  TestVariable = digitalRead (1); // schreibe den gelesenen Wert in die Variable
}
```

Den Inhalt der angelegten Variable kannst du dir im [seriellen Monitor](der_serielle_monitor.md) anzeigen lassen.

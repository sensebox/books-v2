# Verkehrszähler {#head}

<div class="description">
Ziel ist es, einen Verkehrs- oder Personenzähler zu entwickeln. <br>
Dazu verwenden wir einen Ultraschall-Distanzsensor.
Die so aufgenommenen Werte sollen im <b>Seriellen Monitor</b> ausgegeben werden.
</div>
<div class="line">
    <br>
    <br>
</div>

## Materialien
* Ultraschall-Distanzsensor
* senseBox MCU
* senseBox JST-Adapterkabel

## Grundlagen
Der Ultraschall-Distanzsensor nutzt den Schall um die Entfernung von Objekten zu bestimmen. Der Sensor sendet einen Impuls aus und misst die Zeit, bis er das Echo des Impulses wieder empfängt. Aus dieser Zeit errechnet man mit Hilfe der Schallgeschwindigkeit die Entfernung des Objekts.

## Aufbau
Der Ultraschallsensor wird mit einem JST-Adapterkabel mit der senseBox MCU verbunden. Dazu wird das JST-Adapterkabel mit dem Steckplatz Digital A verbunden.
Zur Stromversorgung wird der VCC-Pin des Sensors mit dem roten Kabel (5V)und der GND-Pin des Sensors mit
dem schwarzen Kabel (GND) verbunden. Zur Datenübertragung wird dann das grüne Kabel (1) mit dem Trig- und das gelbe Kabel (2) mit dem Echo-Pin des Sensors verbunden.

![Verkabelung des Ultraschall-Sensors](https://github.com/sensebox/resources/raw/master/gitbook_pictures/projekte/Verkehrszaehler_v2.png)

***Hinweis:*** *Ihr könnt natürlich jeden mit "Digital" beschrifteten Steckplatz verwenden, denkt aber daran den Code anzupassen.*

## Programmierung

Definiert die Pins an dem ihr den Sensor angeschlossen habt wie üblich.
Außerdem werden zwei Variablen angelegt in der die gemessene Zeit und die errechnete Distanz gespeichert werden.

```arduino
int trig = 1;  // Trig-Pin des Sensors ist an Pin 1 angeschlossen.
int echo = 2;  // Echo-Pin des Sensors ist an Pin 2 angeschlossen.
unsigned int time = 0;
unsigned int distance = 0;
```

Im `setup()` müsst ihr nun den *Seriellen Monitor* starten und die Pins an welchen der Sensor angeschlossen ist als Ein- bzw. Ausgang definieren. Der Trigger-Pin des Sensors muss als Ausgang und der Echo-Pin als Eingang definiert werden.

```arduino
Serial.begin(9600);
pinMode(trig, OUTPUT);
pinMode(echo, INPUT);

```

Im `loop()` wird mit den Befehlen
```arduino
digitalWrite(trig, HIGH);
delayMicroseconds(10);
digitalWrite(trig, LOW);
```
ein 10 Mikrosekunden langer Ultraschallimpuls ausgesendet.
Der darauffolgende Befehl `time = pulseIn(echo, HIGH);` speichert die Zeit bis zum Empfang des Echos in der Variable `time`.
Zum Schluss muss noch die Distanz aus der Zeit errechnet werden, sowie die Werte auf dem Seriellen Monitor angezeigt werden.

```arduino
distance = time / 58;
Serial.println(distance);
```
**Hinweis** *Wir gehen davon aus, dass sich der Schall mit 348 Metern pro Sekunde ausbreitet. Diese Zahl ist nicht fix sondern [hängt von der Umgebungstemperatur ab](https://de.wikipedia.org/wiki/Schallgeschwindigkeit#Temperaturabh.C3.A4ngigkeit_in_Luft).*

{% collapse title="Aufgabe 1" %}

Versucht mit Hilfe bekannter Befehle und dem oben angegebenen Sketch zum Ultraschallsensor einen Personen- bzw. Verkehrszähler zu entwickeln.

Beachtet dabei folgende Hinweise:
- Versucht nur einen bestimmten Entfernungsbereich auszuwerten, damit es
nicht zu Störungen durch Bewegungen im Hintergrund kommt. Effektiv misst der Sensor ca. 3 Meter.

- Um Mehrfachzählungen eines stehenden Fahrzeuges zu vermeiden solltet ihr eine Bedingung programmieren, der den Zählvorgang stoppt bis die Spur wieder frei ist, der Sensor also eine vorher festgelegte Maximaldistanz für die Spur misst. Dazu bietet sich ein `while`-Schleife an. Zuerst muss überprüft werden, ob sich etwas im Messbereich befindet. Solange der Sensor nicht misst, dass die Fahrbahn wieder frei ist, soll er erneut messen. Erst wenn die Fahrbahn wieder frei ist erhöhe deine Zählvariable um eins.

- Damit die Messwerte beim einfahren in den Messbereich nicht zu sehr schwanken, kann es helfen, zwischen den einzelnen Messungen eine Verzögerung von 200ms zu programmieren.
    
{% endcollapse %}

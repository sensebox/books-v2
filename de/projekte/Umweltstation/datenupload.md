#Datenupload {#head}


<div class="description">Wenn wir unsere Wetterstation aufgebaut haben, wäre es doch schön die gewonnenen Daten immer von jedem Ort aus abrufen zu können.
Dazu gibt es die [openSenseMap](https://openSenseMap.org/) (OSeM), welche diverse Sensordaten online sammelt und auf einer Karte darstellt.
Über den Ethernet- oder WiFi-Bee oder können wir unsere senseBox ans Internet anbinden und die Daten zur OSeM hochladen.</div>
<div class="line">
    <br>
    <br>
</div>

## Voraussetzungen
- [Die Verwendung von Software-Bibliotheken](../../erste-schritte/board-support-packages-installieren.md) : Du solltest dir zu diesem Zweck die ersten Schritte angeguckt haben.
- [**Bees**](../../grundlagen/Bees.md):
    Lese dieses Kapitel um zu erfahren, wie die senseBox MCU mithilfe von Bees eine Netzwerkverbindung herstellen kann, um so Daten auf die openSenseMap zu übertragen.

## Ziele der Station
In dieser Station wird beispielhaft die Integration eines Sensors in die openSenseMap gezeigt, sodass die gewonnenen Daten online verfügbar sind.

## Materialien
*  WiFi-Bee
* Mindestens einen (beliebigen) Sensor

## Programmierung 
Im Kapitel [Bees](/../../grundlagen/Bees.md) hast du schon gelernt wie du eine Verbindung zum Internet aufbaust, nun schauen wir uns an, wie wir unsere Messwerte kontinuierlich auf der openSenseMap hochladen können.
Wie dort bereits beschrieben müssen wir erstmal die Instanzen für die openSenseMap erstellen und unser WLAN-Netzwerk + Zugangsdaten bereitstellen. 

{% collapse title="Deklarierung der Objekte" %}
```arduino
#include "SenseBoxMCU.h"
Bee* b = new Bee(); // Instanz der Bee
OpenSenseMap osem("senseBox ID",b); // Instanz der openSenseMap
HDC1080 hdc; // Instanz des Temperatur - & Luftfeuchte Sensor 
void setup(){
    b->connectToWifi("SSID","PW"); // Verbindung zum WiFi herstellen 
    hdc.begin();
    };
```
{% endcollapse %}

In der `loop()`-Funktion laden wir nun unsere Messwerte hoch.

{% collapse title="loop()" %}
```arduino
void loop(){
    osem.uploadMeasurement(hdc.getTemperature(),"Sensor ID")
    delay(5000);
    };
```
{% endcollapse %}

## Aufgaben
{% collapse title="Aufgabe 1" %}
Mache dich mit der openSenseMap vertraut (siehe Vorraussetzungen), und registriere dort deine senseBox mit den Sensoren, welche du bisher angeschlossen hast.
{% endcollapse %}



{% collapse title="Aufgabe 2" %}
In dem Arduino-Sketch, den du bei der Registrierung in Aufgabe 1 erhalten hast, fehlt noch das Auslesen von Sensoren.
Erweitere den Sketch von der OSeM-Registrierung sodass deine angeschlossenen Sensoren ausgelesen werden.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Folge der Anleitung im <a href="../../grundlagen/digitale_signale.md">Grundlagenkapitel</a>. Du kannst deinen bisherigen Code überwiegend wiederverwenden!<
</div>

{% endcollapse %}

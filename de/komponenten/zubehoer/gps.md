# GPS {#head}
<div class="description">Das GPS-Modul empfängt die Position (Längengrad/Breitengrad/Höhe) der senseBox. Diese kann für mobile Anwendungen, z.B. die mobile Datenübertragung auf die openSenseMap. Dieser Sensor ist kompatibel mit den gängingen GNS Systemen (GPS, QZSS, GLONASS, BeiDou, Galileo) und basiert auf dem u-blox CAM-M8Q Multi GNSS Modul.</div>

<div class="line">
    <br>
    <br>
</div>

![Der GPS-Sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/gps%20top.png)


## Aufbau 
Damit das GPS-Modul die ganze Messperiode über ein Signal hat und somit den Standort anfragen kann, musst du sicherstellen, dass das Modul durch nichts verdeckt wird. Idealerweise bringst du es für die Messperiode außerhalb des Gehäuses an. 

Für die Stromversorgung während der Messperiode kannst du zum Beispiel eine Powerbank benutzen. Manche Powerbanks schalten sich ab, wird zu wenig Strom gezogen (z.B. dann wenn ein Handy voll geladen ist), dadurch kann es vorkommen, dass die Powerbank die senseBoxMCU nicht dauerhaft mit Strom versorgt. Gehe vor der Messung sicher, dass dies nicht der Fall sein wird. Der GPS-Sensor wird an die I2C-Ports angeschlossen. 

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Es kann sein, dass der GPS Sensor anfangs eine Weile braucht, damit korrekte Signale empfangen werden. Vorallem bei erstmaliger Benutzung kann dieser Prozess bis zu 5 Minuten dauern. Nachdem ein Netzwerk erkannt wurde, werden die Informationen dazu intern im Sensor gespeichert damit es bei der nächsten 
    Verwendung schneller gehen kann !
</div>


## Programmierung

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher, dass du das aktuellste Board-Support-Package installiert hast, da du die korrekten Software-Bibliotheken benötigst. Wie das geht wurde dir in <a href ="../../erste-schritte/board-support-packages-installieren.md">Schritt 2</a> erklärt!
</div>

Wie das GPS-Modul programmiert wird, wird hier Beispielhaft anhand einer Temperaturmessung veranschaulicht. Jeder Messwert einer mobilen Station wird zusammen mit den dazugehörigen Werten für Breiten- und Längengrad hochgeladen.

Als erstes muss eine Instanz der Sensoren angelegt werden. Zusätzlich definieren wir noch 2 zwei Variablen für Breiten- und Längengrad
```arduino
#include "SenseBoxMCU.h"
HDC1080 hdc;

GPS gps;
float lat; // Geografische Breite
float lon; // Geografische Länge
```
In der `setup`-Funktion starten wir nun die beiden Sensoren. 
{% collapse title="setup() Funktion" %}

```arduino
void setup(){
    hdc.begin();
    gps.begin();
}
```
{% endcollapse %}

Die `loop`-Funktion fragt nun den Standort der Station ab und lädt diesem gemeinsam mit dem Wert für Temperatur auf die openSenseMap hoch. 

{% collapse title="loop() Funktion" %} 
```arduino
void loop(){
    lat = gps.getLatitude();
    lon = gps.getLongitude();
    temp = hdc.getTemperature();

    osem.uploadMobileMeasurement(temp,"SensorID",lat,lon)
}
```
{% endcollapse %}



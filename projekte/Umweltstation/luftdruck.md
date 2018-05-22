#Luftdruck {#head}

<div class="description">Die Messung des Luftdrucks erlaubt neben Wettervorhersagen auch indirekt die Bestimmung der Höhe des Sensors.
</div>
<div class="line">
    <br>
    <br>
</div>

## Vorraussetzungen
- [Die Verwendung von Software-Bibliotheken](../../grundlagen/software_libraries.md)
- [Der serielle Datenbus I²C](../../grundlagen/der_serielle_datenbus.md)
- [Der serielle Monitor](../../grundlagen/der_serielle_monitor.md)

## Materialien
- Luftdrucksensor `BMP280`

## Grundlagen

<!--sec data-title="BMP280 Sensor" data-id="grundlagensensor" data-collapse=true ces-->
Der BMP280 Sensor misst sowohl Luftdruck (hPa) als auch Temperatur (°C).
Dieser Sensor wird über das [I²C Protokoll](../../grundlagen/serielle_datenbus.md) angesteuert, und benötigt eine Betriebsspannung von 3.3 bis 5 Volt.

I²C-Geräte werden an die senseBoxMCU über den I²C/Wire Port angeschlossen , und so digital ausgelesen (siehe auch [Der serielle Datenbus](../../grundlagen/serielle_datenbus.md)).
Die I²C-Adresse des BMP280 kann über den `SDO` Pin umgeschaltet werden:
Liegt `SDO` auf Masse (`GND`) ist die Adresse `0x76`, sonst `0x77`. <b>Diese Kommunikation übernimmt die senseBox-Bibliothek für uns.</b>
<!-- endsec -->

<!--sec data-title="Höhenbestimmung über den Luftdruck" data-id="grundlagenhoehe" data-collapse=true ces-->
Da der Luftdruck von der Höhe über dem Meeresspiegel abhängt, kann über den `BMP280` auch die Aufbau-Höhe der senseBox bestimmt werden. Dazu wird ein Referenzdruck `P0` benötigt, dessen Höhe bekannt ist. Üblicherweise wird dazu der aktuelle Luftdruck auf Meerespiegelniveau verwendet.
Da der Luftdruck in Abhängigkeit vom aktuellen Wetter stark schwanken kann, ist diese "Höhenmessung" aber nicht sehr akkurat, und muss immer wieder neu kalibriert werden.
<!-- endsec -->

## Aufbau
Um den Sensor zum Laufen zu bringen schließe ihn einfach an den I²C/Wire Port an !



![Aufbau_Arduino_BMP280](https://raw.githubusercontent.com/sensebox/resources/master/images/wired_lux.jpg)

## Programmierung - Auslesen des Sensors
Der Sensor kann über die Bibliothek `SenseBoxMCU.h` angesteuert werden.
Nachdem diese eingebunden wurde, muss eine Instanz `bmp` davon erstellt werden
Auf diesem Objekt werden alle Funktionen der Bibliothek aufgerufen:

```arduino
#include <SenseBoxMCU.h>
BMP280 bmp_sensor;
```
<!--sec data-title="setup() Funktion" data-id="programmierungsetup" data-collapse=true ces-->


In der `setup()`-Funktion muss der Sensor initialisiert werden. Verwende dazu die folgenden Zeilen:

```arduino
    bmp_sensor.begin();
```
<!-- endsec -->

<!--sec data-title="loop() Funktion" data-id="programmierungloop" data-collapse=true ces-->


Nun muss der Sensor in der `loop()`-Funktion ausgelesen werden.
In den Variablen `temp` und `pressure` stehen dann jeweils die aktuellen Messwerte.

```arduino
double temp, pressure;
 pressure = bmp_sensor.getPressure();
 temp = bmp_sensor.getTemperature();
```
<!-- endsec -->

## Aufgaben

<!--sec data-title="Aufgabe 1" data-id="aufg1" data-collapse=true ces-->
Verbinde den `BMP280` Sensor mit dem Arduino, und erstelle einen Arduino-Sketch, welcher regelmäßig Luftdruck und Temperatur auf dem seriellen Monitor ausgibt!
<!-- endsec -->

<!--sec data-title="Aufgabe 3" data-id="aufg3" data-collapse=true ces-->
Du hast erfahren, dass sich aus dem gemessenen Luftdruck die Aufbauhöhe der senseBox bestimmen lässt.
Verwende die Funktion `bmp.altitude(...)` um die Höhe zu berechnen, und gib diese ebenfalls auf dem Seriellen Monitor aus.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Sieh dir das der BMP280-Bibliothek beiliegende Beispiel an. Der Referenzdruck P0 muss an die derzeitige Wetterlage angepasst werden: [Hier](https://www.meteoblue.com/en/weather/webmap/index/?variable=mslp_pressure&level=surface&lines=none) findest du den aktuellen Luftdruck.*
</div>
<!-- endsec -->
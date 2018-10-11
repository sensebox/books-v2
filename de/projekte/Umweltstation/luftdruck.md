#Luftdruck {#head}

<div class="description">Die Messung des Luftdrucks erlaubt neben Wettervorhersagen auch indirekt die Bestimmung der Höhe des Sensors.
</div>
<div class="line">
    <br>
    <br>
</div>

## Vorraussetzungen
- [Die Verwendung von Software-Bibliotheken](../../erste-schritte/board-support-packages-installieren.md)
- [Der serielle Datenbus I²C](../../grundlagen/serielle_datenbus.md)
- [Der serielle Monitor](../../grundlagen/der_serielle_monitor.md)

## Materialien
- Luftdrucksensor `BMP280`

## Grundlagen

{% collapse title="BMP280 Sensor" %}
Der BMP280 Sensor misst sowohl Luftdruck (hPa) als auch Temperatur (°C).
Dieser Sensor wird über das [I²C Protokoll](../../grundlagen/serielle_datenbus.md) angesteuert, und benötigt eine Betriebsspannung von 3.3 bis 5 Volt.

I²C-Geräte werden an die senseBoxMCU über den I²C/Wire Port angeschlossen , und so digital ausgelesen (siehe auch [Der serielle Datenbus](../../grundlagen/serielle_datenbus.md)).
Die I²C-Adresse des BMP280 kann über den `SDO` Pin umgeschaltet werden:
Liegt `SDO` auf Masse (`GND`) ist die Adresse `0x76`, sonst `0x77`. <b>Diese Kommunikation übernimmt die senseBox-Bibliothek für uns.</b>
{% endcollapse %}

{% collapse title="Höhenbestimmung über den Luftdruck" %}
Da der Luftdruck von der Höhe über dem Meeresspiegel abhängt, kann über den `BMP280` auch die Aufbau-Höhe der senseBox bestimmt werden. Dazu wird ein Referenzdruck `P0` benötigt, dessen Höhe bekannt ist. Üblicherweise wird dazu der aktuelle Luftdruck auf Meerespiegelniveau verwendet.
Da der Luftdruck in Abhängigkeit vom aktuellen Wetter stark schwanken kann, ist diese "Höhenmessung" aber nicht sehr akkurat, und muss immer wieder neu kalibriert werden.
{% endcollapse %}

## Aufbau
Um den Sensor zum Laufen zu bringen schließe ihn einfach an den I²C/Wire Port an !



![Temperatur- und Luftdrucksensor angeschlossen über I2C-Port](../../../../pictures/diy-station/wired_lux.jpg)

## Programmierung - Auslesen des Sensors
Der Sensor kann über die Bibliothek `SenseBoxMCU.h` angesteuert werden.
Nachdem diese eingebunden wurde, muss eine Instanz `bmp` davon erstellt werden
Auf diesem Objekt werden alle Funktionen der Bibliothek aufgerufen:

```arduino
#include <SenseBoxMCU.h>
BMP280 bmp_sensor;
```

{% collapse title="setup() Funktion" %}
In der `setup()`-Funktion muss der Sensor initialisiert werden. Verwende dazu die folgenden Zeilen:

```arduino
void setup(){
    bmp_sensor.begin();
}
```
{% endcollapse %}

{% collapse title="loop() Funktion" %}
Nun muss der Sensor in der `loop()`-Funktion ausgelesen werden.
In den Variablen `temp` und `pressure` stehen dann jeweils die aktuellen Messwerte.

```arduino
void loop(){
    double temp, pressure;
    pressure = bmp_sensor.getPressure();
    temp = bmp_sensor.getTemperature();
}
```
{% endcollapse %}

## Aufgaben

{% collapse title="Aufgabe 1" %}
Verbinde den `BMP280` Sensor mit dem Arduino, und erstelle einen Arduino-Sketch, welcher regelmäßig Luftdruck und Temperatur auf dem seriellen Monitor ausgibt!
{% endcollapse %}

{% collapse title="Aufgabe 2" %}
Du hast erfahren, dass sich aus dem gemessenen Luftdruck die Aufbauhöhe der senseBox bestimmen lässt.
Verwende die Funktion `bmp.altitude(...)` um die Höhe zu berechnen, und gib diese ebenfalls auf dem Seriellen Monitor aus.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Sieh dir das der BMP280-Bibliothek beiliegende Beispiel an. Der Referenzdruck P0 muss an die derzeitige Wetterlage angepasst werden: [Hier](https://www.meteoblue.com/en/weather/webmap/index/?variable=mslp_pressure&level=surface&lines=none) findest du den aktuellen Luftdruck.*
</div>
{% endcollapse %}
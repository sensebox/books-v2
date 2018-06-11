# DIY - Temperatur und Luftfeuchtigkeit {#head}

<div class="description">Damit wir täglich den Wetterbericht im Internet, im Fernsehen, in der Zeitung oder in Apps sehen können, werden nicht nur Satellitendaten ausgewertet. Auch Daten von Wetterstationen am Boden spielen eine wichtige Rolle bei der Vorhersage. Aber wie funktioniert die Messung und Darstellung von Temperatur- und Luftfeuchtigkeitswerten?</div>
<div class="line">
    <br>
    <br>
</div>



## Voraussetzungen
- [Die Verwendung von Software-Bibliotheken](../../erste-schritte/libraries-hinzufuegen.md)
- [Der serielle Datenbus I²C](../../grundlagen/serielle_datenbus.md)
- [Der serielle Monitor](../../grundlagen/der_serielle_monitor.md)

## Ziele der Station
In dieser Station beschäftigen wir uns mit dem Temperatur- und Luftfeuchtigkeitssensor der senseBox, dem HDC1080.

## Materialien
- kombinierter Temperatur und Luftfeuchtigkeitssensor `HDC1080`

## Grundlagen
{% collapse title="HDC1080 Sensor" %}
Der `HDC1080`, aus der Serie HDX10XX von Texas Instruments, ist ein kombinierter Temperatur- und Luftfeuchtigkeitssensor. Der Sensor kann die Luftfeuchtigkeit von 0% bis 100%, sowie die Temperatur von -40°C bis 125°C bei einer Genauigkeit von ±2% bzw. von ±0,2°C messen.
{% endcollapse %}

{% collapse title="I²C Bus" %}
Die Kommunikation des Sensors mit dem Mikrokontroller läuft über den [seriellen Datenbus I²C](../../grundlagen/serielle_datenbus.md).
Anders als bei einfachen digitalen oder analogen Eingängen, können an den Datenbus mehrere I²C-Geräte (wie z.B. Sensoren oder Displays) parallel geschaltet werden.
Jedes Gerät hat dabei eine eindeutige Kennung, damit der Datenbus jedes Einzelne davon zuordnen und separat ansprechen kann.
{% endcollapse %}

## Aufbau
Steckt den Schaltkreis wie ihr ihn unten in der Grafik seht.

![Temperatur- und Luftfeuchtigkeitssensor angeschlossen über I2C-Port](../../pictures/diy-station/wired_tempairhumi.jpg)

## Programmierung

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher das du die Software-Bibliotheken korrekt installiert hast. Wie das geht wurde dir in <a href ="/../../erste-schritte/libraries-hinzufuegen.html">Schritt 3</a> erklärt!
</div>
Als erstes muss eine Instanz des Sensors angelegt werden.
```arduino
HDC1080 hdc;
```
{% collapse title="setup() Funktion" %}
In der `setup()`-Funktion soll der Sensor nun gestartet werden: 

```arduino
hdc.begin();
```

{% endcollapse %}

{% collapse title="loop() Funktion" %}
Nachdem du den Sensor, wie oben beschrieben, initialisiert hast, kannst du zwei Befehle in der `loop()`-Funktion nutzen, um einen Temperatur- bzw. Feuchtigkeitswert ausgeben zu lassen:
```arduino
hdc.getHumidity();
hdc.getTemperature();
```
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Beim Speichern der Messwerte sollten die Variablen den gleichen Datentypen haben wie die Rückgabewerte der Messfunktionen. In unserem Fall sind das beides float Werte.!
</div>
{% endcollapse %}

## Aufgaben

{% collapse title="Aufgabe 1" %}
Baue die oben beschriebene Schaltung nach und versuche den HDC1008 auszulesen und Dir die gemessenen Daten im seriellen Monitor anzeigen zu lassen.
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Schaue dir hierfür die Beispiele aus den <a href="/../../erste-schritte/software-installation.md">Ersten Schritten</a> an!
</div>
{% endcollapse %}
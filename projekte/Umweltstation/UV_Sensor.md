# DIY - UV-Licht Sensor {#head}

<div class="description"></div>
<div class="line">
    <br>
    <br>
</div>

## Vorraussetzungen
- [Die Verwendung von Software-Bibliotheken](../../erste-schritte/schritt-1-software-installation.md)
- [Der serielle Datenbus I²C](../../grundlagen/serielle_datenbus.md)
- [Der serielle Monitor](../../grundlagen/der_serielle_monitor.md)

## Ziele der Station
In dieser Station verwenden wir einen UV-Lichtsensor, um die Intensität des UV-Lichts in Mikrowatt je Quadratzentimeter (μW / cm²) zu erfassen.
Anschließend wollen wir den Wert in den UV-Index umrechnen.

##Materialien
- UV-Licht Sensor `VEML6070`

##Grundlagen

{% collapse title="UV-Strahlung" %}
Ultraviolettstrahlung (UV-Licht) ist für den Menschen unsichtbare elektromagnetische Strahlung mit einer Wellenlänge, die kürzer ist als die sichtbaren Lichtes, aber länger als die der Röntgenstrahlung.
UV-Licht umfasst die Wellenlängen von 100 nm bis 380 nm.
Wegen der Absorption in der Erdatmosphäre - insbesondere in der Ozonschicht - dringt nur wenig UV-B-Strahlung (100 - 300 nm) bis zur Erdoberfläche vor.
UV-A-Strahlung (300 - 380 nm), welche weniger gefährlich für die menschliche Haut ist, wird weniger durch die Atmosphäre absorbiert.

UV-Lichtintensität wird in Mikrowatt je Quadratzentimeter (μW / cm²) gemessen.
Unser Sensor misst im Bereich von ca. 300 - 400 nm, nimmt also nur UV-A Strahlung auf (für genauere Angaben beachte das [Datenblatt](https://github.com/sensebox/resources/raw/master/datasheets/datasheet_veml6070-UV-A-Light-Sensor.pdf)).
{% endcollapse %}

##Aufbau

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/wired_lux.jpg" width="500"/>

Schließe den Sensor an die senseBoxMCU an, wie es in der Grafik dargestellt ist.

## Programmierung
<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher das du die Software-Bibliotheken korrekt installiert hast. Wie das geht wurde dir in <a href ="/../../erste-schritte/schritt-3-libraries-hinzufuegen.html">Schritt 3</a> erklärt!
</div>
Als erstes muss eine Instanz des Sensors angelegt werden.
```arduino
VEML6070 vml;
```
{% collapse title="setup() Funktion" %}
In der `setup()`-Funktion soll der Sensor nun gestartet werden: 

```arduino
vml.begin();
```
{% endcollapse %}

{% collapse title="loop() Funktion" %}
In der `loop()`-Funktion können wir mit dem Befehl 'getIlluminance()' die aktuelle gemessene Lichtintensität abrufen:

```arduino
  vml.getUvIntensitiy
```
<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Möchtest du dir den UV-Index anzeigen lassen so musst du dir vorher eine Funktion deklarieren die das für dich übernimmt. Wie das geht erfährst du im nächsten Schritt!
</div>
{% endcollapse %}

{% collapse title="Umrechnung in den UV-Index" %}
Da im Alltag häufig mit dem [UV-Index](https://de.wikipedia.org/wiki/UV-Index) gearbeitet wird, wollen wir nun eine Methode schreiben, welche uns den Messwert in einen UV-Index umrechnet:

```arduino
/*
 * getUVI()
 * erwartet den Messert des UV-Sensors als Eingabeparameter
 * und gibt den entsprechenden Wert auf dem UV-Index zurück
 */
float getUVI(int uv) {
    
  float refVal = 0.4; // Referenzwert: 0,01 W/m^2 ist äquivalent zu 0.4 als UV-Index
  float uvi = refVal * (uv * 5.625) / 1000;
  return uvi;
}
```
{% endcollapse %}

## Aufgaben

{% collapse title="Aufgabe 1" %}
Versuche dir im seriellen Monitor nun mithilfe der  `getUVI()`-Funktion den UV-Index ausgeben zu lassen. 
{% endcollapse %}

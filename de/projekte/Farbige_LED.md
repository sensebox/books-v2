# Mehrfarbige LED {#head}

<div class="description">
In dieser Station wollen wir lernen, wie man eine mehrfarbige LED verwendet.
</div>
<div class="line">
    <br>
    <br>
</div>

## Materialien 
* RGB-LED
* 1x 470Ω Widerstand
* JST-Adapterkabel

## Aufbau 
Um die mehrfarbige LED mit der senseBoxMCU zu verbinden stecke die Pins wie in der Abbildung unten. Auf der senseBoxMCU musst du einen der 3 Digitalen Steckplätze verwenden.

![Verkabelung der mehrfarbigen LED](https://github.com/sensebox/resources/raw/master/gitbook_pictures/projekte/MehrfarbigeLEDKlein.png)

## Programmierung

Nun kannst du mit dem Schreiben des Programms beginnen, indem du die NeoPixel Bibliothek einbindest. Anschließend solltest du eine Variable erstellen, in der du speicherst, an welchem Pin deine LED angeschlossen wird. Dann erstellst du ein Objekt `rgb_led` über das du die LED später steuern kannst.

{% collapse title="Definieren der globalen Variablen" %}
```arduino
#include <Adafruit_NeoPixel.h>
int pin = 1;

Adafruit_NeoPixel rgb_led = Adafruit_NeoPixel(1, pin, NEO_GRB + NEO_KHZ800);
```
{% endcollapse %}

Nun muss die LED in der `setup()`-Methode gestartet werden.
{% collapse title="setup()-Funktion" %}
```arduino
void setup() {
  rgb_led.begin();
}
```
{% endcollapse %}

Die Farbe der LED lässt sich über den Befehl `rgb_led.Color(x, y, z)` bestimmen. Jede der Variablen `x`,`y` und `z` kann man durch eine Zahl zwischen 0 und 255 ersetzen, wobei `x` für den Rotanteil, `y` für den Grünanteil und `z` für den Blauanteil steht. Anschließend muss die definierte Farbe an die LED übergeben werden. Dies geschieht über den Befehl `rgb_led.setPixelColor(0, rgb_led.Color(x,y,z))`. Sichtbar wird die gewählte Farbe mit dem Befehl `rgb_led.show()`. Im folgenden siehst du ein Beispiel, das die drei Grundfarben Rot, Grün und Blau der Reihe nach leuchten lässt.

{% collapse title="loop()-Funktion" %}
```arduino
void loop() {
  // rot
  rgb_led.setPixelColor(0,rgb_led.Color(255, 0, 0));
  rgb_led.show();
  delay(200);
  // gruen
  rgb_led.setPixelColor(0,rgb_led.Color(0, 255, 0));
  rgb_led.show();
  delay(200);
  // blue
  rgb_led.setPixelColor(0,rgb_led.Color(0, 0, 255));
  rgb_led.show();
  delay(200);
}
```
{% endcollapse %}

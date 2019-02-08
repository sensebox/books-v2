# Lügendetektor {#head}

<div class="description">
In diesem Kapitel soll es darum gehen, einen Lügendetektor zu bauen. Den Lügendetektor, den wir zusammen erstellen, misst die Leitfähigkeit deiner Haut. Bei normalen und professionellen Lügendetektoren werden neben der Leitfähigkeit deiner Haut auch dein Atem und dein Puls überwacht. In der Fachsprache wird der Lügendetektor auch Polygraph (Vielschreiber) genannt, was aus  Sicht der Wissenschaftler deutlich mehr Sinn ergibt, da dieser nicht über richtig oder falsch entscheidet, sondern die physischen Parameter misst.  </div>
<div class="line">
    <br>
    <br>
</div>

## Material
* senseBox_MCU
* OLED-Display
* STJ-Adapterkabel
* STJ-Male Kabel
* Male-Male Kabel
* 1*470Ω Widerstand



## Aufbau
Zunächst wird das JST-Adapterkabel an dein Display und an ein I2C/Wire Port angeschlossen. Nun steckst du das JST-Male Kabel in einen Digital Port deiner Wahl. Das schwarze Kabel (GND) findet in diesem Experiment keine Verwendung. Das rote Kabel (5V) steckst du auf dein Breadboard und verlängerst dieses mittels eines Male-Male Kabels, sodass hier ein freies Ende entsteht. Schließe nun eines der beiden übrig gebliebenen Kabel (grün/gelb) ebenfalls in ein freiliegenden Slot des Breadboards. Über einen Widerstand verbindest du nun das Kabel (grün/gelb) mit ein Male-Male Kabel, sodass du jetzt ein freies Ende hast, welches du in die Hand nehmen kannst. Das Kabel dient als dein Leitfähigkeitssensor.

## Programmierung

{% collapse title="1. Auslesen des Sensors" %}

```arduino
int val = 0;        //Teil der Deklaration
int analogPin = A1;

void setup() {
  Serial.begin(9600);
}
void loop() {
  val = analogRead(analogPin); // Analog Pin, welcher ausgelesen wird
  Serial.println(val);
}

```
{%endcollapse%}

{% collapse title="2. Einbindung des Display" %}
```arduino
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <senseBoxIO.h>
#include <Plot.h>
const double TIMEFRAME = 15;

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);
Plot DataPlot(&display);
void setup() {
  senseBoxIO.powerI2C(true);
  delay(2000);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3D);
  display.display();
  delay(100);
  display.clearDisplay();
  DataPlot.setXLabel("T");
  DataPlot.setYLabel("Lf");
  DataPlot.setXRange(0, 15);
  DataPlot.setYRange(0, 1024);
  DataPlot.setXTick(5);
  DataPlot.setYTick(0);
  DataPlot.setXPrecision(0);
  DataPlot.setYPrecision(0);
}
void loop() {
  DataPlot.clear(); double starttime = millis();
  double t = 0;
  while (t <= TIMEFRAME) {
    t = (millis() - starttime) / 1000.0;
    int value = ... // Was soll ausgegeben werden ?
    DataPlot.addDataPoint(t, value);
  }
  display.display();
  display.clearDisplay();
}

```
{% endcollapse %}

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
        <b>Aufgabe: Nachdem du nun die Grundlage für das Erstellen des Sensors bekommen hast, kannst du jetzt selber versuchen diesen mit deinem Display zu verknüpfen, sodass die Werte über einen Graphen dargestellt werden. 
</div>

## Lösung
{% collapse title="gesamter Quellcode" %}

```arduino
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <senseBoxIO.h>
#include <Plot.h>
const double TIMEFRAME = 15;

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);
Plot DataPlot(&display);
int val = 0;
int analogPin = A1;

void setup() {
  Serial.begin(9600);
  senseBoxIO.powerI2C(true);
  delay(2000);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3D);
  display.display();
  delay(100);
  display.clearDisplay();
  DataPlot.setXLabel("T");
  DataPlot.setYLabel("Lf");
  DataPlot.setXRange(0, 15);
  DataPlot.setYRange(0, 1024);
  DataPlot.setXTick(5);
  DataPlot.setYTick(0);
  DataPlot.setXPrecision(0);
  DataPlot.setYPrecision(0);
}
void loop() {
  DataPlot.clear(); double starttime = millis();
  double t = 0;
  while (t <= TIMEFRAME) {
    val = analogRead(analogPin);
    int wert = val;
    t = (millis() - starttime) / 1000.0;
    int value = wert / 2;
    DataPlot.addDataPoint(t, value);
    Serial.println(wert);
  }
  display.display();
  Serial.println(val);
  display.clearDisplay();
}
```
{% endcollapse %}


## Durchführung
{% collapse title="Wie bekomme ich ein Ergebnis?" %}
Um nun den im Display dargestellen Graphen zu verändern, musst du lediglich die beiden Kabel des Digital Ports jeweils in einer Hand halten. Du solltes eine Veränderung im Display feststellen, was die Leitfähigkeit deiner Haut wiederspiegelt.
{% endcollapse %}
{%collapse title="Was bedeutet das Ergebnis?" %}
Das Ergebnis zeigt, dass deine Haut ein Leiter für Strom ist. Dies wird durch den hohen y-Wert (Lf), welcher im Graphen gezeigt wird dargestellt.
{% endcollapse %}


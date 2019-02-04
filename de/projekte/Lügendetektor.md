# Lügendetektor {#head}

<div class="description">
In diesem Kapitel soll es darum gehen, einen Lügendetektor zu bauen. Den Lügendetektor, den wir zusammen erstellen, misst die Leitfähigkeit deiner Haut. Bei normalen und professionellen Lügendetektoren werden neben der Leitfähigkeit deiner Haut auch dein Atem und dein Puls überwacht. In der Fachsprache wird der Lügendetektor auch Polygraph (Vielschreiber) genannt, was aus  Sicht der Wissenschaftler deutlich mehr Sinn ergibt, da dieser nicht über richtig oder falsch entscheidet, sondern die physischen Parameter misst. Der Lügendetektor findet seine Verwendung in Strafprozessen, wenn auch äußerst selten und dient dazu, den Schuldigen mittels seiner Aussagen zu entlasten. Aufgrund der potentiellen Fehlerquote und oftmals nicht zuverlässigen Ergebnisse des Polygraphen wird dieser nicht gegen den Schuldigen verwendet.  </div>
<div class="line">
    <br>
    <br>
</div>

## Material
* senseBoc_MCU
* OLED-Display
* STJ-Adapterkabel
* STJ-Male Kabel
* Male-Male Kabel

## Aufbau
Zunächst wird das JST-Adapterkabel an dein Display und an ein I2C/Wire Port angeschlossen. Nun steckst du das JST-Male Kabel in einen Digitalen Port deiner Wahl. Das schwarze Kabel (GND) findet in diesem Experiment keine Verwendung. Das rote Kabel (5V) steckst du auf dein Breadboard und verlängerst dieses mittels eines Male-Male Kabels. Schließe nun eines der beiden übrig geblibenen Kabel ebenfalls in ein freiliegenden Slot des Breadboards und schaffe über einen Widerstand eine Verbindung mit dem Kabel. Dieses Kabel dient als Leitfähigkeitssensor.

## Programmierung

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

  Serial.begin(9600);
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


## Durchführung
{% collapse title="Wie bekomme ich ein Ergebnis?" %}
Um nun den im Display dargestellen Graphen zu verändern, musst du lediglich die beiden Kabel des digitalen Ports jeweils in einer Hand halten. Du solltes eine Veränderung im Display feststellen, was die Leitfähigkeit deiner Haut wiederspiegelt.
{% endcollapse %}
{%collapse title="Was bedeutet das Ergebnis?" %}
Das Ergebnis zeigt, dass deine Haut ein Leiter für Strom ist. Dies wird durch den hohen y-Wert (Lf) dargestellt.
{% endcollapse %}


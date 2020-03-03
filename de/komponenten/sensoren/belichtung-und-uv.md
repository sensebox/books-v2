# Beleuchtungsstärke und UV-Strahlung Sensor {#head}
<div class="description">

Auf diesem senseBox-Bauteil sind zwei Sensoren zusammengelegt.<br><br>
Die Lichtintensität wird mit dem TSL45315-Sensor von AMS-TAOS gemessen. Dieser Sensor erkennt die Lichtverhältnissen ähnlich dem menschlichen Auge und gibt die Helligkeitswerte direkt in Lux, mit großem Dynamikbereich (3 Lux bis 220k Lux), aus.<br><br>
Der zweite Sensor ist ein Vishay VEML6070 Ultravioletter (UV)-Lichtsensor. Dieser wandelt die Intensität des UV-Lichts der Sonne in digitale Daten um. Der Sensor hat eine hervorragende UV-Empfindlichkeit und Linearität über Filtron™-Technologie. Er hat eine gute UV-Strahlungsmessung auch bei langer Sonnen-UV-Belastung und kann exzellenter Temperaturschwankungen ausgleichen.
</div>
<div class="line">
    <br>
    <br>
</div>

[Hier](https://sensebox.kaufen/product/licht-sensor) gehts zum Sensor in unserem Shop.

![Beleuchtungsstärke und UV-Stahlung](https://github.com/sensebox/resources/raw/master/gitbook_pictures/tsl%20top.png)

## Technische Details

### Belichtungssensor

* Betriebsspannung: 3,3V - 5V tolerantes I2C/TWI Interface
* on-board 2,5V Spannungsregler
* on-board Pegelwandler

### UV-Sensor

* Betriebsspannung: 2,7V - 5,5V I2C Interface
* Unterstützt Quittierungsfunktion (Active Acknowledge-Funktion)
* Temperaturkompensation: -40°C bis +85°C
* Software-Abschaltregelung für Immunität bei flackernden Leuchtstofflampen

### Maße
* 25mm x 25mm x 9mm
* Gewicht: 2,5 g

Link zum den Datenblättern: [AMS-TAOS TSL45315](https://learn.watterott.com/sensors/tsl45315/), [Vishay VEML6070](https://www.vishay.com/docs/84277/veml6070.pdf)

## Programmierung

```arduino
#include "SenseBoxMCU.h"
#include <SPI.h>

TSL45315 tsl;
VEML6070 veml;

void setup() {
    Serial.begin(9600);
    tsl.begin();
    veml.begin();
}

void loop() {
    Serial.print("Illuminance: ");
    Serial.println(tsl.getIlluminance());
    Serial.print("UV-Intensity: ");
    Serial.println(veml.getUvIntesity());
}
```
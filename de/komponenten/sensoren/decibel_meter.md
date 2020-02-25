# Lautstärkesensor {#head}
<div class="description">Der DFRobot SEN0232 misst die Lautstärke und gibt die Messwerte in Dezibel aus. </div>

<div class="line">
    <br>
    <br>
</div>

[Hier](https://sensebox.kaufen/product/lautstarkesensor) gehts zum Sensor in unserem Shop.

![Der Geräuschpegel-Sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/decibel_meter.jpg)

## Technische Informationen

* Maße: 60mm x 43mm x 9mm
* "Plug-in-and-Go" senseBox kompatibel
* Eingangsspannung: 3,3-5V
* Ausgangsspannung: 0,6-2,6V
* Messspanne: zwischen 30dBA und 130 dBA akkurat
* Messintervall: 125ms

Link zum Datenblatt: [DFRobot SEN0232 Gravity](https://www.mouser.de/pdfdocs/SEN0232_Web.pdf)

![Anschluss des Sensors](https://github.com/sensebox/resources/raw/master/gitbook_pictures/SoundLevelMeter.png)


## Programmierung mit Arduino

### Werte auslesen
Im ersten Code-Snippet wird lediglich die Eingangsspannung ausgelesen und in Dezibel konvertiert. Der Wert wird auf der Konsole in Arduino angezeigt.
Sind diese halbwegs nachvollziehbar - werden größer wenn man z.B. in der Nähe des Sensors klatscht und werden dementsprechend kleiner, wenn keine wahrnehmbare Geräuschkulisse vorliegt - dann ist der Sensor einsatzbereit.
```arduino
#define SoundSensorPin A1  //this pin read the analog voltage from the sound level meter
#define VREF  5.0  //voltage on AREF pin,default:operating voltage

void setup()
{
    Serial.begin(115200);
}

void loop()
{
    float voltageValue,dbValue;
    voltageValue = analogRead(SoundSensorPin) / 1024.0 * VREF;
    dbValue = voltageValue * 50.0;  //convert voltage to decibel value
    Serial.print(dbValue,1);
    Serial.println(" dBA");
    delay(125);
}
```

### Werte auf der OpenSenseMap anzeigen
Hier wollen wir nun die ausgelesenen Werte auf der OseM darstellen. Dafür ist es vorteilhaft z.B. den gemittelten Wert von einer Minute (ggf. 10 Minuten) zu benutzen, damit das Phänomen nachvollziehbar dargestellt wird. Dazu ein Beispiel, wenn man an einer verkehrsreichen Straße Daten aufnehmen möchte, kann es trotzdem sein, dass gerade in dem Moment der Messung kein Auto vorbei fährt oder dass der Verkehr gerade aufgrund von Ampeln oder Stau, stillsteht.
```arduino
#include "SenseBoxMCU.h"
#define SoundSensorPin A1  //this pin read the analog voltage from the sound level meter
#define VREF  5.0  //voltage on AREF pin,default:operating voltage
#define ARR_SIZ 30

Bee* b = new Bee();
OpenSenseMap osem("SenseBox-ID",b);

float getSoundLevel(){
    float voltageValue,dbValue;
    voltageValue = analogRead(SoundSensorPin) / 1024.0 * VREF;
    dbValue = voltageValue * 50.0;  //convert voltage to decibel value
    return dbValue;
}

void setup() {
  b->connectToWifi("SSID","Passwort");
  delay(1000);
}

void loop() {
  float decValues[30];
  for (int i = 0; i < ARR_SIZ; i++) {
    decValues[i] = getSoundLevel();
    delay(2000);
  }
  float dbValueSum = 0;
  for (int j = 0; j < ARR_SIZ; j++) {
    dbValueSum += decValues[j];
  }
  int dbValue = round((dbValueSum / ARR_SIZ) * 100000 ) / 100000;
  osem.uploadMeasurement(dbValue,"Sensor-ID");
}
```

![Werte auf der OpenSenseMap](https://github.com/sensebox/resources/raw/master/gitbook_pictures/osem_showcase.png)
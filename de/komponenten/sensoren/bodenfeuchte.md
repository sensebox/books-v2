# Bodentemperatur- & Feuchtigkeitssensor {#head}

<div class="description">
	Der truebner SMT50 ist ein kapazitiver Bodentemperatur- und Feuchtigkeitssensor und eignet sich daher gut für diverse Anwendung im heimischen Garten.<br>
    Kapazitive Bodenfeuchtesensoren erzeugen ein elektrisches Feld um ihre Messelektroden herum.<br>Das Feld dringt in den umgebenden Boden ein. Die Messelektronik des Sensors ermittelt die resultierende elektrische Kapazität der Elektroden. Je höher der Wassergehalt im Boden ist,desto größer wird die Messkapazität des Sensors.
</div>
<div class="line">
    <br>
    <br>
</div>

![Bodentemperatur- & Feuchtigkeit](https://github.com/sensebox/resources/raw/master/gitbook_pictures/smt50_top.png)

## Technische Details
- Versorgungsspannung: 3.3 - 30 VDC (Gleichspannung)
- Stromaufnahme ca. 2.7 mA (gemessen bei 12VDC)
- Messbereich volumetrischer Wassergehalt: 0 – 50 % (bei +/- 3% Genauigkeit)
- Messbereich Temperatur: -20 bis +85 °C (bei +/- 1,0°C Genauigkeit)
- Messverfahren: FDR (Frequency Domain Response)
- Messsignal: symmetrisch, bipolar differentiell

### Maße
- Abmessungen: ca. 13,5 cm x 2,15 cm
- Gewicht inkl. 10m Kabel: ca. 235 g

## Integration des SMT50 in bestehendes senseBox:home Setup
Vorraussetzung für das Tutorial ist eine bereits auf der openSenseMap registrierten senseBox:home Station.<br>In unserem Fall haben wir bereits eine senseBox:home mit WiFi Modul für die Datenübertragung, sowie Sensoren für Temperatur & Luftfeuchtigkeit und Luftdruck & Temperatur im Vorfeld registriert und online gebracht.

![Unsere angelegte Station auf der openSenseMap](https://github.com/sensebox/resources/raw/master/gitbook_pictures/station_osem_home.JPG)

### Erweiterung der Hardware
Hierzu muss einfach nur das JST-Kabel des Sensors in den Digital A Anschluss an der senseBox gesteckt werden. 

### Integration in die openSenseMap
Melde dich nun auf der OSeM an. Wähle deine Station im Dashboard aus und klicke auf 'Editieren'. Unter dem Reiter Sensoren befindet sich oben rechts ein `+` Symbol, damit können zwei neue Einträge für die beiden Phänomene angelegt werden. Gebe nun nacheinander für die beiden zusätzlichen Messwerte die benötigten Informationen ein. Zuletzt sollten diese noch gespeichert werden, dazu musst du auf das Disketten-Symbol klicken.

![Sensorenbearbeitung OSeM](https://github.com/sensebox/resources/raw/master/gitbook_pictures/sensoren_edit.jpg)

### Skript erweitern
Das Skript mit den neu hinzugefügten Phänomenen sollte nun ebenfalls auf der Konfigurationsseite unter dem Reiter Skript zu finden sein. Trage deine WLAN-Daten ein und kopiere das Skript mit 'Strg+A' in Arduino.<br><br>
Damit die Messwerte hochgeladen werden können, müssen die jeweiligen Funktionen zum Auslesen der Sensoren implementiert werden und die Uploadfunktion zur OSeM angepasst werden.<br>Ungefähr ab Zeile '75' sollten sich die Sensor IDs befinden. Wenn alles funktioniert hat, sollten dort auch die IDs für die neu erstellten Phänomene auftauchen:
```arduino
// sensor IDs
// Temperatur
const char TEMPERSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27905";
// rel. Luftfeuchte
const char RELLUFSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27904";
// Luftdruck
const char LUFTDRSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27903";
// Volumetrischer Wassergehalt
const char BELEUCSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27901";
// Bodentemperatur
const char UVINTESENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27902";
```

Der folgende Part kommt in die 'loop()' Funktion, möglichst ans Ende bevor die Werte mit submitValue() an die OSeM geschickt werden.<br>Nun muss noch eine Funktion zum Auslesen der Daten geschrieben werden. Dazu nutzen wir die Funktion 'analogRead()' und rechnen diesen Wert in Volt um:
```arduino
float voltage1 = analogRead(1) * (3.3 / 1024.0);
float voltage2 = analogRead(2) * (3.3 / 1024.0);
```
Diese Werte können wir nun mit der Formel aus dem [Datenblatt](http://www.truebner.de/sites/default/files/SMT50_Flyer_deutsch.pdf) in Temperatur bzw Feuchtigkeitswerte umwandeln:
```arduino
float soilTemperature = (voltage1 – 0.5) / 0.01;
float soilMoisture = voltage2 / 3 * 50;
```
Zuletzt geben wir noch den Befehl, dass die Messwerte an die openSenseMap gesendet werden:
```arduino
addMeasurement(VOLUMESENSOR_ID, soilMoisture);
addMeasurement(BODENTSENSOR_ID, soilTemperature);
```

Wenn du alles richtig gemacht hast, werden deine Werte nun auf der OSeM angezeigt!<br>
![Station openSenseMap](https://github.com/sensebox/resources/raw/master/gitbook_pictures/station_osem.jpg)
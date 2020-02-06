#Gassensor {#head}
<div class="description">

Mit dem Sensor BME680 kannst du eine verschiedene Auswahl an Phänomenen messen. Lufttemperatur, relative Luftfeuchtigkeit, Luftdruck und Luftqualität können mit dem BME680 bestimmt werden. Er ist also ein echter Alleskönner. 
</div>

<div class="line">
    <br>
    <br>
</div>

![Der BME680](https://github.com/sensebox/resources/raw/master/gitbook_pictures/bme.png)

## Technische Details
* Schnelle Reaktionszeit von weniger als 10 Sekunden
* "Plug-in-and-Go" senseBox kompatibel
* Abweichung bei Gasmessungen von +-15%

## Anschluss und Programmierung

Mit dem mitgelieferten Verbindungskabel kannst du deinen Gassensor mit dem "I2C"-Port der senseBoxMCU verbinden. 
Ist dies erledigt können wir nun im Programmcode den Sensor initialisieren und uns die ersten Messwerte ausgeben lassen.

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher, dass du das aktuellste Board-Support-Package installiert hast, da du die korrekten Software-Bibliotheken benötigst. Wie das geht wurde dir in <a href ="../erste-schritte/board-support-packages-installieren.md">Schritt 2</a> erklärt!
</div>
<div class="box_error">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Der BME Gassensor ist nicht mit dem BMP280 Luftdrucksensor kompatibel. Das heißt du kannst nur einen der beiden gleichzeitig anschließen und auslesen!
</div>


Als erstes muss die Bibliothek geladen und eine Instanz des Sensors erstellt werden.

```arduino 
#include <SenseBoxMCU.h>
BME680_Class BME680;
```
{% collapse title="setup() Funktion" %}
In der `setup()`-Funktion soll der Sensor nun gestartet werden: 

```arduino
void setup(){
    // Normalen seriellen Port initialisieren 
    Serial.begin(9600);
    while(!Serial);

    // Starten des Sensors
    BME680.begin(I2C_STANDARD_MODE);
    delay(2000);

    // Oversampling der Sensoren festlegen
    BME680.setOversampling(TemperatureSensor, Oversample16);
    BME680.setOversampling(HumiditySensor,   Oversample16);
    BME680.setOversampling(PressureSensor,   Oversample16);
    Serial.println(F("- Setting IIR filter to a value of 4 samples"));
    // IIR Filter auf 4 Werte setzen
    BME680.setIIRFilter(IIR4);
    BME680.setGas(320, 150); // 320�c for 150 milliseconds


}
```

{% endcollapse %}

{% collapse title="loop() Funktion" %}
In der `loop()`-Funktion können wir mit dem Befehl `getSensorData()` die aktuellen Messwerte auslesen.

```arduino
void loop(){

    static int32_t temperature, humidity, pressure, gas;     // Variable um Messwerte zu speichern
    BME680.getSensorData(temperature, humidity, pressure, gas); // Aktuelle Messwerte auslesen und speichern


    Serial.print(humidity / 1000.0, 2);                      // rel. Luftfeuchte in milli-prozent
    Serial.print(F("%rel. Luftfeuchte "));
    Serial.print(pressure / 100.0, 2);                       // Luftdruck in Hectopascals
    Serial.print(F("hPa "));
    Serial.print(gas / 100.0, 2);                            // Luftqualität in mOhm
    Serial.println(F("mOhm"));
    delay(5000);

}
```
{% endcollapse %}


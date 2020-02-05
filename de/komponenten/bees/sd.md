# mSD-Bee {#head}
<div class="description">Mit dem mSD-Bee können die Daten der senseBox auf einer SD-Karte gespeichert werden. So kann man messen, auch wenn keine Internetanschluss in der Nähe der senseBox ist.</div>

<div class="line">
    <br>
    <br>
</div>

![microSD-Bee](https://github.com/sensebox/resources/raw/master/gitbook_pictures/msd_new%20bottom.png)

# Technische Informationen
* "Plug-in-and-Go" senseBox kompatibel
* Port für miniSD-Karte
* Bezeichnung: mSD-Bee
* Maße: 24mm x 21mm x 9mm
* Gewicht: 2,4 g


# Hinweise

Achtung: Das SD-Bee wird ohne SD-Karte geliefert, falls du im senseBox-Shop bestellst.


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Achte darauf, dass die mSD-Bee an den XBEE2-Stecker der senseBox-MCU angeschlossen werden muss, anonsten 
    kann es zu Problemen beim Speichern deiner Messwerte kommen.
</div>

# Beispiel 
Im folgenden Beispiel zeigen wir dir, wie du deine Daten auf einer SD-Karte speichern kannst. 
{% collapse title="Deklarierung der Objekte und setup()" %}
```arduino
// Einladen der Bibliotheken
#include <SPI.h>
#include <SD.h>
#include "SenseBoxMCU.h"

HDC1080 hdc;
File myFile;
// Name der Datei auf der SD-Karte
// Achte darauf, dass dieser Name (ohne Dateiendung) nicht länger als 8 Buchstaben lang sein darf! 
String fileName = "SenseBox.txt";

void setup()
{ 
    // Starten der SD-Bee
    SD.begin(28);
    // Öffnen der Datei auf der SD-Karte
    myFile = SD.open(fileName, FILE_WRITE);
    myFile.close();

    hdc.begin();
};
```
{% endcollapse %}

In der `loop()`-Funktion speichern wir nun unsere Messwerte in der eben erstellten Datei.

{% collapse title="loop()" %}
```arduino
void loop()
{
    // Datei öffnen mit Schreibzugriff
    myFile = SD.open(fileName, FILE_WRITE);
    myFile.println(hdc.getTemperature());
    // Nach Benutzung wird die Datei wieder geschlossen
    myFile.close();
};
```
{% endcollapse %}

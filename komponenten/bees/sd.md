# mSD-Bee {#head}
<div class="description">Mit dem mSD-Bee können die Daten der senseBox auf einer SD-Karte gespeichert werden. So kann man messen, auch wenn keine Internetanschluss in der Nähe der senseBox ist.</div>

<div class="line">
    <br>
    <br>
</div>

![microSD-Bee](../../pictures/msd_new%20bottom.png)

# Technische Informationen
* "Plug-in-and-Go" senseBox kompatibel
* Port für miniSD-Karte
* Bezeichnung: mSD-Bee
* Maße:24mm x 21mm x 9mm
* Gewicht:2,4 g


# Hinweise

Achtung: Das SD-Bee wird ohne SD-Karte geliefert, falls ihr im senseBox-Shop bestellt.

# Beispiel 
Im folgenden Beispiel zeigen wir euch wie ihr eure Daten auf einer SD-Karte speichern könnt. 
{% collapse title="Deklarierung der Objekte und setup()" %}
```arduino
// Einladen der Bibliotheken
#include <SPI.h>
#include <SD.h>
#include "SenseBoxMCU.h"

HDC1080 hdc;

void setup(){
    
    // Starten der SD-Bee
    SD.begin(28);
    // Öffnen der Datei auf der SD-Karte
    dataFileSenseBox = SD.open("SenseBox.txt", FILE_WRITE);
    dataFileSenseBox.close();

    hdc.begin();
    };
```
{% endcollapse %}

In der `loop()`-Funktion speichern wir nun unsere Messwerte in der eben erstellten Datei.

{% collapse title="loop()" %}
```arduino
void loop(){
    dataFileSenseBox.println(hdc.getTemperature());
    };
```
{% endcollapse %}
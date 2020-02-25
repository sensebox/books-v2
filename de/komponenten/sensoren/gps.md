# GPS {#head}
<div class="description">Das GPS-Modul empfängt die Position (Längengrad/Breitengrad/Höhe) der senseBox. Diese kann für mobile Anwendungen, z.B. die mobile Datenübertragung auf die openSenseMap, genutzt werden. Dieser Sensor ist kompatibel mit den gängingen GNS Systemen (GPS, QZSS, GLONASS, BeiDou, Galileo) und basiert auf dem u-blox CAM-M8Q Multi GNSS Modul.</div>

<div class="line">
    <br>
    <br>
</div>

[Hier](https://sensebox.kaufen/product/gps) gehts zum GPS-Modul in unserem Shop.

![Der GPS-Sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/gps%20top.png)

Der GPS Sensor wird an einen I2C-Port angeschlossen.

# Technische Details
- "Plug-in-and-Go" senseBox kompatibel durch Breakout-Board mit JST-Anschluss
- Simultanempfang von GPS, QZSS, GLONASS, BeiDou
- Navigationsempfindlichkeit von –167 dBm
- Empfänger: 72-Kanal u-blox M8
- Update-Rate: Single GNSS - bis zu 18Hz, Dual GNSS bis zu 10Hz
- Stromaufnahme: 30mA im Dauerbetrieb bzw. 10mA Power Save Mode 1Hz bei 3V

Link zum Datenblatt: [CAM M8Q](https://sensebox.kaufen/assets/datenblatt/senseBox-CAM-M8Q_v20.pdf)

# Beispiel 

```arduino
#include <senseBoxIO.h>
#include <TinyGPS++.h>
#include <SPI.h>
#include <Wire.h>

Wire.requestFrom(0x42,10);
while (Wire.available())
    gps.encode(Wire.read());
```

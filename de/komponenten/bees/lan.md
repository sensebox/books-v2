# LAN-Bee {#head}
<div class="description">
Verbindungsstück um die senseBox mit dem Internet zu verkabeln. Die Daten der senseBox werden per per LAN-Kabel an direkt an einen Router übertragen. Das LAN-Bee basiert auf dem W5500 Mikrochip von Wiznet, welcher einen hohe Ethernet Datenübertragungsrate ermöglicht.</div>

<div class="line">
    <br>
    <br>
</div>

[Hier](https://sensebox.kaufen/product/lan-bee) gehts zum LAN-Bee in unserem Shop.

![LAN Bee](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Lan_bottom.png)

## Technische Informationen

* "Plug-in-and-Go" senseBox kompatibel
* 3.3V Betriebsspannung mit 5V I/O Signal Toleranz
* Bezeichnung: W5500
* Maße: 46mm x 25mm x 12mm
* Gewicht: 9,2 g

Link zum gesamten Datenblatt: [WIZnet W5500 Data Sheet](http://wizwiki.net/wiki/lib/exe/fetch.php/products:w5500:w5500_ds_v109e.pdf)

## Verbidungstest

```arduino
#include <SPI.h>
#include <Ethernet.h>
#include <senseBoxIO.h>

void setup()
{
    // Initialisiert den seriellen Monitor
    Serial.begin(9600);
    // Startet W5500 (LAN-Bee) in XBEE1 Socket neu
    senseBoxIO.powerXB1(false);
    delay(250);
    senseBoxIO.powerXB1(true);
    Ethernet.init(PIN_XB1_CS);
}

void loop()
{
    // Gibt IP-Adresse der senseBox aus
    ip = Ethernet.localIP();
    Serial.print("IP: ");
    Serial.println(ip);
    delay(5000);
}
```

## Hinweise und Tipps

Das LAN-Bee wird ohne LAN-Kabel geliefert. Es eignen sich aber insbesondere flache LAN-Kabel, welche man einfach durch Fenster und Türen nach außen legen kann. Insbesondere in Kombination mit Power over Ethernet (PoE) kann die senseBox dann einfach betrieben werden.

# WiFi-Bee {#head}
<div class="description">Verbindungsstück um die senseBox mit dem Internet zu verbinden. Die Daten der senseBox werden per WLAN (WiFi) in das bestehende Netzwerk übertragen. Das WiFi-Bee basiert auf dem ATWINC1500 Mikrochip von Atmel, welcher einen sehr geringen Energieverbrauch und eine hohe Reichweite hat.</div>

<div class="line">
    <br>
    <br>
</div>

[Hier](http://ww1.microchip.com/downloads/en/DeviceDoc/ATWINC15x0-MR210xB-IEEE-802.11-b-g-n-SmartConnect-IoT-Module-Data-Sheet-DS70005304C.pdf) gehts zum WiFi-Bee in unserem Shop.

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Bei einigen unserer WiFi Bees vom Typ WINC1500 kann es vorkommen, dass eine veraltete Firmware (Version 19.4.4) installiert ist. Das kann zu Übertragungsproblemen führen. Sollten diese Probleme bei dir auftreten, schaue dir <a href="../../hilfe/additional-info.md">diese Hilfeseite</a> an, um die Firmware zu aktualisieren.
</div>
<br>

![WiFi-Bee](https://github.com/sensebox/resources/raw/master/gitbook_pictures/wifi_new_bottom.png)

## Technische Informationen

* "Plug-in-and-Go" senseBox kompatibel
* Single-band 2.4GHz b/g/n
* Betriebsspannung: 3.0V to 4.2V
* Verschlüsselungsprotokolle: WPA/WPA2 Personal, TLS, SSL
* Netzwerkdienste: DHCP, DNS, TCP/IP (IPv4), UDP, HTTP, HTTPS
* Bezeichnung: WINC1500
* Maße: 24mm x 25mm x 9mm
* Gewicht: 3,5 g

Link zum gesamten Datenblatt: [Atmel ATWINC1500 Data Sheet](http://ww1.microchip.com/downloads/en/DeviceDoc/ATWINC15x0-MR210xB-IEEE-802.11-b-g-n-SmartConnect-IoT-Module-Data-Sheet-DS70005304C.pdf)

## Verbindungstest

Um die Verbindung des Bees mit dem Internet zu testen, also quasi die Funktion sowohl der Komponente, als auch des Netzwerks zu prüfen, nutze den folgenden Sketch:

```arduino
#include <SPI.h>
#include <WiFi101.h>
#include <senseBoxIO.h>

void setup()
{
    // Initialisiert den seriellen Monitor
    Serial.begin(9600);

    // Starte WINC1500 (WiFi-Bee) in XBEE1 Socket neu
    senseBoxIO.powerXB1(false);
    delay(250);
    senseBoxIO.powerXB1(true);
}

void loop()
{
    delay(5000);
    // Gibt installierte und aktuellste Firmware Version aus
    String fv = WiFi.firmwareVersion();
    Serial.print("Firmware installed: ");
    Serial.println(fv);
    Serial.print("Latest firmware: ");
    Serial.println(WIFI_FIRMWARE_LATEST_MODEL_B);

    // Gibt IP-Adresse der senseBox aus
    IPAddress ip = WiFi.localIP();
    Serial.print("IP: ");
    Serial.println(ip);
    delay(5000);
}
```

Wenn bei allen Ausgaben im seriellen Monitor Werte angezeigt werden, insbesondere die IP-Adresse in etwa in der Form _192.107.256.4_ ausgegeben wird, ist das WiFi-Bee richtig initialisiert und die senseBox kann mit dem Internet genutzt werden.

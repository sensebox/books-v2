# Schritt 3: Anschluss und Verkabelung {#head}

<div class="description">Durch das I2C Stecksystem ist der Anschluss der Sensoren und Komponenten an die senseBox MCU sehr einfach. Hier siehst du noch einmal eine grobe Übersicht über die einzelnen Komponenten</div>

<div class="line">
    <br>
    <br>
</div>

## Anschluss von Bees

Der Anschluss der Bees ist ganz einfach. Durch das Stecksystem reicht es, das Bee direkt auf den Microcontroller aufzusetzen. Dabei gibt es nur zwei Dinge zu beachten: 
1. Die Ausrichtung auf dem Board
2. Der richtige Portanschluss auf dem Microcontroller

### WiFi-Bee, Ethernet-Bee und LoRa-Bee
Diese Bees werden alle auf den Port 1 aufgesteckt. Den richtigen Port erkennst du an der Beschriftung: ``XBEE1``. Die richtige Richtung beim Aufstecken erkennst du an der 7-eckigen Kennzeichnung auf dem Board und der Bee.
![Exemplarischer Anschluss der WiFi-Bee an die MCU (XBEE1)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/wifi-anschluss.png)

### mSD-Bee
Die SD-Bee wird an Port 2 aufgesteckt, welcher standardmäßig dafür freigeschaltet ist. Den richtigen Port erkennst du an der Beschriftung: ``XBEE2``. Die richtige Richtung beim Aufstecken erkennst du an der 7-eckigen Kennzeichnung auf dem Board und der Bee.

![Anschluss der mSD-Bee an die MCU (XBEE1)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/sd-anschluss.png)

## Anschluss von einfachen Sensoren
Die Sensoren, welche mit der senseBox gekauft werden können, sind mit den beiliegenden "I2C to I2C" Kabeln sehr einfach anzuschließen. Dafür musst du die Steckplätze auf dem Board verwenden die mit ``I2C/Wire`` gekennzeichnet sind.

![Anschluss einfacher Sensoren)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/sensor-anschluss.jpg)

## Anschluss vom Feinstaubsensor
Der Feinstaubsensor, der mit der senseBox gekauft werden kann, hat ein beiliegendes passendes Kabel, welches den Sensor mit dem Board verbinden kann. Hierfür musst du die Steckplätze auf dem Board verwenden die mit ``UART/Serial`` gekennzeichnet sind. Weitere Infos zum Anschluss des Feinstaubsensors findest du übrigens [hier](../komponenten/sensoren/feinstaub.md).

![Anschluss Feinstaubsensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/feinstaub-anschluss.jpg)

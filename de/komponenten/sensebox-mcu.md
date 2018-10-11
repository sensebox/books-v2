# senseBox MCU {#head}

<div class="description">Der senseBox-Microcontroller ist speziell für die Bedürfnisse der senseBox entwickelt. Deshalb hat der Microcontroller insbesondere drei Eigenschaften: er ist schnell, energiesparend und hat einen großen Programmspeicher.
<br>Auch ohne Vorkenntnisse kann der Microcontroller ganz einfach mit der Übertragung eines vorgefertigten Sketches in 10 Minuten "programmiert" werden. Für fortgeschrittene Programmierer kann wie gewohnt die Arduino IDE eingesetzt werden um neue und individuelle Projekte durchzuführen.</div>
<div class="line">
    <br>
    <br>
</div>




![Die senseBox MCU](../../../pictures/mcu_one_top.png)

## Technische Spezifikationen

### Prozessor
Der Prozessor basiert auf dem ARM Cortex-M0+ Prozessor aus der SAM D21 Familie von Microchip.

### Schnittstellen
Sensoren und Aktoren werden über die bewährten Schnittstellen wie I2C, UART und digitale I/Os mit einem robusten JST-Steckersystem angesprochen (5V tolerant). 

### Datenübertragung
Über die beiden XBee kompatiblen Sockel werden UART oder SPI Module angeboten. Wahlweise kann die Datenübertragung dadurch per WLAN, LAN, oder LoRa in Echtzeit durchgeführt werden, oder auf einer Mikro-SD Karte abgespeichert werden.  

### Features
1. Crypto Authentication für OTA (Over the Air) 
2. Firmware-Upgrades durch den ATECC608A von Microchip
3. Integrierter BMX055 Sensor von Bosch, womit sich die Beschleunigung, die Neigung und die Orientierung zum Erdmagnetfeld bestimmen lassen
4. USB CDC+MSC Bootloader (Arduino compatible)
5. Schnittstellen: I2C = 5 (erweiterbar mit I2C Hub) | 2 UART | 6 analoge und digitale IOs


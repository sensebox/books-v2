# senseBox MCU {#head}

<div class="description">The senseBox-Microcontroller (MCU) is designed and developped for the special needs of a senseBox. Therefore the microcontroller is focussed on especially the following three features: speed, low in energy usage and a big program storage.<br>

However, if you want to participate in openSenseMap the senseBox team offers you a guideline to program it without prior knowledge in coding. For advanced programmer the Arduino IDE can be used to access the board and create individual projects.</div>
<div class="line">
    <br>
    <br>
</div>




![The senseBox MCU](../pictures/mcu_one_top.png)

## Technical Specifications

### Processor
The processor is based on a ARM Cortex-M0+ processor form the SAM D21 family by Microchip.

### Interface
Sensors and actors can be activated using standard interfaces like I2C, UART and digitale I/Os with a robust JST-Connecting system (5V tolerant). 

### Data transmission
Using the both Bee compatible sockets, UART or SPI models can be offered. Therefore, real time data transmission via Wifi, LAN, or LoRa is offered as well as saving data on a Mikro-SD card.  

### Features
1. Crypto Authentication for OTA (Over the Air) 
2. Firmware-Upgrades using the ATECC608A by Microchip
3. Integrierted BMX055 sensor by Bosch, for measuring accelaration, affinity and orientation
4. USB CDC+MSC Bootloader (Arduino compatible)
5. Interfaces: I2C = 5 (more using a I2C Hub) | 2 UART | 6 analoge digital digitale IOs


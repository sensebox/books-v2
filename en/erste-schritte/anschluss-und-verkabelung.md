# Step 3: Pin and Wiring {#head}

<div class="description">Due to the I2C plug-in system, the pin of the sensor and components to the senseBox MCU is very easy. You will here see a complete overview of all the components.</div>

<div class="line">
    <br>
    <br>
</div>

## Connection of Bees

The connection of the Bees is very simple. Through the plug-in system, it is sufficient to put the Bee directly on the microcontroller. There are only two things to consider: 1. The orientation on the board and 2. The correct port connection on the microcontroller.

### WiFi Bee, Ethernet Bee and LoRa Bee
These Bees are all attached to port 1. The correct port can be recognized by the caption: ``XBEE1``. The correct direction when plugging you can tell by the 7-sided marking on the board and the Bee.


![Exemplary connection of the WiFi Bee to the MCU (XBEE1)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/wifi-anschluss.png)

### mSD-Bee
The SD-Bee is attached to port 2, which is enabled by default. The correct port can be recognized by the caption: ``XBEE2``. The correct direction when plugging you can tell by the 7-sided marking on the board and the Bee.


![Connection of mSD-Bee to the MCU (XBEE1)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/sd-anschluss.png)

## Connection of Simple Sensors

The sensors that can be purchased with the senseBox are very easy to connect with the enclosed "I2C to I2C" cables. For this you need to use the slots on the board marked with ``I2C/Wire``.

![Connection of simple sensors)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/sensor-anschluss.jpg)

## Connection of the Fine Dust Sensor
The fine dust sensor that can be purchased with the senseBox has an enclosed matching cable which can connect the sensor to the board. For this you need to use the slots on the board marked  ``UART/Serial``. You can find further information about the connection of the particulate matter sensor
 [here](../komponenten/sensoren/feinstaub.md).

![Connection of the fine dust sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/feinstaub-anschluss.jpg)

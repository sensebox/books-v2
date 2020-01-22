# Step 3: Pin and Wiring {#head}

<div class="description">Due to the I2C plug-in system, the pin of the sensor and components to the senseBox MCU is very easy. You will here see a complete overview of all the components.</div>

<div class="line">
    <br>
    <br>
</div>

## Pin of Bees

The pin of the bees is very simple. The plug-in system makes it possible to just plug the bee on to the microcontroller. You have to consider only two things: 1. The orientation on the board and 2. the correct portpin on the microcontroller.

### WiFi-Bee, Ethernet-Bee and LoRa-Bee
These bees all have to be plugged in port 1. You can identify the correct port by the marking: ``XBEE1``. The 7-angled sign on the board and the bee shows you the correct plug-in direction.

![Exemplary connection of the WiFi-Bee to the MCU (XBEE1)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/wifi-anschluss.png)

### mSD-Bee
The SD-bee has to be plugged on to port 2, which is by default activated. The marking: ``XBEE2`` shows you the correct port and the 7-angled sign the correct direction of the pin.

![Connecting the mSD-Bee to the MCU (XBEE1)](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/sd-anschluss.png)

## Pin of the Basic Sensors
The sensor, which can be bought with the senseBox are easy to connect with the enclosed "I2C to I2C" wires. Please use the slots that are marked with ``I2C/Wire``.

![Connection of simple sensors](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/sensor-anschluss.jpg)

## Pin of the Fine Dust Sensor
The fine dust sensor, which can be bought with the senseBox has an enclosed and fitting wire that connects sensor and board. Therefore you have to use the slots with the marking: ``UART/Serial``. [Here](../komponenten/sensoren/feinstaub.md) you can find further information to the pin of the fine dust sensor.

![Connection fine dust sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plug-in-components/feinstaub-anschluss.jpg)

# The Serial Data Bus{#head}

<div class="description">The Arduino can communicate with other devices via a data bus. A data bus describes a system that allows two or more devices to exchange data in an orderly fashion. With our Arduino, the second device would almost always be a sensor or an actuator.</div>
<div class="line">
    <br>
    <br>
</div>



## Der I²C-Bus
The I²C bus is an easy to use data bus to transfer data. Here, the data is transferred between the Arduino and the other device through two cables called `SDA` und `SCL`.
The `SDA` (serial data) designated line is the data line over which the actual data is transmitted. The  `SCL` (serial clock) line is also called the clock line and specifies the clock frequency. On the Arduino you will find the two ports as `A4` (SDA) and `A5` (SDC).

If several I²C devices are to be connected to the Arduino, this is implemented via a series connection. The SDA cable on the first sensor would therefore be extended to the next sensor on the same row of the breadboard:

![senseBox MCU with Breadboard](../../../pictures/mcu%20v2%20top.png)

If you use the I²C bus on the Arduino, the Arduino is always considered a master device and all other devices on the bus as a slave. Each slave has its own address in the form of a hexadecimal number, with which it can be clearly addressed. Usually, each device brings with it a range of bus addresses that can be used. The respective addresses can be found in the data sheet of the manufacturer.

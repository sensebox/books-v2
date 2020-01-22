# Air Pressure  {#head}

<div class="description">The measurement of the air pressure allows not only weather forecasts but also indirectly the determination of the height of the sensor.
</div>
<div class="line">
    <br>
    <br>
</div>

## Requirements
- [The Use of Software Libraries](../../erste-schritte/board-support-packages-installieren.md)
- [The Serial Data Bus I²C](../../grundlagen/serielle_datenbus.md)
- [The Serial Monitor](../../grundlagen/der_serielle_monitor.md)

## Materials
- Air pressure sensor `BMP280`

## Basics

{% collapse title="BMP280 sensor" %}
The BMP280 sensor measures both air pressure (hPa) and temperature (° C). This sensor is controlled via the [I²C Protokoll](../../grundlagen/serielle_datenbus.md), and requires an operating voltage of 3.3 to 5 volts.


I²C devices are connected to the senseBoxMCU via the I²C / Wire port and thus read out digitally (see also The [ serial databus](../../grundlagen/serielle_datenbus.md)).
The I²C address of the BMP280 can be switched via the`SDO` pin:
If `SDO` is at ground (`GND`) the address is `0x76`, otherwise `0x77`. <b>This communication is handled by the senseBox library for us.
</b>
{% endcollapse %}

{% collapse title="Height determination via the air pressure" %}
Since the air pressure depends on the altitude above sea level, the body height of the senseBox can also be determined via the `BMP280`. For this purpose, a reference pressure `P0` is needed whose height is known. Usually, the current air pressure is used at sea level. Since the air pressure can fluctuate greatly depending on the current weather, this "altitude measurement" but is not very accurate, and must be recalibrated again and again.
{% endcollapse %}

## Construction
To get the sensor up and running just plug it in to the I²C / wire port!



![Temperature and air pressure sensor connected via I2C port](https://github.com/sensebox/resources/raw/master/gitbook_pictures/diy-station/wired_lux.jpg)

## Programming - Reading the sensor
The sensor can be controlled via the `SenseBoxMCU.h` library. After this has been integrated, an instance `bmp` of it must be created. On this object all functions of the library are called:

```arduino
#include <SenseBoxMCU.h>
BMP280 bmp_sensor;
```

{% collapse title="setup()-function" %}
In the `setup ()`-function, the sensor must be initialized. Use the following lines
```arduino
void setup(){
    bmp_sensor.begin();
}
```
{% endcollapse %}

{% collapse title="loop()-function" %}
Now the sensor has to be read in the `loop ()`-function. The variables `temp` and `pressure` then each contain the current measured values.

```arduino
void loop(){
    double temp, pressure;
    pressure = bmp_sensor.getPressure();
    temp = bmp_sensor.getTemperature();
}
```
{% endcollapse %}

## Exercises

{% collapse title="Exercise 1" %}
Connect the `BMP280` sensor to the Arduino, and create an Arduino sketch, which regularly outputs air pressure and temperature on the serial monitor!
{% endcollapse %}

{% collapse title="Exercise 2" %}
You have learned that the construction height of the senseBox can be determined from the measured air pressure. Use the function `bmp.altitude (...)`  to calculate the height and output it on the serial monitor as well.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
     Take a look at the example enclosed with the BMP280 library. The reference pressure P0 must be adapted to the current weather conditions: [here](https://www.meteoblue.com/en/weather/webmap/index/?variable=mslp_pressure&level=surface&lines=none) you will find the current air pressure.*
</div>
{% endcollapse %}

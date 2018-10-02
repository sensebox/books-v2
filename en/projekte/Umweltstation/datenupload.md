# Data Upload{#head}


<div class="description">If we set up our weather station, it would be nice to be able to retrieve the data from any location. There is the [openSenseMap](https://openSenseMap.org/) ((OSeM), which collects various sensor data online and displays it on a map. Via the Ethernet or WiFi-Bee or we can connect our senseBox to the Internet and upload the data to the OSeM.
</div>
<div class="line">
    <br>
    <br>
</div>

## Requirements
- [Using Software Libraries](../../erste-schritte/board-support-packages-installieren.md) : You should have looked at the first steps for this purpose.
- [**Bees**](../../grundlagen/Bees.md):
   Read this chapter to learn how the senseBox MCU can use Bees to establish a network connection to transfer data to openSenseMap.

## Destinations of the station
In this station, the integration of a sensor into the openSenseMap is shown by way of example so that the data obtained is available online.


## Materials
*  WiFi-Bee
*  At least one (arbitrary) sensor

## Programming
In the chapter [Bees](/../../grundlagen/Bees.md) you have already learned how to connect to the Internet, now let's see how we can continuously upload our metrics to openSenseMap. As already described there, we must first create the instances for the openSenseMap and provide our Wi-Fi network + access data.


{% collapse title="Declaration of the objects" %}
```arduino
#include "SenseBoxMCU.h"
Bee* b = new Bee(); // Instance of the Bee
OpenSenseMap osem("senseBox ID",b); // Instance of the openSenseMap
HDC1080 hdc; // Instance of the temperature and humidity sensor
void setup(){
    b->connectToWifi("SSID","PW"); // Vconnect to the Wifi
    hdc.begin();
    };
```
{% endcollapse %}

In the `loop ()`-function we upload our measurements.

{% collapse title="loop()" %}
```arduino
void loop(){
    osem.uploadMeasurement(hdc.getTemperature(),"Sensor ID")
    delay(5000);
    };
```
{% endcollapse %}

## Exercises
{% collapse title="Exercise 1" %}
Familiarize yourself with openSenseMap (see Requirements) and register your senseBox with the sensors you have previously connected.
{% endcollapse %}



{% collapse title="Exercise 2" %}
In the Arduino sketch, which you received when registering in Exercise 1, the reading of sensors is still missing. Extend the sketch from the OSeM registry so that your connected sensors are read out.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
      Follow the instructions in the <a href="../../grundlagen/digitale_signale.md">basic chapter</a>.You can reuse most of your previous code!<
</div>

{% endcollapse %}

# Mobile Station {#head}

<div class="description">
A mobile senseBox can upload data to openSenseMap from anywhere you have internet!<br>
How this works is explained in this chapter with an example.
</div>
<div class="line">
    <br>
    <br>
</div>

## Material
 - senseBoxMCU
 - GPS module
 - senseBox JST adapter cable

## Basics
A mobile senseBox has many applications. For example, would you like to measure the concentration of particulate matter, your daily route to work or school? The GPS module receives the position (longitude / latitude / high) of the senseBox. This sensor is compatible with the popular GNS systems (GPS, QZSS, GLONASS, BeiDou, Galileo) and is based on the u-blox CAM-M8Q Multi GNSS module.

![A mobile senseBox on openSenseMap](../pictures/projekte/feinstaubmobil.png)

## Construction
In order for the GPS module to have a signal throughout the measurement period, and thus be able to request the location, you must make sure that nothing obscures the module. Ideally, you attach it outside the case for the measurement period.

For the power supply during the measurement period you can, for example, use a power bank. Some power banks turn off, if too little power is drawn (for example, when a cell phone is fully charged), so that it may happen that the power bank does not permanently power the senseBoxMCU. Before measuring, make sure that this will not be the case.

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
   It may take a while for the GPS sensor to receive correct signals. Especially when used for the first time this process can take up to 5 minutes. After a network has been detected, the information is internally stored in the sensor so it can go faster with the next use!
</div>


## Programming

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
   Make sure you have the latest board support package installed because you need the correct software libraries. How to do that was explained to you in <a href ="../erste-schritte/board-support-packages-installieren.md"> step 2</a>!
</div>

How the GPS module is programmed is exemplified by a temperature measurement. Each metric of a mobile station is uploaded along with its latitude and longitude values.

First, an instance of the sensors must be created. In addition, we define 2 more variables for latitude and longitude:

```arduino
#include "SenseBoxMCU.h"
HDC1080 hdc;

GPS gps;
float lat; // Geographic latitude
float lon; // Geographic longitude
```
In the `setup()`-function we now start the two sensors.
{% collapse title="setup() function" %}

```arduino
void setup(){
    hdc.begin();
    gps.begin();
}
```
{% endcollapse %}

The `loop()`-function now queries the location of the station and uploads it to the openSenseMap together with the value for temperature..

{% collapse title="loop() function" %}
```arduino
void loop(){
    lat = gps.getLatitude();
    lon = gps.getLongitude();
    temp = hdc.getTemperature();

    osem.uploadMobileMeasurement(temp,"SensorID",lat,lon)
}
```
{% endcollapse %}

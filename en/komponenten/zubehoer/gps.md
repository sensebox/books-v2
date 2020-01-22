# GPS {#head}
<div class="description">The GPS module receives the position (longitude/latitude/altitude) of the senseBox. This can be used for mobile applications, e.g. mobile data transfer to the openSenseMap. This sensor is compatible with all common GNS systems (GPS, QZSS, GLONASS, BeiDou, Galileo) and is based on the u-blox CAM-M8Q Multi GNSS module.</div>

<div class="line">
    <br>
    <br>
</div>

![GPS module](https://github.com/sensebox/resources/raw/master/gitbook_pictures/gps%20top.png)


## Setup 
In order for the GPS module to have a signal throughout the entire measurement period and thus be able to request the location, you must ensure that the module is not covered by anything. Ideally, you should install it outside the housing for the measurement period. 

For the power supply during the measurement period you can use a power bank. Some Powerbanks switch themselves off, too little power is drawn (e.g. when a mobile phone is fully charged), so it can happen that the Powerbank does not permanently supply the senseBoxMCU with power. Before measuring, make sure that this is not the case. The GPS sensor is connected to the I2C ports. 

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    It may take a while for the GPS sensor to start receiving correct signals. This process can take up to 15 minutes, especially if you are using it for the first time. After a network has been detected, the information is stored internally in the sensor so that it can go faster with the next use!
</div>


## Programming

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Make sure you have the latest board support package installed, as you need the correct software libraries. How this works was explained to you in <a href ="../../erste-schritte/board-support-packages-installieren.md">step 2</a>.
</div>

How the GPS module is programmed is illustrated here using a temperature measurement as an example. Each measured value of a mobile station is uploaded together with the corresponding values for latitude and longitude.

The first step is to create an instance of the sensors. Additionally we define 2 variables for latitude and longitude.
```arduino
#include "SenseBoxMCU.h"
HDC1080 hdc;

GPS gps;
float lat; // Geographical latitude
float lon; // Geographical longitude
```
In the `setup` function we now start the two sensors. 
{% collapse title="setup() Function" %}

```arduino
void setup(){
    hdc.begin();
    gps.begin();
}
```
{% endcollapse %}

The `loop` function now queries the location of the station and uploads it together with the value for temperature to the openSenseMap. 

{% collapse title="loop() Function" %} 
```arduino
void loop(){
    lat = gps.getLatitude();
    lon = gps.getLongitude();
    temp = hdc.getTemperature();

    osem.uploadMobileMeasurement(temp,"SensorID",lat,lon)
}
```
{% endcollapse %}



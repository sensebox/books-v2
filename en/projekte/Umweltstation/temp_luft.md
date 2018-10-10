# DIY - Temperature and Humidity {#head}

<div class="description">So that we can see the weather report daily on the Internet, on television, in the newspaper or in apps, not only satellite data are evaluated. Also data from weather stations on the ground play an important role in the prediction. But how does the measurement and display of temperature and humidity values work?</div>
<div class="line">
    <br>
    <br>
</div>



## Requirements
- [The Use of Software Libraries](../../erste-schritte/board-support-packages-installieren.md)
- [The Serial Data Bus I²C](../../grundlagen/serielle_datenbus.md)
- [The Serial Monitor](../../grundlagen/der_serielle_monitor.md)

## Destinations of the Station
In this station we are dealing with the temperature and humidity sensor of the senseBox, the HDC1080.

## Materials
- combined temperature and humidity sensor `HDC1080`

## Basics
{% collapse title="HDC1080 Sensor" %}
The `HDC1080`, from the Texas Instruments HDX10XX series, is a combined temperature and humidity sensor. The sensor can measure the humidity from 0% to 100%, as well as the temperature from -40 ° C to 125 ° C with an accuracy of ± 2% or ± 0.2 ° C.
{% endcollapse %}

{% collapse title="I²C Bus" %}
The communication of the sensor with the microcontroller runs over the [I²C Bus](../../grundlagen/serielle_datenbus.md).
Unlike simple digital or analog inputs, multiple I²C devices (such as sensors or displays) can be connected in parallel to the data bus.
Each device has a unique identifier so that the data bus can assign each one of them and address them separately.
{% endcollapse %}

## Construction

Plug in the circuit as you see it in the graphic below.


![Temperature and humidity sensor connected via I2C port](../../pictures/diy-station/wired_tempairhumi.jpg)

## Programming

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
      Make sure you have the latest board support package installed because you need the correct software libraries. How to do that was explained to you in  <a href ="../erste-schritte/board-support-packages-installieren.md">step 2</a> !
</div>

First, an instance of the sensor must be created.
```arduino
#include "SenseBoxMCU.h"
HDC1080 hdc;
```
{% collapse title="setup()-function" %}
In the `setup()`-function the sensor should now be started:
```arduino
void setup(){
    hdc.begin();
}
```

{% endcollapse %}

{% collapse title="loop()-function" %}
After initializing the sensor as described above, you can use two commands in the `loop ()`-function to output a temperature or humidity
```arduino
void loop(){
    hdc.getHumidity();
    hdc.getTemperature();
}
```
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
When storing the measured values, the variables should have the same data type as the return values of the measuring functions. In our case these are both float values.!
</div>
{% endcollapse %}

## Tasks

{% collapse title="Task 1" %}
Build the circuit which is described above and try to read the HDC1008 out. Print the measured data in the serial monitor.
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    For this look at the examples from <a href="/../../erste-schritte/software-installation.md">First steps</a> !
</div>
{% endcollapse %}

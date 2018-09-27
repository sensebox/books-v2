# DIY - UV light sensor {#head}

<div class="description">When temperatures rise in the summer and we spend more time outdoors, we increasingly try to protect ourselves from the UV rays of the sun, for example with sunscreen. But is there only this UV radiation in summer? What does it look like when the sun is obscured and how much do the values fluctuate? Find out how much UV radiation reaches the earth and measure the UV intensity with your senseBox!   
</div>
<div class="line">
    <br>
    <br>
</div>

## Requirements
- [The use of software libraries](../../erste-schritte/board-support-packages-installieren.md)
- [The serial data bus I²C](../../grundlagen/serielle_datenbus.md)
- [The serial monitor](../../grundlagen/der_serielle_monitor.md)

## Destinations of the station
In this station, we use a UV light sensor to measure the intensity of UV light in microwatts per square centimeter (μW / cm²). Then we want to convert the value into the UV index.

## Materials
- UV-light sensor `VEML6070`

##Basics

{% collapse title="Ultraviolet light" %}
Ultraviolet (UV) light is invisible electromagnetic radiation to humans with a wavelength shorter than visible light but longer than that of X-rays. UV light covers the wavelengths from 100 nm to 380 nm. Because of the absorption in the earth's atmosphere - especially in the ozone layer - only little UV-B radiation (100 - 300 nm) penetrates to the earth's surface. UV-A radiation (300 - 380 nm), which is less harmful to human skin, is less absorbed by the atmosphere.t.

UV light intensity is measured in microwatts per square centimeter (μW / cm²). Our sensor measures in the range of approx. 300 - 400 nm, so it absorbs only UV-A radiation (for more details see the [Datasheet](https://github.com/sensebox/resources/raw/master/datasheets/datasheet_veml6070-UV-A-Light-Sensor.pdf))).
{% endcollapse %}

##Construction

![Exposure and UV sensor connected via I2C port](../../pictures/diy-station/wired_lux.jpg)

Connect the sensor to the senseBoxMCU as shown in the graphic.

## Programming
<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Make sure you have the latest board support package installed because you need the correct software libraries. How to do that was explained to you in  <a href ="../erste-schritte/board-support-packages-installieren.md">step 2</a> !
</div>
First, an instance of the sensor must be created.
```arduino
#include "SenseBoxMCU.h"
VEML6070 vml;
```
{% collapse title="setup() Funktion" %}
In the `setup()`-function the sensor now should be started:

```arduino
void setup(){
    vml.begin();
}
```
{% endcollapse %}

{% collapse title="loop() Funktion" %}
In the `loop ()`-function, we can use the getIlluminance () command to get the current measured light intensity:

```arduino
void loop(){
  vml.getUvIntensity();
}
```
<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
If you want to see the UV index you have to declare a function before that will do it for you. How to do that you will learn in the next step!
</div>
{% endcollapse %}

{% collapse title="Transformation to UV-Index" %}
Since the [UV-Index](https://en.wikipedia.org/wiki/UV-Index) is often used in everyday life, we now want to write a method that converts the measured value into a UV index:


```arduino
/*
 * getUVI()
 * expects the knife of the UV sensor as an input parameter
  * and returns the corresponding value on the UV index
 */
float getUVI(int uv) {

  float refVal = 0.4; // Reference value: 0.01 W / m 2 is equivalent to 0.4 as UV index
  float uvi = refVal * (uv * 5.625) / 1000;
  return uvi;
}
```
{% endcollapse %}

## Exercise

{% collapse title="Exercise 1" %}
In the serial monitor, try using the `getUVI ()`-function to print out the UV index.{% endcollapse %}

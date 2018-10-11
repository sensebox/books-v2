# DIY - Experiments with Light {#head}

<div class="description">If you watch television, turn on the radio, write a message on your smartphone, or warm up food in the microwave, you use electromagnetic energy. Nowadays, all people are constantly reliant on this energy. Without them, life in modern cities would be completely different from what you know.</div>
<div class="line">
    <br>
    <br>
</div>



## Requirements
- [The Use of Software Libraries](../../erste-schritte/board-support-packages-installieren.md)
- [The Serial Data Bus I²C](../../grundlagen/serielle_datenbus.md)
- [The Serial Monitor](../../grundlagen/der_serielle_monitor.md)

## Destinations of the Station
In this station, you use a light sensor to measure the illuminance of visible light in lux.

##Materials
- Light sensor `TSL 45315`

##Basics

{% collapse title="Light intensity" %}
Electromagnetic energy moves in waves through space. Their spectrum ranges from very long radio waves to very short-wave gamma radiation. The human eye can only perceive a very small part of this spectrum: the visible light. Our sun is the source of energy across the spectrum. The Earth's atmosphere protects us from being exposed to excessive levels of radiation that could be life-threatening for us.

For us, the intensity of visible light is particularly interesting. In order to measure the so-called illuminance of the incident light in the visible part of the spectrum, the unit lux is used. It gives the ratio of brightness in lumens per square meter. On a bright sunny day, it is over 100,000 lux, but only about 1 lux in a full moon night.
{% endcollapse %}

{% collapse title="TSL45315 Sensor" %}
For this measurement, we will use the sensor TSL45315 from AMS-TAOS below. The sensor datasheet shows that its sensitivity is matched to the visible part of the light spectrum, which is approximately between 400 and 700 nm. According to the data sheet, this sensor has a range of 2 to 200,000 lux, with a resolution of 3 lux. Furthermore, the sensor must be operated at 3.3V.

The sensor is addressed via the I²C protocol. We address it directly with the following commands taken from the data sheet:


![](../../../../pictures/diy-station/Grundlagen_Station_6.png)
For this measurement, we will use the sensor TSL45315 from AMS-TAOS below. The sensor datasheet shows that its sensitivity is matched to the visible part of the light spectrum, which is approximately between 400 and 700 nm. According to the data sheet, this sensor has a range of 2 to 200,000 lux, with a resolution of 3 lux. Furthermore, the sensor must be operated at 3.3V.
{% endcollapse %}

## Construction

![Exposure and UV sensor connected via I2C port](../../../../pictures/diy-station/wired_lux.jpg)

## Programming
<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
     Make sure you have the latest board support package installed because you need the correct software libraries. How to do that is explained in  <a href ="../erste-schritte/board-support-packages-installieren.md">step 2</a>!
</div>
First, an instance of the sensor must be created.
```arduino
#include "SenseBoxMCU.h"
TSL45315 lux_sensor;
```

{% collapse title="setup() function" %}
In the `setup ()`-function the sensor should now be started:
```arduino
void setup(){
    lux_sensor.begin();
}
```

{% endcollapse %}

{% collapse title="loop() function" %}
In the `loop ()`-function, we can use the getIlluminance () command to get the current measured light intensity:

```arduino
void loop(){
    lux_sensor.getIlluminance();
}
```
{% endcollapse %}

## Exercises

{% collapse title="Exercise 1" %}
Combine the code from this lesson and add a function to output the data in the serial monitor.
{% endcollapse %}

{% collapse title="Exercise 2" %}
Try to turn an LED on and off depending on the lighting. For this the chapter [if/else - Bedingung](/../../grundlagen/if_else_bedingung.md) can be helpful.
{% endcollapse %}

#Fine Dust Sensor {#head}
<div class="description">

With this sensor SDS011 it is possible to determine the fine dust concentration in the air. The sensor outputs two values: the concentration of PM2.5 (particle < 2.5 μm) and PM10 (particle < 10 μm). This sensor is equipped with a small fan to suck in air. Inside is a laser that measures the number of particles together with a photodiode. The results of the measurements are given in μg / m³ (micrograms per cubic meter)
</div>

<div class="line">
    <br>
    <br>
</div>

![Fine dust sensor for PM10 und PM2.5](../../pictures/feinstaub_top.png)

## Technical Details
* Fast reaction time less than 10 seconds 
* "Plug-in-and-Go" senseBox compatibel
* High resolution up to 0.3µg/m3
* Multiple scientific verification of data accuracy

## Parts required for the Set-Up 
![Required (provided) Parts](../../pictures/feinstaub_top_accessoire.png)

   * SDS011 fine dust sensor
   * connecting wire
   * an unit of teflon tube Ø = 6mm inside and Ø = 8mm outside
   * Case
   * Cable gland 16mm

## Connection and Programming

With the supplied connection cable you can connect your fine dust sensor with the "UART / Serial" port of the senseBoxMCU.
Once this is done, we can now initialize the sensor in the program code and have the first measured values output

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Make sure you have the latest board support package installed because you need the correct software libraries. How this works was shown in <a href ="../erste-schritte/board-support-packages-installieren.md">Step 2</a>.
</div>
First, create an instance of the sensor. For this we create 2  variables in which we save our two readings
for PM10 and PM2.5.


```arduino 
#include "SenseBoxMCU.h"
SDS011 my_sds(Serial1) // Serial1 indicates the serial port where you connected the sensor
float p10,p25
```
{% collapse title="setup() Funktion" %}
The sensor should now start in the `setup()`-Function: 

```arduino
void setup(){
    // Initialise normal seriel Port  
    Serial.begin(9600);
    while(!Serial);
    // Initialize the serial port where our sensor is connected
    Serial1.begin(9600);
    delay(5000);

}
```

{% endcollapse %}

{% collapse title="loop() Funktion" %}
In the `loop ()` function we can use the command 'getPm10 ()' and 'getPm25 () to retrieve the currently measured fine dust values:

```arduino
void loop(){
    // Assign variables to measured particulate matter values
    p10 = my_sds.getPm10();
    p25 = my_sds.getPm25();
    //Print values in the console
    Serial.println("P2.5: "+String(p25));
    Serial.println("P10:  "+String(p10));
    delay(1000);
}
```
{% endcollapse %}


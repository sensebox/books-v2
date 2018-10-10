# Traffic Counters {#head}

<div class="description">
The goal is to develop a traffic or passenger counter.<br>
For this we use an ultrasonic distance sensor. The values recorded in this way should be output in the  <b>serial monitor</b> 
</div>
<div class="line">
    <br>
    <br>
</div>

## Materials
* Ultrasonic distance sensor
* senseBox MCU
* senseBox adapter cable

## Basics
The ultrasonic distance sensor uses the sound to determine the distance of objects. The sensor sends out a pulse and measures the time until it receives the echo of the pulse again. From this time one calculates with the help of the speed of sound the distance of the object.

## Construction
The ultrasonic sensor is connected to the senseBox MCU using a JST adapter cable. To do this, connect the JST adapter cable to the Digital A slot. For power supply the VCC pin of the sensor is connected to the red cable (5V) and the GND pin of the sensor to the black cable (GND). For data transmission then the green cable (1) with the echo and the yellow cable (2) with the Trig pin of the sensor is connected.

![Wiring of the ultrasonic sensor](../pictures/projekte/Verkehrszaehler_v2.png)

***Note:*** *You can of course use any slot labeled "Digital", but remember to change the code.*

## Programming

Define the pins where you connected the sensor as usual. In addition, two variables are created in which the measured time and the calculated distance are stored.
```arduino
int trig = 2;  // Trig pin of the sensor is on pin 2
int echo = 1;  // Echo pin of the sensor is connected to pin 1.
unsigned int time = 0;
unsigned int distance = 0;
```

In the `setup()`-function you have to start the *Serial Monitor* and define the pins to which the sensor is connected as input or output. The trigger pin of the sensor must be defined as output and the echo pin as input.


```arduino
void setup(){
    Serial.begin(9600);
    pinMode(trig, OUTPUT);
    pinMode(echo, INPUT);
}
```

The `loop()`-function will start with the commands:

```arduino
void loop(){
    digitalWrite(trig, HIGH);
    delayMicroseconds(10);
    digitalWrite(trig, LOW);
}
```
sent out a 10 microsecond ultrasonic pulse
The following command `time = pulseIn(echo, HIGH);` stores the time until the echo is received in the variable `time`.
Finally, the distance from the time must be calculated, and the values are displayed on the serial monitor.

```arduino
distance = time / 58;
Serial.println(distance);
```
**Note** *We assume that the sound propagates at 348 meters per second. This number is not fixed but [depends on the ambient temperature.](https://en.wikipedia.org/wiki/Speed_of_sound).*

{% collapse title="Exercise 1" %}

Attempts to develop a personal or traffic counter with the help of known commands and the above sketch to the ultrasonic sensor.

Note the following notes:
- Try to evaluate only a certain distance range, so that it does not interfere with movements in the background. Effectively the sensor measures approx. 3 meters.

- To avoid multiple counts of a stationary vehicle, you should program a condition that stops counting until the track is clear, so the sensor measures a preset maximum distance for the lane. For this purpose, a `while` loop offers. First, it must be checked whether something is in the measuring range. As long as the sensor does not measure that the roadway is free again, it should measure again. Only when the lane is clear again increase your counter variable by one.

- To prevent the measured values ​​from fluctuating too much when entering the measuring range, it may help to program a delay of 200ms between the individual measurements.

{% endcollapse %}

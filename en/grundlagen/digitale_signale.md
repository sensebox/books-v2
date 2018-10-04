# Digital Signals {#head}

<div class="description">Digital signals can only accept the values ​​1 or 0 or high or low. So you only use countable elements such as fingers. Hence the term digital, which goes back to the Latin digitus, the finger. To understand how digital signals work and where we work with them, we need to understand building a sketch in Arduino.</div>
<div class="line">
    <br>
    <br>
</div>

## Drive Digital Actuators

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  The digital interfaces of the senseBox MCU have 4 connections: <b>A Ground(GND), a power supply (5V) and two digital pins </b> with which you can control the actors!
</div>

To control a digital actuator - for example, an LED - you need two commands: The first is in the `setup()`, the second in the `loop()`. In the `setup`-function the command `pinMode(1, OUTPUT);` determines that pin 1 has something connected to it, which should be used as output (or OUTPUT). The 1 can be replaced by any other pin number, depending on which Arduino pin you have connected the actuator. The second function in the `loop()`-function is `digitalWrite (1, HIGH);`. Thus, the actuator connected to pin 1 is supplied with power, i.e. switched on. The counterpart to this command would be `digital´Write(1, LOW);` to stop the power supply again. Again, the 1 is replaceable by any other pin number. The sketch should look like this:

```arduino
void setup(){
    pinMode(1,OUTPUT); //Declare the pin on which the LED 
                       // is connected as output
}
void loop(){
    digitalWrite(1,HIGH); // Turn on the LED
}
```

## Reading Digital Sensors
The same pins we used to drive digital actuators can also be used to register input signals. Digital inputs can assume two states just like digital outputs; `HIGH` or `LOW`.
For incoming signals to be processed, they must be stored in [variables](variablen.md).

To store digital signals, a Boolean variable (also called `boolean`),which can take only two values, is particularly suitable. In order to read out a digital sensor, two commands are needed, similar to the control of digital sensors.
In the `loop()`-function the command `pinMode(1, INPUT);` sets pin 1 of the senseBox MCU as input.In the `setup()`-function the command `testVariable = digitalRead(1);` a sensor connected to pin 1 is read out and the value stored in the previously created test variable. Just like driving digital actuators, 1 stands for the pin used and can be replaced by any other digital pin. The sketch should look like this:


```arduino
boolean testVariable = 0;          // declare a new variable of thype boolean

void setup() {
  pinMode(1,INPUT);
}
void loop() {
  testVariable = digitalRead (1); // write the read value into the variable
}
```

The content of the created variable can be displayed in
 [the serial monitor](der_serielle_monitor.md).

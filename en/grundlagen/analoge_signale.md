# Analog Signals {#head}

<div class="description">In contrast to digital signals, analog signals can assume many values between high and low levels. The exact number of values - the resolution of the digital input - for the senseBoxMCU is 1024 values (10 bit). With the senseBoxMCU the maximum level is 3.3 V and the low 0 V. These individual voltage values can be measured with the six analog pins (A0 - A5) of the senseBoxMCU.</div>
<div class="line">
    <br>
    <br>
</div>

## Control analogous actors

The analogWrite() function outputs a voltage to a specified pin. It can be used to run a motor at different speeds, for example.

It is also possible to output multiple voltage values on digital pins. For this purpose the senseBoxMCU generates a continuous square wave with the desired duty cycle and simulates an analog signal (pulse width modulation or PWM). At the senseBoxMCU every PIN can take over this function. The syntax for the command is similar to the digital counterpart analogWrite(pin, <value>). The value can be between 0 (always off) and 255 (always on).

An example program could look like this:
```arduino
void setup(){

}
void loop(){
    analogWrite(A1,60) // Controlling the LED
}
```

## Read analog sensors

The analogRead() function reads the value from an analog pin. The values between 0 V and 3.3 V measured in this way are converted by the built-in 10-bit analog to digital converter (ADC) into integer values between 0 and 1023, i.e. the signal has a resolution of 0.003 Volt (= 3 mV) per value.

Reading an input takes about 0.0001 seconds, so about 10,000 measurements per second can be recorded. It is recommended to display the measured data in the [serial monitor](der_serielle_monitor.md).

An example program could look like this:

```arduino
int val = 0;
string analogPin = 'A1';

void setup(){
    Serial.begin(9600);
}

void loop(){
    val = analogRead(analogPin); // Readout of the sensor
    Serial.println(val) // Output measured value to monitor 
}
```
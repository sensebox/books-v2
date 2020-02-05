# Step 4: Programming the Hardware {#head}
<div class="description"> In this chapter we describe how to program the senseBox using Arduino IDE and how to test the sensors and components of the senseBox.</div>

<div class="line">
    <br>
    <br>
</div>

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  The software we code for senseBox is also called "sketch" in the following.
</div>



## Programming with the Arduino IDE

With the Arduino IDE a sketch can be compiled and uploaded to the senseBox MCU. Now connect the senseBox via USB cable to your computer and follow the next steps.

### Configuration in the Arduino IDE


Before you can upload anything onto the senseBox, you have to adjust a few settings in the ArduinIDE. In the `Tools` tab you have to select the `senseBoxMCU` at the bottom of the list under the`Boards`option.

![Board selection](https://github.com/sensebox/resources/raw/master/gitbook_pictures/select_board_en.png)
Next, under `Tools` -> `Port` select the port number of the USB port where the senseBox MCU is connected to the computer.

![port selection](https://github.com/sensebox/resources/raw/master/gitbook_pictures/select_port_en.png)

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
  The port can only be selected if the senseBox has been connected to the computer with the USB cable.
</div>

### Hello World Example
Copy the example below into your Arduino environment and click on the arrow symbol in the toolbar. In the lower part of the Arduino interface you get feedback on the upload process. If everything worked, the message `Upload completed` should appear there.

```cpp
int ledPin = LED_BUILTIN;

void setup()
{
  pinMode(ledPin, OUTPUT);
}

void loop()
{
  digitalWrite(ledPin, HIGH); // turn the LED on (HIGH is the voltage level)
  delay(1000);                // wait for a second
  digitalWrite(ledPin, LOW);  // turn the LED off by making the voltage LOW
  delay(1000);                // wait for a second
}
```

The text behind the // is a comment that is not evaluated by the compiler. This makes sense so that you can handle the code better and it makes it easier for other programmers to understand their and your own code.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
Unlike a laptop or smartphone ,the senseBox runs no operating system such as Windows, Linux or MacOS. The senseBox MCU is a microcontroller running only the last program that has been uploaded.
</div>

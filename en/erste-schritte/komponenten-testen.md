# Step 4: Programming and Component Testing {#head}
<div class="description"> This chapter describes how the programming of the senseBox works and how you can test the included sensors and components </div>

<div class="line">
    <br>
    <br>
</div>

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    A software program for the senseBox is also called Sketch in the following

</div>



## Programming with the Arduino IDE

With the Arduino IDE a sketch can be compiled and uploaded to the senseBox MCU. Now connect the senseBox via USB cable to your computer and follow the next steps.

### Configuration in the Arduino IDE


Before you can upload anything onto the senseBox, you have to adjust a few settings in the ArduinIDE. In the `Tools` tab you have to select the `senseBoxMCU` at the bottom of the list under the`Boards`option.

![Board selection](../../../pictures/select_board.png)
Next, under `Tools` -> `Port` select the port number of the USB port where the senseBox MCU is connected to the computer.

![port selection](../../../pictures/select_port.png)

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

## Testing Sensors and Internet Connection
<div class="description">Before you connect your senseBox to the openSenseMap, all sensors and the network module should be checked to prevent later errors. With our test program, the measurement process and the network connection can be tested after the station has been set up.</div>

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    The prerequisite for this is the latest version of the board support package from step 2 <a href="board-support-packages-installieren.md">Schritt 2</a>. At the end of step 2 is explained how you can bring the board support package up to date.

</div>

------
### Open the Test Sketch

Open the file `mcu_component_test` (`File` -> `Examples` -> `senseBoxMCU`) from the examples. After uploading this sketch to the MCU, start the serial monitor by clicking on the magnifying glass icon in the upper right corner of the toolbar.
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>

      In the event that the monitor does not open, you should check whether the board is in program mode (press Reset once) and whether the correct port has been selected. Then  trie again with a click on the magnifying glass.
</div>

------
### Options Menu
After you have opened the serial monitor, a menu appears on its functions you can access via the input field:

![options menu](../../../pictures/test_option-menu.png)

To do this, write the number of the corresponding option in the input field and click on "Send". Below is a list of options with brief descriptions.

1. **Find connected sensors**

  Here you can check if all connected sensors have been properly initialized and recognized. For each connected sensor there should be a feedback and a test measurement. In the example below, an HDC1080 temperature and humidity sensor were connected to an `I2C/Wire` port.

    ![Sensortest](../../../pictures/test_option1.png)

    <div class="box_info">
        <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
      If one of the connected sensors is missing during the output, you should check the cable connection and repeat the test.
    </div>

2. **Test connection to openSenseMap**

  This option tests the Internet connection. If the connection is successful, a response with HTTP status 200 should be issued by the server:
    ![Sensortest](../../../pictures/test_option2.png)

    <div class="box_info">
        <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    If you use a WiFi module, it also checks if the latest version of the firmware is installed on the module. If the version is outdated, you should update it:
    </div>

3. **Get security key**

  Each senseBox board has its own unique security key that you can read with this option. It is used to encrypt the connection between the openSenseMap and your senseBox so nobody can manipulate your measurements from the outside.
    <div class="box_info">
        <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
         You need this key in the next step when registering your senseBox on openSenseMap.
    </div>

------

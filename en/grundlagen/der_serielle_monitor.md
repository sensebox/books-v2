# The Serial Monitor {#head}

<div class="description">The serial monitor is a tool to display data via the USB connection of the senseBox MCU directly in the IDE and to transfer data from the computer keyboard to the senseBox MCU.
</div>
<div class="line">
    <br>
    <br>
</div>



This serial monitor can be used to display data on the PC that the microcontroller sends to the PC (numbers or texts). This is very useful, because you have not always connected an LCD display on the microcontroller, on which you could read certain values.


## Start the Serial Monitor

To start the serial monitor, first open the IDE and then click on the icon with the little magnifying glass in the toolbar.


![magnifer-symbol](../pictures/grundlagen/arduino_magnifying_glass.png)

The now open window has an input line with a "Send" button at the top and an output window below it. The output window will continuously display the latest issues. If the check mark is set to Autoscroll, only the most recent editions are displayed. That is, when the output window is full, older data is pushed up out of the visible area of the screen to make room for current output. If you deactivate the autoscroll function, you have to scroll manually via the scroll bar on the right edge.

![serial monitor](../pictures/grundlagen/arduino_serial_monitor_mac.jpg)

## Output Values to the Serial Monitor
To be able to display data in the serial monitor, it must first be initialized. This happens via the function  `Serial.begin(9600)` in the `setup()` Funktion.
The value `9600` defines the baud rate, ie the speed with which data is transferred between the computer and Arduino. The entered value must always correspond to the speed selected in the serial monitor at the bottom right.


To send data to the serial monitor, use the `Serial.print()` and `Serial.println()`.
The first variant of the function simply outputs the data, while the second variant inserts a line break at the end.



As a first try you should now show text in the output window. To display text, it must appear in quotation marks in the parentheses of the function:

```arduino
Serial.println("senseBox rocks!");
Serial.print("senseBox ");
Serial.println("rocks!");
```

The example should in each line the text "senseBox rocks!" output. Note the use of  `print` and `println`!

In addition to text, you can also display the contents of variables in the serial monitor. For this purpose, the name of the respective variable must be entered instead of the desired text:

```arduino
String exampleVariable = "hello world!";
Serial.println(ExampleVariable);
```

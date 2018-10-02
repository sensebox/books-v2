#Help {#head}
<div class="description">
Here you can find frequently asked questions and answers. You can first take a look here and see if your question can be answered. If not have a look in our <a href="https://forum.sensebox.de/">Forum</a> and ask a question.</div>
<div class="line">
    <br>
    <br>
</div>

### Error compiling or transferring code in Arduino

Errors that occur by compiling or transferring codes are often caused by simple mistakes which are easy to fix. Often a `; (Semikolon) `a`} (geschweifte Klammer) `or other small mistakes appear. But the hardest part of troubleshooting is not fixing the error, but finding the error or source of it. To help find the bug, the Arduino IDE gives you an error message.
These are, however, without previous experience with programming, often more cryptic than the actual error.

You will therefore find some common errors along with the error message and instructions for correcting the error. If you can not solve your problem with these, look in the forum and create there if necessary a contribution with the description of your error. For this you should provide the best error message and your sketch.


<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
   Of course, if you publicly present your sketch (for example, in our forum), you should always make sure that you do not disclose personal information to the public. Therefore, you should first look in the code, if you have your Wifi name (SSID) and the password built into the sketch. If this is the case, please delete it from the sketch before publishing it on the internet.
</div>

{% collapse title="I get an error when I connect the fine dust sensor. But I did not change the sketch, what is wrong here?" %}
First, look at the error message. The message can be found in the Arduino IDE below your sketch, in a separate area. Here is your error message. You can scroll through this message with your mouse or drag the area around to see the entire error message.

Even if you have the sketch directly from the openSenseMap without changig it, it can happen that an error with a similar or identical error message like the following occurs:

```arduino
'undefined' was not declared in this scope
   
#define SDS_UART_PORT (undefined)
                          ^
 /Users/user-name/Documents/Arduino/libraries/sketch_jun27a/example_sketch123.ino:77:12: note: in expansion of macro 'SDS_UART_PORT'
   SDS011 SDS(SDS_UART_PORT);
              ^
 /Users/user-name/Documents/Arduino/libraries/example_sketch123/example_sketch123.ino: In function 'void setup()':
example_sketch123:247: error: 'undefined' was not declared in this scope
     undefined.begin(9600);
     ^
exit status 1
'undefined' was not declared in this scope
```

The error is caused here by
<pre>#define SDS_UART_PORT (<b>undefined</b>)</pre>
and
<pre><b>undefined</b>.begin(9600);</pre>


 An error in the configuration has crept in here, because where `undefined` is displayed should stand ` serial1` or `serial2`. The senseBox MCU gets here from your sketch the information to which port the fine dust sensor was connected. However, the senseBox MCU can not handle the information `undefined` and thus does not know which port the fine dust sensor sends the measured values to. 
 
 Please follow the steps to solve the problem:

- Look where the cable from the fine dust sensor is connected at your senseBox MCU.

![Look at which of the two color-coded ports you've connected your fine dust sensor.](pictures/feinstaub_serial_port.jpg)

- If you have connected the fine dust sensor like in the picture to the serial port 1 (red marked port), you can exchange the `undefined` in the sketch with `Serial1`. 

- If you have connected your fine dust sensor besides to serial port 2 (yellow marked in the picture), you can exchange the `undefined` in the sketch with `Serial1`

- Please conduct the change in both lines. So, at the point where `#define SDS_UART_PORT (undefined)` is in the text and where `undefined.begin (9600);` stands.

- Then compile the sketch again. 

Your problem should be solved - Have fun with your fine dust sensor. 

Please visit the [Forum](https://forum.sensebox.de) if you have any problems with this instruction. 

{% endcollapse %}


### Questions about Programming
{% collapse title="I would like to include an extern library. Is it possible?" %}
Yes it is. The senseBox is not limited to the included sensors. You can extend it with any sensors. However externl libraries from the suppliers are often needed. 

This [help website](add-external-libraries.md)! explains how to integrate them manually in the  Arduino IDE. 
{% endcollapse %}


### Questions about the Data transmission

{% collapse title="I have problems with the transmission of data via wifi. What can I do?" %}
It is possible with some of our Wifi Bees of the type WINC1500 that an old firmware (Version 19.4.4) is installed. This can lead to problems with the data transmission. If this is the case, please visit [this help website](../additional-info.md) to refresh the firmware.
{% endcollapse %}

### Questions to the Connection between the senseBox and the Computer

{% collapse title="I have a problem with the connection of my sensBox MCU and my windows-Computer. What can I do?" %}
On some of our Windows computer, it may happen that the USB bootloader drivers are not installed correctly. This can lead to the computer not recognizing the senseBox MCU as a USB device and is therefore unable to transfer files. If you encounter these problems, check [this help page](../win-boot-help.md) to see if your drivers work and update them if necessary.
{% endcollapse %}


### Questions about the senseBox-Project

{% collapse title="Where can I buy the new senseBox version 2" %}
That is easy, visit sensebox.kaufen and configurate the senseBox fitting to your needs.
{% endcollapse %}


{% collapse title="How can I ensure to be at the latest status considering the senseBox?" %}
Just sign up to our newsletter and never miss any news.     
{% endcollapse %}

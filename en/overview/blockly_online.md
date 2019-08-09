
# Blockly for senseBox Online {#head}
 <div class="description">Blockly for senseBox is a graphical programming interface that runs completely online in your browser. It allows you to program your senseBox without installing any software </div>
<div class="line">
    <br>
    <br>
</div>

You can find Blockly for senseBox online at <a href="https://blockly.sensebox.de">https://blockly.senseBox.de</a>. There you can choose between the different versions of senseBox. No additional software is required for the senseBox MCU. If you are working with another Arduino compatible microcontroller, the code on your computer must be compiled and transferred using the Arduino IDE.

## The interface

Blockly for senseBox runs in the popular browsers (Google Chrome, Firefox and Edge) without installation. The interface is available in German as well as in English.
<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    If you change the language, the interface will be reloaded and your previous programming will not be saved. So you should consider at the beginning whether you want to work in the English or German interface. Alternatively you can save your blocks as XML files and load them again after changing the language. 
</div>

The surface is roughly divided into three areas. On the left you find the toolbox, which contains all blocks. In the middle is your desktop and on the right you see the generated Arduino code. 

![The Blockly for senseBox interface](../pictures/blockly_overview.png)

#### The Toolbox

Here you will find all the blocks you can use for your programming. You can find a detailed explanation of the individual categories and the functionality of the blocks [here](../blocks/README.md)

#### Buttons

In the online interface, the most important functions are hidden behind various buttons. The two buttons in the desktop are for copying the code to the clipboard (handy if you want to compile your code offline in the Arduino IDE) and the compile button, which compiles the program code on the server online and then offers you a finished program code as a .BIN file for download. 
In the header of the web interface you can give your program code a name, save or reload the blocks as an XML file, save the program code as .ino and delete the entire workspace with one click. On the far left you will find the menu where you have access to the settings and the ready-made examples.


# Blockly for senseBox Online {#head}
 <div class="description">
 Blockly for senseBox is a visual programming editor which runs completely in your browser! With blockly you can program your senseBox without installing any
 software on your computer </div>
<div class="line">
    <br>
    <br>
</div>

You can find Blockly for senseBox <a href="https://blockly.sensebox.de">online</a>. There you can choose between the two senseBox versions. 

## The Interface
Blockly for senseBox is compatible with most common browsers(Goolge Chrome , Firefox and Edge) without having to install anything. It is available either in English or in German.
<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    If you decide to change the language, your already written code will not be saved! Therefore you should decide on a language before starting to program. Alternatively you can save the blocks as an XML file and after changing the language reload these blocks.
</div>

The interface is divided roughly in three components. On the left you can find the toolbox, which contains all blocks. In the middle you see the desktop where your programming takes place. On the right side the generated arduino code is displayed.

![The blockly for senseBox interface](../pictures/blockly_overview.png)

#### The Toolbox

Here you can find all blocks, that you can use for programming. A detailed description to all blocks is available [here](../blocks/sensebox_sensors.md).

#### Buttons
The most important features of blockly for senseBox hide behind two buttons. The two buttons on the desktop(middle) are used to paste something to the clipboard(useful when you want to compile your code in the Arduino IDE) and the compile button, with which you can compile your code online. The compiled code is made available to you via a .BIN file which you can download.
The header contains the name of your code and various useful functions. You can load already stored blocks, you can store blocks as XML files, you can save your current sketch as an .INO file and you can delete everything that is displayed on your desktop. On the far left you can find the menu in which you can change the settings and access the examples.

### Transmit to the senseBoxMCU

After connecting the senseBox MCU to your computer and after a double click on the red button, the senseBox MCU is recognized as a medium. If you click the 'Compile Sketch' button the code will be compiled on the server and will be provided to you via download. Depending on the operating system you are using the following process will alter.


#### Kopieren unter Windows 
 
With windows you can transfer the just downloaded .BIN file via Drag & Drop to the medium <b>SENSEBOX</b>. The red LED will blink for a moment. Afterwards the board will reboot und run your code.

#### Kopieren unter MacOS und Linux






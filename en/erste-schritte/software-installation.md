
# Step 1: Software Installation {#head}
 <div class="description">Before you start measuring phenomena, you have to consider some things like the installation of different drivers and software. No worries it is an Open-Source-Software so you don't have to pay anything. However you should read the steps 1 to 8 carefully so there will not be any problems later.</div>
<div class="line">
    <br>
    <br>
</div>

## Installation of Arduino IDE

Before the senseBox can be activated, you have to install a driver as well as a software on your computer. Furthermore it is advisable to conduct a test run to check if all the sensors operate correct to ensure the communication with the internet without any problems.

Please have a look at the instructions for your operation systems and follow the indicated steps.

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Download of the Arduino Software for Windows

> Please use Arduino 1.8.5 or higher for a fluent procedure.


The senseBox is a microcontroller with diffent components and sensors. She is going to be programmed with the development environment _Arduino IDE_. Please download the latest version as a zip-file from the [Arduino Homepage](https://www.arduino.cc/en/main/software) 

![ ](arduino-windows-view.png)
Arduino is an Open-Source project and is financed by donations. Thus you are going to be asked for a donation; you can skip by clicking on `JUST DOWNLOAD`.

![ ](arduino-just-download.png)

Compile a new folder and unzip the zip-file in the new folder. By starting the file `arduino.exe` the IDE can get started.  

{% content "second" %}

### Download the Arduino Software for Mac(OSX) 

> Please use Arduino 1.8.5 or higher for a fluent procedure.

The senseBox is a microcontroller with diffent components and sensors. She is going to be programmed with the development environment _Arduino IDE_. Please download the latest version as a zip-file from the [Arduino Homepage](https://www.arduino.cc/en/main/software) 

![ ](arduino-mac-view.png)

Arduino is an Open-Source project and is financed by donations. Thus you are going to be asked for a donation; you can skip by clicking on `JUST DOWNLOAD`.

![ ](arduino-just-download.png)

In your download file should appear a  Arduino.app file. Relocate the file into your "Programme"-folder. By starting the file `Arduino.app` you can run the IDE. 


{% content "third" %}

### Download the Arduino Software for Linux

> Please use Arduino 1.8.5 or higher for a fluent procedure.

The senseBox is a microcontroller with diffent components and sensors. She is going to be programmed with the development environment _Arduino IDE_. Please download the latest version as a zip-file from the [Arduino Homepage](https://www.arduino.cc/en/main/software) 


![ ](arduino-linux-view.png)

Arduino is an Open-Source project and is financed by donations. Thus you are going to be asked for a donation; you can skip by clicking on `JUST DOWNLOAD`.

![ ](arduino-just-download.png)
### Installation of the IDE with Linux {#installation-der-ide-unter-linux}

Linux-user can download and unzip a Linux version. The contained `install.sh`-script compiles a desktop shortcut automatically. The fastes way is to use the terminal. Open the Terminal therefor by hitting the keys `Ctrl + Alt + T` and enter the following commands:

```text
# if the downloaded file is not stored in the download-folder, replace "downloads" by the path to the according folder cd downloads 
```

```text
# unzip the file with the following command and install Arduino
tar -xvf arduino-1.8.5-linux64.tar.xz
cd arduino-1.8.5
./install.sh
```
<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Watch out, that the command is coordinated to the downloaded Arduinoversion! If you are downloading for example Arduino 1.8.6 everywhere where arduino-1.8.5 stands arduino-1.8.6 has to stand to. Watch the name of the download-file to check which version you have downloaded.
</div>

To programme Arduino ther are additional rights necessary at  Ubuntu 14 & 16. Those can be established by the following commands \(benötigt Admin-Rechte\):

Implement `udevadm monitor --udev`  and connect Arduino by USB to determine the Device-ID. The indicated label at the end of the output \(zB. `ttyUSB0`\) is the device-ID. Finish `udevadm` with `ctrl+C`, and run the following command whereby the found out Device-ID has to be implemented:

```text
sudo usermod -a -G dialout $(whoami)
sudo chmod a+rw /dev/<device-id>
```

After a logout and again a Login the Arduino should be programmable out of the Arduino IDE!

{% endtabs %}



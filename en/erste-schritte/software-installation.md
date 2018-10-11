
# Step 1: Software Installation {#head}
 <div class="description">Before you can start measuring phenomena, there are a few things to keep in mind. This includes the installation of various drivers and software. Do not worry, it's open source software, so you pay nothing for it. However, you should take a close look at steps 1 to 4 so that no problems occur later. </div>
<div class="line">
    <br>
    <br>
</div>

## Installation of Arduino IDE


Before the senseBox can be activated, you need to install drivers and software on your computer. It is also advisable to carry out a test run before commissioning the senseBox, to check whether the sensors are working correctly and that an internet connection has been established.

Review the instructions for your operating system and follow the steps given.

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Download Arduino Software for Windows

> For a smooth process please use Arduino 1.8.5 or higher


The senseBox is a micro controller with various components and sensors. It is programmed via the development environment _Arduino IDE_. Download the latest version as a zip file from the [Arduino Homepage](https://www.arduino.cc/en/main/software):

![ ](../../../pictures/software-install/arduino-windows-view.png)

Arduino is an open source project funded by donations. Therefore you will be asked for a donation before downloading; You can skip that by clicking `JUST DOWNLOAD`.

![ ](../../../pictures/software-install/arduino-just-download.png)

Put a new folder on your hard drive and unzip the zip-file. By starting the file `arduino.exe` the IDE can be started.


{% content "second" %}

### Download Arduino Software for Mac(OSX)

> For a smooth process please use Arduino 1.8.5 or higher.

The senseBox is a micro controller with various components and sensors. It is programmed via the development environment _Arduino IDE_. Download the latest version from the  [Arduino Homepage](https://www.arduino.cc/en/main/software):

![ ](../../../pictures/software-install/arduino-mac-view.png)

Arduino is an open source project funded by donations. Therefore you will be asked for a donation before downloading; You can skip that by clicking `JUST DOWNLOAD`.

![ ](../../../pictures/software-install/arduino-just-download.png)

An Arduino.app file should appear in your Downloads folder. Move this file to your "Applications" folder. By starting the file `Arduino.app` the IDE can be started.
{% content "third" %}

### Download Arduino Software for Linux

> For a smooth process please use Arduino 1.8.5 or higher.


The senseBox is a micro controller with various components and sensors. It is programmed via the development environment Arduino IDE. Download the latest version from the [Arduino Homepage](https://www.arduino.cc/en/main/software):

![ ](../../../pictures/software-install/arduino-linux-view.png)

Arduino is an open source project funded by donations. Therefore you will be asked for a donation before downloading; You can skip that by clicking `JUST DOWNLOAD`.

![ ](../../../pictures/software-install/arduino-just-download.png)
### Installation of the IDE under Linux {#installation-der-ide-unter-linux}

Linux users can download and unpack the Linux version. The included `install.sh` script automatically creates a desktop shortcut. The fastest way to do this is via terminal. Open the terminal by pressing the keys`Ctrl + Alt + T`and enter the following commands:

```text
# If the downloaded file is not saved in the Downloads folder, replace "Downloads" with the path to the appropriate folder
cd downloads
```

```text
# Unpack the file with the following command and install Arduino
tar -xvf arduino-1.8.5-linux64.tar.xz
cd arduino-1.8.5
./install.sh
```
<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
  Make sure the command matches the downloaded Arduino version! Load, for example Arduino 1.8.6 also has to stand everywhere where arduino-1.8.5 stands arduino-1.8.6. To check which version you have downloaded, look at the name of the download file.
</div>

To program the Arduino, additional rights are required under Ubuntu 14 & 16. These can be set up for the current user with the following commands \(needs admin rights\):


Run `udevadm monitor --udev` and connect the Arduino via USB to determine the Device ID. The specified name at the end of the output \(eg `ttyUSB0`\) is the device ID. Exit `udevadm` by `ctrl+C`and execute the following commands, using the device id found:

```text
sudo usermod -a -G dialout $(whoami)
sudo chmod a+rw /dev/<device-id>
```
After a logout and login again, the Arduino from the Arduino IDE should be programmable!

{% endtabs %}

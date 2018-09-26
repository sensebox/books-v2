# Firmware Update Wifi-Bee {#head}
<div class="description">Unfortunately, some of our WINC1500 WiFi Bees have outdated firmware (version 19.4.4) installed. Unfortunately, there is no other way to update this firmware than to do it manually. The following chapter explains how to find out which firmware you are using and (if you have an outdated version) how to update it.</div>

<div class="line">
    <br>
    <br>
</div>

## Test the Version
First, it must be found out which version the supplied WiFi Bee has. Go to''file'' '' Examples '' and under "Examples for senseBox MCU" on''Test_WINC1500''

![Open the WiFi-Test](pictures/Update-Wifi-Firmware/1-test.PNG)

Now upload the sketch to your board (by clicking the arrow icon). Note that the WiFi Bee must be plugged into your senseBox board (please plug it in to XBEE1). Then click on the serial monitor (by clicking the magnifying glass icon) and it will be checked if your Wifi-Bee is functional and shows which firmware is installed on it.



![Test results with a non-current firmware](pictures/Update-Wifi-Firmware/2-result.PNG)

<div class="box_success">
    <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
   If you have a firmware ** 19.5.2, or higher ** you can cancel here. Your WiFi Bee works perfectly.
</div>

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    If you have a firmware lower than 19.5.2 you unfortunately have to update the firmware. You will find out how this works in the next step.
</div>

## WiFi-Bee Firmware Update
To update the firmware, follow the path from the top:''file''; '' Examples '' and under "Examples for senseBox MCU" on''WINC1500_Updater''

![Open the WINC1500_Updater](pictures/Update-Wifi-Firmware/3-updater.PNG)


Now load the sketch on your board (by clicking the arrow icon), on which the WiFi Bee is plugged (please plug it on XBEE1)

<div class="box_error">
    <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    Do not open the serial monitor this time (do not click on the magnifying glass icon)
</div>

Now click ``Tools`` and select ``Wifi101 Firmware Updater``.

![Choose Wifi 101 Firmware Updater](pictures/Update-Wifi-Firmware/4-firmware-updater.PNG)

First, you can test the connection by clicking on the `` COM Port`` and then on `` Test connection``. The following information should come back: "The programmer is working!"

![Test connection of the Wifi-Bee](pictures/Update-Wifi-Firmware/5-test-connection.PNG)

Almost done, now just click on `` Update Firmware`` and the upload starts. Then a success message should come "The firmware has been updated!".

![Finally Update Firmware](pictures/Update-Wifi-Firmware/6-update-firmware.PNG)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Do not let yourself be confused that there is also a version of the firmware 19.5.4, but this is not found in Arduino if you want to update the firmware. This firmware will be integrated with the Arduino Release 1.8.6 and will be available from then on.
    Nicht davon irritieren lassen, dass es auch eine Version der Firmware 19.5.4 gibt, diese aber nicht in Arduino zu finden ist wenn man die Firmware updaten möchte.</div>
    
   We apologize for the detour and wish you lots of fun with the senseBox.
 
If this article has not helped you, you can try on www.forum.sensebox.de to look for a solution, or if necessary submit yourself a contribution.

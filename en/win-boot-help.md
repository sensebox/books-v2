# Update Windows USB Bootloader Driver {#head}

<div class="description">
    In some rare cases Windows can cause problems with the USB-Bootloader drivers. What you can do to check if your drivers are installed correctly and how you can install them if you find out here.
</div>
<div class="line">
    <br>
    <br>
</div>

## Check Driver Status

To check if your USB bootloader drivers work, follow these steps:
- Connect your senseBox MCU board via USB cable to your Windows computer
- Open the Device Manager by searching for `Device Manager` in the Windows bar and open it with a click.
- Activate the bootloader mode of the senseBox MCU by pressing the `Reset` button (red mechanical button on the senseBox MCU) twice in quick succession
- The device manager should now show a point `Connections (COM & LPT)`
- Click on the item to open a list of connected devices, where the senseBox MCU should be listed
- If the senseBox MCU is not listed, disconnect the USB cable from the computer and reconnect it - leave the device manager open and look what happens


If there is no corresponding and no new device displayed on reconnect, your USB bootloader drivers are not installed correctly. Download the current drivers here with one click:

[Download senseBox MCU Driver](https://github.com/watterott/senseBox-MCU/raw/master/arduino/driver.zip)

Now go to Device Manager and select `Update Driver` ->` Find on Computer` and select the drivers you just downloaded. 

Restart the computer and check the driver status again, as stated above. The senseBox MCU should now be recognized.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    If this article did not help you, you can try to search for a solution in our <a href="https://forum.sensebox.de"> forum </a> or create a post there yourself.
</div>

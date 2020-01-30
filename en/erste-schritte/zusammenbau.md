#Step 7: Assembly in Case {#head}
<div class="description">Below the assembling of the senseBox:home in the case is going to be explained. </div>

<div class="line">
    <br>
    <br>
</div>



##Inventory

### Basic Configuration

![Overview of components included in the basic configuration of senseBox:home](https://github.com/sensebox/resources/raw/master/gitbook_pictures/01_aufbau.png)

- case with lid
- mini-USB wire + adapter
- senseBox MCU
- sensor for air humidity and temperature
- protective case for air humidity and temperature sensor + attachments
- plexiglas with plastic bolts
- M20 screw thread
- bag with 8 screws 
- Bee



# Installation

## 1. Step

*Mounting of senseBox MCU in the case:* 

Therefore you have to align the MCU so that the micro USB-access and the red button are pointing to the hole in the case. Please screw the MCU to the case with the two provided screws. Therefore use the two holes in the middle of the long side of the MCU.


![ MCU in the housing](https://github.com/sensebox/resources/raw/master/gitbook_pictures/mcu_verschraubung.jpeg)



## 2. Step

*Connecting Bee and humidity - / temperature sensor:*

Independently which bee you are using, in the next step you have to mount the bee on the intended *XBEE1* slot.
![MCU in case with WiFi Bee](https://github.com/sensebox/resources/raw/master/gitbook_pictures/xbee.jpeg)

## 3. Step

*Pin of the sensor and the mini-USB wire:*

For this you have to first screw the M20 thread in the hole on the side of the case.
Please then unscrew the cover and put the wire (without sensor) and the mini-USB wire whereby the opening of the screw thread. Now you can screw the cover on to the screw thread again and connect the sensor with the wire. 
The sensor plug can be attached to one of the 5 *I2C/Wire* slots.
**Please connect the mini-USB wire not before everything is built together.**


![Temperature and air humidity sensor + USB ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/usb_sensor.png)

## 4. Step

*mounting the sensor in the protective case*

The protective case ensures that temperature- and air humidity sensors are not exposed directly to the sun. To install the sensor in the case you have to enlarge the hole in the underside of the case so that the sensor fits through.


Now you can mount the sensor with the two plastic bolts (see photo) or zip ties on to the little framework.
You can now mount the case wherever you want with the attachments.

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Please make sure that the sensor is pointing upwards!  
</div>

![Temperature and air humidity sensor in the protective case](https://github.com/sensebox/resources/raw/master/gitbook_pictures/tempGeh.jpeg)


# Additional Components  (optional)
 

## 5. Step



In case you want to add further sensors, please initially connect the intended wire with the I2C/Wire ports. If you have a fine dust sensor begin with putting the wire through the screw thread. Following connect the other end of the wire to the UART/Serial port 1. 
Now push the 4 plastic bolts in the outer holes of the MCU




![Pin of the 3 standard sensors and the fine dust sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/allesensoren.jpeg)


## 6. Step

In the next step please remove the plastic foil of the Plexiglas. Now you can put each wires through the middle of the 3 holes. 
Position respectively 2 plastic bolts for one sensor and the little holes so that the sensors can be mounted central on the Plexiglas 
 **This is especially important for the UV sensor!**



![Pin of the sensors on the Plexiglass](https://github.com/sensebox/resources/raw/master/gitbook_pictures/plexi.jpeg)


## 7. Step 

*Installation of the fine dust sensor*



![Components of the fine dust sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/komposFein.jpeg)

- fine dust sensor
- case
- 2 M16 screw threads
- wire
- plastic tube 





Please follow the instruction for the pin of the fine dust sensor:
First unscrew the cap and afterward the rubberseal in the screw thread. 
Now you can successively put the sensor wire through the just detached components.
Then stick the wire through the hole in the case and connect it with the sensor.


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
Please do not fasten the screw thread at this point!
</div>


![Procedure to connect the wire of the fine dust sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/anschlussfein.jpeg)



Stick now the plastic tube on to the entry of the fine dust sensor and afterwards through the other hole in the case.
Now you can fasten the screw thread on both sides of the case and mount the lid on to the case.
 

![Completed connection of the fine dust sensor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/feinstaub.jpeg)



## Completed Installation of the senseBox:home
<div class="description"> The senseBox:home below includes temperature, humidity, fine dust, UV and air pressure sensors. </div>




![Completed Connection](https://github.com/sensebox/resources/raw/master/gitbook_pictures/aufbaufertig.jpeg)


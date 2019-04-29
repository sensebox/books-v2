# Environmental Monitoring Station Powered by a Solar Panel {#head}

<div class="description">
If you want to use your senseBox without power connection, it is now possible with a solar panel. As an extra we show how the LoRa data network is working. So that you can position your senseBox on distant places around the world! At the end we show you, how you can make your own power switch to toggle if you want to use the solar panel to load the battery.
</div>
<div class="line">
    <br>
    <br>
</div>

![Station setup powered with solar](../../../pictures/solar_aufbau_rough.jpg)

## Materials 
- Sensors
  - Air pressure `BMP280`
  - Temperature and humidity `HDC1080`
  - UV-intensity `TSL & VML`
  - Fine dust `SDS`
- [Solar panel](https://www.amazon.de/Watt-Solarpanel-Volt-Powerbanks-Solarleuchten/dp/B014HWT520/ref=sr_1_1?ie=UTF8&qid=1532255953&sr=8-1&keywords=villageboom)
- [3.7V LiPo battery](https://eckstein-shop.de/LiPo-Akku-Lithium-Ion-Polymer-Batterie-37V-2000mAh-JST-PH-Connector)
- [Adafruit Powerboost 1000C](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/overview)
- wifi/LoRa Bee
- Power switch [optional]


## Setup

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Disclaimer: Due to the higher complexity of this setup it is recommended to be used by experienced arduino and open hardware users.
</div>
<br>
First you build up the senseBox as usual. You can look things up in the instruction [manual](https://sensebox.github.io/books-v2/home/en/) benutzen.
To make sure the senseBox is using the battery and the battery is charged meanwhile, you need the [Adafruit Powerboost 1000C](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/overview).

![Powerboost construction](../../../pictures/solar_powerboost.jpg)

### [optional] Power Switch
{% collapse title="click" %}
The power switch should be connected to the powerboost. You need solder hardware for this. How exactly this is done, can be read [here](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/assembly#on-slash-off-switch-3-5).
Now we can use the power switch to regulate the input from the solar panel to the battery.

![Build-in switch in housing](../../../pictures/solar_aufbau_schalter.jpg)

In this example a hole is drilled into the case, so you can access it whenever you want. Look into the gallery to find out how we did it.
{% endcollapse %}
## Programming

There is nothing special to be programmed in this example. As long as the power supply is working you can use every sketch from the previous sections. In regards to the LoRa-bee you should first check if there is a [network](https://www.thethingsnetwork.org/community#list-communities-map) around. Also you have to register on the TTN website to gain an access key. All of this is covered in our [LoRa bee tutorial](https://sensebox.github.io/books-v2/edu/de/komponenten/bees/lora.html).

## Usage

![Example construction on a roof](../../../pictures/solar_aufbau_dach.jpg)

After 2 days of testing with a rather big 6600 mAh battery, it shows that with sufficient sunlight (2-3 hours a day) the battery remains at least at constant charge level. 
This means that if you want to operate the station in the open without main power supply, this is very well possible with the help of a solar cell, even a long time without direct sunlight can be intercepted with a large battery. You should only clean the cell once in a while, as pollen or dirt will settle there.

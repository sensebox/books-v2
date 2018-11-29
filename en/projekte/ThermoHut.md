# Thermometer screen for the senseBox {#head}

<div class="description">
When searching for the ideal location of the <a href="http://www.sensebox.de/en">senseBox</a> the idea came to use a well-tried weather hut and to measure the temperature in 2 meters height. 
<br><br>
The thermometer screen made of wood according to <a href="https://en.wikipedia.org/wiki/Stevenson_screen">Stevenson</a>  is a suitable radiation protection for the temperature / humidity sensor of the senseBox.

Laminated housing walls and door provide good ventilation and protection against direct and reflective solar radiation.
The weather hut made of wood was painted white inside and outside for optimal heat radiation protection.
</div>
<div class="line">
    <br>
    <br>
</div>
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    This project was realized and documented by one of our community members! The author is <b>OllyS</b>  and like many others can be found in the <a href="https://forum.sensebox.de/">senseBox forum</a>. In the forum you will also find suggestions, new ideas or discussions about the senseBox!
    </div>


## Materials 

- senseBox MCU (Outdoor Case, Power supply and cable, temperature & relative humidity sensor, Wifi-Bee). [Source of supply senseBox Shop](https://sensebox.kaufen/product/sensebox-home)
- Sensors (Air pressure & temperature, illuminance & UV radiation, fine dust (PM10 & PM2.5).  [Source of supply senseBox Shop](https://sensebox.kaufen/product/sensebox-home)
- Weather house (Kit raw or painted)
[Source of supply Stiftung zur Palme](https://www.globe-swiss.ch/files/Downloads/902/Download/Wetterhausflyer_2017.pdf)
- needed accessoires
    - device connector IP68 4Pol Distrelec:300-47-767 (3)
    - cable connector IP68 4 Pol Distrelec:300-47-727 (3)
    - Data cable unshielded 3x 2x0.25mm² Distrelec:155-73-712
    - I2C-I2C cable Watterott: (3)
    - Nova SDS011 senseBox connection cable - 350mm Watterott (1)
    - USB-rifle panel-contact micro-USB B Distrelec:301-03-704 (1)
    - Pressure compensation element GR M12x1.5 Distrelec:150-15-938 (1)
    - Plastic housing 65x115x40mm light gray P Distrelec:300-64-459 (1)
    - Distance bolts 20mm 5mm Distrelec: 110-76-305 (4)
    - Countersunk screw M2.5 x 8mm (4)
    - Screw nut M2.5 (4)
    - Heat shrink tubing 2.5 mm   
![Kit weather house Palme](https://i.imgur.com/DmDOVDj.jpg)



## Installation 

The senseBox MCU Home already offers a good weather resistance and can be used without modifications "outdoor". In order to ensure the air flow of the PM2.5 / 10 sensor, an additional hole is made in the housing. In order to prevent insects from boarding the housing, the air inlet and the bore are protected with a piece of insect screen.


{% tabs first="Step drill", second="Insect screen"%}
{% content "first" %}

![Drilling](https://i.imgur.com/EH8l3ie.jpg)
{% content "second" %}

![Insect protection](https://i.imgur.com/oDrPwje.jpg)

{% endtabs %}



Because of the service friendliness (replacement of individual components during operation) the boxes of the individual sensors are each provided with longer cables and waterproof plugs. In the MCU housing, a waterproof pressure compensation element was installed and the brightness / UV sensor was housed in its own housing.

{% tabs first1="Brightness/UV-sensor", second1="Solder pole plug" , third="SB2-PM", fourth="USB-Socket IP67", fifth="Casing", sixth="Pressure compensation element", seventh="senseBox MCU" %}
{% content "first1" %}

![Brightness/UV-sensor](https://i.imgur.com/eYPAxWt.jpg)
{% content "second1" %}

![Solder pole plug](https://i.imgur.com/xBFTAIs.jpg)
4 Pol Stecker löten
{% content "third" %}

![SB2-PM](https://i.imgur.com/0pZStGW.jpg)

 In order to avoid extraneous light scattering on the SDS011, the transparent suction hose was wrapped with insulating tape. 
{% content "fourth" %}

![USB-Socket IP67](https://i.imgur.com/s0UyTWb.jpg)
For power supply and maintenance (Sketches) a waterproof micro-USB socket was installed in the MCU housing.
{% content "fifth" %}
![MCU Casing](https://i.imgur.com/c2lGr8U.jpg)

{% content "sixth" %}
![Pressure compensation element](https://i.imgur.com/WpCDWvU.jpg)

{% content "seventh" %}
![senseBox MCU](https://i.imgur.com/xBbVj43.jpg)

{% endtabs %}


### Assignment of sockets and plug 

**M16 Panel Mount Micro USB 2.0 - Type B**

Here we solder a Micro USB cable, practically an extension to the MCU.

    Pin 1 = 5 Volt (red)
    Pin 2 = Data - (white)
    Pin 3 = Data + (green)
    Pin 4 = ID (unused)
    Pin 5 = GND (black)
    Pin 6 = Shield (shielding)

**4 pole device connector IP68 I2C**

Here, a fully configured I2C cable is cut in the middle and soldered to the socket, the individual contacts are protected with shrink tubing. The other end is plugged into the MCU board to an I2C connector.

    Pin 1 = GND (Ground) black
    Pin 2 = VCC (+5 Volt) red
    Pin 3 = SDA (Data) green
    Pin 4 = CLK (Clock) yellow


**4 pole device connector IP68 UART/Serial (PM2.5/PM10 Sensor)**

Here, the SDS011 senseBox connection cable is disconnected in the middle, and the part with the small plug soldered to the socket. The other half of the cable is soldered to the data cable in the particulate matter sensor housing (Figure 6 & 7).

The pin assignment of the fine dust sensor connector:

    Pin 1 = GND (Ground) black
    Pin 2 = Tx (Transmit from Host) white
    Pin 3 = Rx (Receive from Host) blue
    Pin 4 = VCC (Power 5V) red

### Assembly

The hut construction kit from [Stiftung zur Palme](https://www.palme.ch/pages/schreinerei.htm "Stiftung zur Palme") Stiftung Palme is a good carpentry and everything fit together easily. To prime the hut and paint it with gloss paint it took about 4 hours. You can order them also painted for an additional charge.

The MCU and the air quality sensor have also been put into the cabin for the sake of simplicity.

![senseBox Hütte](https://i.imgur.com/OobmRlg.jpg) 


The hut was attached to a 11x11 cm wooden post, the temperature sensor is located at about 2 meters above the lawn. It was fastened with a piece of plastic pipe and a piece of balsa wood.

![HDC1080](https://i.imgur.com/cvCT583.jpg)

The single-leaf, lockable door faces north, the brightness and UV sensor to the south..

![SB2-UV](https://i.imgur.com/gzKS9Ad.jpg)



All data is sent by the senseBox via wifi to a router in the house and from there to openSenseMap.
Informations: [https://opensensemap.org/info](https://opensensemap.org/info "https://opensensemap.org/info")



## Planned extensions: 

   - Autonomous operation with solar panel, battery and LoRa-Bee.
   - Measuring unit for wind direction, wind speed and rainfall.



## Literatur

1. Kopp M. (2012): Vergleich verschiedener Wetterhütten zur Messung der 2m-Lufttemperatur
in Abhängigkeit von Wind und Strahlung. [Link](https://wikis.fu-berlin.de/pages/viewpage.action?pageId=841581560&preview=%2F841581560%2F841581563%2FH%C3%BCttenvergleichENDVERSION.pdf)


2. German Weather Service: Vorschriften und Betriebsunterlagen Nr. 3  (VuB 3) [TECHNIKHANDBUCH (THB) für Wettermeldestellen des synoptisch-klimatologischen Mess- und Beobachtungsnetzes](https://www.dwd.de/DE/leistungen/pbfb_verlag_vub/pdf_einzelbaende/vub_3_thb_gesamt_pdf.pdf?__blob=publicationFile&v=5)


## Weblinks:
1. Verein GLOBE Schweiz: Wetterhaus [https://www.globe-swiss.ch/de/Zyklus3/Angebote_Wetter_und_Atmosphare/Atmosphere/Wetterhaus/](https://www.globe-swiss.ch/de/Zyklus3/Angebote_Wetter_und_Atmosphare/Atmosphere/Wetterhaus/)


2. Das senseBox:Home Buch: [https://sensebox.github.io/books-v2/home/de/index.html](https://sensebox.github.io/books-v2/home/de/index.html)

3. openSenseMap: [https://sensebox.github.io/books-v2/osem/](https://sensebox.github.io/books-v2/osem/)

4. senseBox Shop: [https://sensebox.kaufen/product/sensebox-home](https://sensebox.kaufen/product/sensebox-home)


## Author:
OllyS - to be found in the [senseBox Forum](https://forum.sensebox.de/)

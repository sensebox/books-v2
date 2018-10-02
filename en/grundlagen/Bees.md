# Bees {#head}

<div class="description">A bee denotes a pluggable component with which the senseBoxMCU can transmit or store data. Here you have the choice between the Wifi-Bee or the mSD-Bee.</div>
<div class="line">
    <br>
    <br>
</div>

## WiFi Bee
The WiFi Bee is the connector to connect the senseBox to the Internet. Your readings will be transferred to the existing network via WLAN (WiFi). The WiFi Bee is based on the ATWINC15000 microchip from Atmel, which has a very low power consumption and a long range.


### Configure the WiFi Bee & Upload on the openSenseMap

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Make sure you have the latest board support package installed because you need the correct software libraries. How to do that was explained to you in  <a href ="../erste-schritte/board-support-packages-installieren.md">Step 2</a>!
</div>

{% collapse title="Declaration of the objects" %}
First, create an instance of Bee and openSenseMap.


```arduino
Bee* b = new Bee(); // instance of Bee
OpenSenseMap osem("senseBox ID",b); // instance of openSenseMap
float temp = 24.3; // Test value that we later upload to openSenseMap
```

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Make sure that you have to replace the parameter "senseBox ID" with your Box ID!
</div>

Once we have done this, the bee can be called in the program code consecutively with the abbreviation `b`. In the `setup ()` function, we now connect to our desired WiFi network and upload a first test value on the openSenseMap.

{% endcollapse %}

{% collapse title="setup()" %}

```arduino
void setup(){
    b->connectToWifi("SSID","PW"); // Connect to WiFi
    delay(1000);
    osem.uploadMeasurement(temp,"sensor ID") // Test value is uploaded
                                             //"sensor ID" still needs to be replaced
    };
```

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Make sure that you have to replace the parameters "SSID" with the network name of your WiFi network, "PW" with the corresponding password and "sensor ID" with the sensor ID of the corresponding sensor!
</div>

{% endcollapse %}

Now, your WiFi Bee has connected to the Internet and should upload a first value to openSenseMap.

Congratulations, you have just uploaded your first data on the map, now you are ready for your first [Environmental Measuring Station](/../../projekte/Umweltstation/README.md).
# WiFi {#head}

<div class="description">Here you will find all blocks that need a connection to the internet. 
</div>

<p>To use these blocks, plug the WiFi-Bee into the XBEE1 slot.</p>
![WiFiBee](../pictures/components/wifi-bee.jpeg "Plugging in the WiFi-Bee")

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/wifi/wifi1.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Connect to WLAN</h4>
            Use this block in Setup() to establish a Wlan connection. Write the corresponding network name (SSID) and
            enter the password.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/wifi/wifi2.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Initialize WLAN Access Point</h4>
            Use this block in Setup() to create a Wlan Access Point with the senseBox. Then a device (e.g. mobile phone or computer) can connect directly to the senseBox.
        </div>
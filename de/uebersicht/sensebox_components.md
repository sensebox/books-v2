
# Die senseBox:edu und ihre Komponenten {#head}
 <div class="description"></div>
<div class="line">
    <br>
    <br>
</div>


## Übersicht über die Komponenten


### Die senseBox MCU

Die senseBox MCU ist das Herzstück der senseBox und besitzt eine Vielzahl von Anschlussmöglichkeiten. 

<img src="../pictures/components/mcu_overview.png" alt="" align="left">

### Sensoren

<div class="container">
    <div class="row">
        <div class="col-md-4" id="temp_humi">
                <h4>Temperatur und Luftfeuchtigkeitssensor</h4>
                <img src="../pictures/components/temp_humi.png" alt="block" align="left">
                <p>Anschluss I2C/Wire</p>
        </div>
        <div class="col-md-4" id="illu_uv">
                <h4>Helligkeit und UV-Sensor</h4>
                <img src="../pictures/components/illu_uv.png" alt="block" align="left">
                <p>Anschluss I2C/Wire</p>
        </div>
        <div class="col-md-4" id="pressure_temp">
                <h4>Luftdruck und Temperatursensor</h4>
                <img src="../pictures/components/pressure_temp.png" alt="block" align="left">
                <p>Anschluss I2C/Wire</p>
        </div>
        <div class="col-md-4" id="hc_sr04">
                <h4>Ultraschall-Distanssensor</h4>
                <img src="../pictures/components/hc_sr04.png" alt="block" align="left">
                <p>Anschluss I2C/Wire</p>
        </div>
        <div class="col-md-4" id="mic">
                <h4>Mikrofon</h4>
                <img src="../pictures/components/mic.png" alt="block" align="left">
                <p>Anschluss I2C/Wire</p>
        </div>
    </div>
</div>

### Kabel 

Um die Sensoren und weiteren elektronischen Bauteile mit der senseBox MCU zu verbinden werden verschiedenen Kabel verwendet. 

<div class="container">
    <div class="row">
            <div class="col-md-4">
                    <h4>JST-JST Kabel</h4>
                    <img src="../pictures/components/jst_jst_cable.png" alt="block" align="left">
                    <p>Mit den JST-JST Kabeln werden die Umweltsensoren direkt mit der senseBox MCU verbunden</p>
            </div>
            <div class="col-md-4">
                    <h4>JST-Adapterkabel</h4>
                    <img src="../pictures/components/jst_adapter_cable.png" alt="block" align="left">
                    <p>Um die senseBox MCU und weiteren Komponenten über das Breadboard zu verbinden werden die JST-Adapterkabel verwendet</p>
            </div>
            <div class="col-md-4">
                    <h4>Steckkabel</h4>
                    <img src="../pictures/components/jumper_wire_cable.png" alt="block" align="left">
                    <p>Diese Kabel werden für Schaltungen auf dem Breadboard benötigt</p>
            </div>
    </div>    
</div>

### Display und Bees

<div class="container">
        <div class="row">
                <div class="col-md-4">
                        <h4>OLED-Display</h4>
                        <img src="../pictures/components/oled_display.png" alt="block" align="left">
                        <p>Anschluss I2C/Wire</p>
                </div>
                <div class="col-md-4">
                        <h4>WiFi-Bee</h4>
                        <img src="../pictures/components/WiFi_bee.png" alt="block" align="left">
                        <p>XBEE1</p>
                </div>
                <div class="col-md-4">
                        <h4>mSD-Bee</h4>
                        <img src="../pictures/components/mSD_bee.png" alt="block" align="left">
                        <p>XBEE2</p>
                </div>
        </div>    
    </div>

### Elektronische Bauteile



<div class="container">
        <div class="row">
                <div class="col-md-4">
                        <h4>10kOhm Widerstand</h4>
                        <img src="../pictures/components/resistor_10k.png" alt="block" align="left">
                        <p></p>
                </div>
                <div class="col-md-4">
                        <h4>470 Ohm Widerstand</h4>
                        <img src="../pictures/components/resistor_470.png" alt="block" align="left">
                </div>
                <div class="col-md-4">
                        <h4>LEDs</h4>
                        <img src="../pictures/components/led_3.png" alt="block" align="left">
                </div>
                <div class="col-md-4">
                        <h4>RGB-LED</h4>
                        <img src="../pictures/components/rgb_led.png" alt="block" align="left">
                </div>
                <div class="col-md-4">
                        <h4>LDR</h4>
                        <img src="../pictures/components/ldr.png" alt="block" align="left">
                </div>
                <div class="col-md-4">
                        <h4>Piezo</h4>
                        <img src="../pictures/components/piezo.png" alt="block" align="left">
                </div>
        </div>    
    </div>

### Erweiterungen

Für die senseBox sind verschiedenen Erweitungsmodule erhältlich, die direkt mit den Steckplätzen der senseBox MCU verbunden werden und über Blockly programmiert werden können. 

<div class="container">
        <div class="row">
                <div class="col-md-4" id="dust">
                        <h4>Feinstaubsensor</h4>
                        <img src="../pictures/components/sds_011.png" alt="block" align="left">
                        <p>UART/Serial</p>
                </div>
                <div class="col-md-4" id="gps">
                        <h4>GPS</h4>
                        <img src="../pictures/components/gps.png" alt="block" align="left">
                        <p>I2C/Wire</p>
                </div>
        </div>    
    </div>

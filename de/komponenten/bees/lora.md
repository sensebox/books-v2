# LoRa-Bee {#head}
<div class="description">Verwendet die LoRa-Schnittstelle um Daten ins Internet zu übertragen. Neu ist das LoRa WAN-XBee-Modul, mit dem eine stromsparende und kostenlose Möglichkeit der Datenübertragung ins Internet über den LoRa-Funk-Standard ermöglicht wird. Dafür werden bestehende LoRa-Netzwerke, wie zum Beispeil TheThingsNetwork genutzt um Daten zu übertragen. Die hierzu benötigte Infrastruktur wird bei TheThingsNetwork von der Community bereit gestellt, und ist in immer mehr Regionen verfügbar.</div>

<div class="line">
    <br>
    <br>
</div>

![Lora Bee](../../../../pictures/LoraBee%20bottom.png)

# Technische Informationen
* HopeRF RFM95W/RFM96W LoRa Transceiver
* LoRa-Bee 868 / 915 MHz nutzt RFM95W (SX1276 kompatibel)
* LoRa-Bee 433 / 470 MHz nutzt RFM96W (SX1276 kompatibel)
* SPI interface
* Bezeichnung: RFN9xW
* Maße: 46mm x 25mm x 12mm
* Gewicht: 1,1 g

# Hinweise
Bitte prüfe bevor du dir eine senseBox mit LoRa Bee holst, ob dein Gebiet bereits von LoRa erschlossen ist: https://www.thethingsnetwork.org/community#list-communities-map

**Achtung: Aufgrund der erhöhten Komplexität der Installation empfehlen wir das LoRa-Modul außschließlich fortgeschrittenen Nutzern von Open-Hardware**

# Upload über LoRaWAN

Es ist möglich Sensordaten per LoRaWAN™ durch das [TheThingsNetwork](https://thethingsnetwork.org)
(TTN) auf die openSenseMap zu laden.
LoRa ist ein zunehmend Verbreitung findender Funkstandard, welcher ähnlich wie
WiFi digitale Datenübertragung in einem IP-Netzwerk erlaubt, jedoch deutlich
andere Features bietet:

- Datendurchsatz: 300 - 3000 Bit/s
- Reichweite:     bis zu 15km 

TTN ist eins von mehreren Projekten, welches die zur Funk-Hardware zugehörige
Infrastruktur für das IP-Netzwerk implementiert, wodurch registrierte Geräte
mit dem Internet verbunden werden können.

Nutzer können *Gateways* sowie *Nodes* zu dem Netzwerk hinzufügen.


## TTN openSenseMap Integration
Die openSenseMap bietet eine direkte Integration in das TTN Netzwerk, was die
Konfiguration stark vereinfacht. Hierfür musst du einen Account [TheThingsNetwork](https://thethingsnetwork.org) erstellen.

### Registrierung in TTN Console

Um ein Gerät in das TTN einzubinden, muss für dieses zunächst unter
[thethingsnetwork.org](https://console.thethingsnetwork.org/)
eine *Application* und ein *Device* registriert werden. Hierbei erhält man eine
`app_id` und eine `dev_id`.

Für die registrierte Application muss die HTTP Integration unter <https://console.thethingsnetwork.org/applications/DEINE_APPID/integrations/create/http-ttn>
aktiviert werden. Diese muss konfiguriert werden, dass sie die Nachrichten von
Devices per `POST` an `https://ttn.opensensemap.org/v1.1` weiterleitet. Das
Authorization-Feld kann leer bleiben!

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/osem_ttnconsole.png" alt="ttnconsole" center width="767" />

Für die Datenübertragung zur openSenseMap müssen die `app_id` und `dev_id` bei
der Registrierung auf der openSenseMap in der TTN-Konfiguration angegeben
werden. Darüber hinaus muss ein passendes Decoding-Profil konfiguriert werden,
welches bestimmt wie die - wegen der geringen Bandbreite als rohe Bytes 
übertragenen - Daten als Messungen interpretiert werden sollen.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/osem_register_ttn.png"  alt="osemregister" center width="767"/>

Optional kann im Feld `port` noch der Port angegeben werden, auf welchem
der Sender seine Daten an das TTN schickt. So lassen sich die selbe `app_id`
und `dev_id` für mehrere Sensorstationen verwenden.
### Arduino Sketch 
So könnte ein Arduino Sketch aussehen, mit dem du Daten über das TTN-Netzwerk an die openSenseMap senden kannst.

<div class="box_warning">
     <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    <b>Wichtig:</b> Du musst deine eben erstellte <b>Application-EUI, Device-EUI</b> und den <b>App-Key</b> in den Sketch einfügen. Dies machst du in den ersten Zeilen des Programmcode wo <b>'INSERT YOUR ID HERE'</b> steht. <br><br> Achte darauf, dass auf der TTN-Homepage du für die <b>Device-EUI</b> und die <b>Application-EUI</b> das <b>lsb</b>-Format und für den <b>App-Key</b> das <b>msb</b>-Format ausgewählt hast!
</div>

![Ausgewählte ID's und Keys](../../../../pictures/LoRa_TTN_EUI.png)

{% collapse title="Arduino Sketch für senseBoxMCU" %}

```arduino
/*******************************************************************************
 * Copyright (c) 2015 Thomas Telkamp and Matthijs Kooijman.
 * Edited by: senseBox
 *
 *******************************************************************************/
#include <LoraMessage.h>
#include <lmic.h>
#include <hal/hal.h>
#include <SPI.h>
#include <senseBoxIO.h>

#include <Adafruit_Sensor.h>
#include <Adafruit_BMP280.h>
#include <HDC100X.h>
#include <Makerblog_TSL45315.h>
#include <SDS011-select-serial.h>
#include <VEML6070.h>

// Number of serial port the SDS011 is connected to. Either Serial1 or Serial2
#define SDS_UART_PORT (Serial1)

//Load sensors / instances
Makerblog_TSL45315 TSL = Makerblog_TSL45315(TSL45315_TIME_M4);
HDC100X HDC(0x40);
Adafruit_BMP280 BMP;
VEML6070 VEML;
SDS011 SDS(SDS_UART_PORT);

bool hdc, bmp, veml, tsl = false;

//measurement variables
float temperature = 0;
float humidity = 0;
float pm10 = 0;
float pm25 = 0;
double tempBaro, pressure;
uint32_t lux;
uint16_t uv;

// This EUI must be in little-endian format, so least-significant-byte
// first. When copying an EUI from ttnctl output, this means to reverse
// the bytes. For TTN issued EUIs the last bytes should be 0xD5, 0xB3,
// 0x70.
static const u1_t PROGMEM APPEUI[8]={ 'Your APP ID Here' };
void os_getArtEui (u1_t* buf) { memcpy_P(buf, APPEUI, 8);}

// This should also be in little endian format, see above.
static const u1_t PROGMEM DEVEUI[8]={ 'YOUR DEVICE ID HERE '};
void os_getDevEui (u1_t* buf) { memcpy_P(buf, DEVEUI, 8);}

// This key should be in big endian format (or, since it is not really a
// number but a block of memory, endianness does not really apply). In
// practice, a key taken from ttnctl can be copied as-is.
// The key shown here is the semtech default key.
static const u1_t PROGMEM APPKEY[16] = { 'YOUR APP KEY HERE '};
void os_getDevKey (u1_t* buf) {  memcpy_P(buf, APPKEY, 16);}

static osjob_t sendjob;

// Schedule TX every this many seconds (might become longer due to duty
// cycle limitations).
const unsigned TX_INTERVAL = 300;

// Pin mapping
const lmic_pinmap lmic_pins = {
    .nss = PIN_XB1_CS,
    .rxtx = LMIC_UNUSED_PIN,
    .rst = LMIC_UNUSED_PIN,
    .dio = {PIN_XB1_INT, PIN_XB1_INT, LMIC_UNUSED_PIN},
};

void checkI2CSensors() {
  byte error;
  int nDevices = 0;
  byte sensorAddr[] = {41, 56, 57, 64, 118};
  tsl = false; veml = false; hdc = false; bmp = false;
  Serial.println("\nScanning...");
  for (int i = 0; i < sizeof(sensorAddr); i++) {
    Wire.beginTransmission(sensorAddr[i]);
    error = Wire.endTransmission();
    if (error == 0) {
      nDevices++;
      switch (sensorAddr[i])
      {
        case 0x29:
          Serial.println("TSL45315 found.");
          tsl = true;
          break;
        case 0x38: // &0x39
          Serial.println("VEML6070 found.");
          veml = true;
          break;
        case 0x40:
          Serial.println("HDC1080 found.");
          hdc = true;
          break;
        case 0x76:
          Serial.println("BMP280 found.");
          bmp = true;
          break;
      }
    }
    else if (error == 4)
    {
      Serial.print("Unknown error at address 0x");
      if (sensorAddr[i] < 16)
        Serial.print("0");
      Serial.println(sensorAddr[i], HEX);
    }
  }
  if (nDevices == 0) {
    Serial.println("No I2C devices found.\nCheck cable connections and press Reset.");
    while(true);
  } else {
    Serial.print(nDevices);
    Serial.println(" sensors found.\n");
  }
  //return nDevices;
}

void onEvent (ev_t ev) {
    senseBoxIO.statusGreen();
    Serial.print(os_getTime());
    Serial.print(": ");
    switch(ev) {
        case EV_SCAN_TIMEOUT:
            Serial.println(F("EV_SCAN_TIMEOUT"));
            break;
        case EV_BEACON_FOUND:
            Serial.println(F("EV_BEACON_FOUND"));
            break;
        case EV_BEACON_MISSED:
            Serial.println(F("EV_BEACON_MISSED"));
            break;
        case EV_BEACON_TRACKED:
            Serial.println(F("EV_BEACON_TRACKED"));
            break;
        case EV_JOINING:
            Serial.println(F("EV_JOINING"));
            break;
        case EV_JOINED:
            Serial.println(F("EV_JOINED"));

            // Disable link check validation (automatically enabled
            // during join, but not supported by TTN at this time).
            LMIC_setLinkCheckMode(0);
            break;
        case EV_RFU1:
            Serial.println(F("EV_RFU1"));
            break;
        case EV_JOIN_FAILED:
            Serial.println(F("EV_JOIN_FAILED"));
            break;
        case EV_REJOIN_FAILED:
            Serial.println(F("EV_REJOIN_FAILED"));
            break;
            break;
        case EV_TXCOMPLETE:
            Serial.println(F("EV_TXCOMPLETE (includes waiting for RX windows)"));
            if (LMIC.txrxFlags & TXRX_ACK)
              Serial.println(F("Received ack"));
            if (LMIC.dataLen) {
              Serial.println(F("Received "));
              Serial.println(LMIC.dataLen);
              Serial.println(F(" bytes of payload"));
            }
            // Schedule next transmission
            os_setTimedCallback(&sendjob, os_getTime()+sec2osticks(TX_INTERVAL), do_send);
            break;
        case EV_LOST_TSYNC:
            Serial.println(F("EV_LOST_TSYNC"));
            break;
        case EV_RESET:
            Serial.println(F("EV_RESET"));
            break;
        case EV_RXCOMPLETE:
            // data received in ping slot
            Serial.println(F("EV_RXCOMPLETE"));
            break;
        case EV_LINK_DEAD:
            Serial.println(F("EV_LINK_DEAD"));
            break;
        case EV_LINK_ALIVE:
            Serial.println(F("EV_LINK_ALIVE"));
            break;
         default:
            Serial.println(F("Unknown event"));
            break;
    }
}

void do_send(osjob_t* j){
    // Check if there is not a current TX/RX job running
    if (LMIC.opmode & OP_TXRXPEND) {
        Serial.println(F("OP_TXRXPEND, not sending"));
    } else {
        LoraMessage message;

        //-----Temperature-----//
        //-----Humidity-----//
        if (hdc) {
          Serial.print("Temperature: ");
          temperature = HDC.getTemp();
          Serial.println(temperature);
          message.addUint16((temperature + 18) * 771);
          delay(2000);
     
          Serial.print("Humidity: ");
          humidity = HDC.getHumi();
          Serial.println(humidity);
          message.addHumidity(humidity);
        }
        delay(2000);

        if (bmp) {
          float altitude;
          tempBaro = BMP.readTemperature();
          pressure = BMP.readPressure()/100;
          altitude = BMP.readAltitude(1013.25); //1013.25 = sea level pressure
          Serial.print("Pressure: ");
          Serial.println(pressure);
          message.addUint16((pressure - 300) * 81.9187);
          delay(2000);
        }
        
        if (tsl) {
          //-----Lux-----//
          Serial.print("Illuminance: ");
          lux = TSL.readLux();
          Serial.println(lux);
          message.addUint8(lux % 255);
          message.addUint16(lux / 255);
          delay(2000);
        }
        
        if (veml) {
          //-----UV intensity-----//
          Serial.print("UV: ");
          uv = VEML.getUV();
          Serial.println(uv);
          message.addUint8(uv % 255);
          message.addUint16(uv / 255);
          delay(2000);
        }

        uint8_t attempt = 0;
        
        while (attempt < 5) {
          bool error = SDS.read(&pm25, &pm10);
          if (!error) {
            Serial.print("PM10: ");
            Serial.println(pm10);
            message.addUint16(pm10 * 10);
            Serial.print("PM2.5: ");
            Serial.println(pm25);
            message.addUint16(pm25 * 10);
            break;
          }
          attempt++;
        }

        // Prepare upstream data transmission at the next possible time.
        LMIC_setTxData2(1, message.getBytes(), message.getLength(), 0);
        Serial.println(F("Packet queued"));
    }
    // Next TX is scheduled after TX_COMPLETE event.
}

void setup() {
    Serial.begin(9600);
    delay(10000);

    // RFM9X (LoRa-Bee) in XBEE1 Socket
    senseBoxIO.powerXB1(false); // power off to reset RFM9X
    delay(250);
    senseBoxIO.powerXB1(true);  // power on

    // init I2C/wire library
    Wire.begin();

    // Sensor initialization
    Serial.println(F("Initializing sensors..."));
    SDS_UART_PORT.begin(9600);
    checkI2CSensors();

    if (veml) 
    {
      VEML.begin();
      delay(500);
    }
    if (hdc)
    {
      HDC.begin(HDC100X_TEMP_HUMI, HDC100X_14BIT, HDC100X_14BIT, DISABLE);
      HDC.getTemp();
    }
    if (tsl) 
    {
      TSL.begin();
    }
    if (bmp) 
    {
      BMP.begin(0x76);
    }
    Serial.println(F("Sensor initializing done!"));
    Serial.println(F("Starting loop in 3 seconds."));
    delay(3000);

    // LMIC init
    os_init();
    // Reset the MAC state. Session and pending data transfers will be discarded.
    LMIC_reset();

    // Start job (sending automatically starts OTAA too)
    do_send(&sendjob);
}

void loop() {
    os_runloop_once();
}
```
{% endcollapse %}

### Decoding Profile
Für eine Box muss passend zu den übertragenen Messdaten ein Decoding-Profil
ausgewählt oder definiert werden.
Die Auswahl des Decoding-Profils ist von dem Encoding der Nachrichten auf dem
Mikrocontroller, und ob im TTN eine Payload-Function eingestellt wurde abhängig.

- Für die senseBox:home (ohne Erweiterungen) kann das `senseBox:home` Profil
verwendet werden.
- Werden die Messungen auf der LoRa-Node mit der `lora-serialization`-Library
encodiert, sollte das `lora-serialization` Profil verwendet werden.
- Mit dem `json` Profil werden beliebige andere Encodings unterstuetzt, falls eine
Payload-Function in der TTN Console die Nachrichten passend decodiert.

Im Folgenden wird erklärt wie die unterstützten Profile konfiguriert werden:

#### `sensebox/home`
Dieses Profil ist zugeschnitten auf die mit der senseBox:home gelieferten Sensoren.
Neben der Angabe `sensebox/home` unter `profile` ist keine weitere Konfiguration
notwendig.
<br><b>Dies funktioniert nur ohne die Feinstaub(PM2.5 und PM10) Sensoren</b>



Zusätzlich zu dem Arduino Sketch musst du auf der TTN-Homepage einen Decoder einrichten, sodass deine Messwerte im richtigen Format an die openSenseMap gesendet werden.
![Im Overview Fenster zu "Payload Formats" navigieren](../../../../pictures/decoder_1st.png)

![In der Textbox muss der Decoder nun eingefügt werden](../../../../pictures/decoder_code.png)

<h1 id="decoder"></h1>
{% collapse  title="Decoder für das TTN" %}
<div class="box_warning">
     <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    <b>Wichtig:</b> Hier musst du deine <b>sensor ID's</b> nachtragen.
</div>

```javascript
function Decoder(bytes, port) {
  // bytes is of type Buffer.
  'use strict';
  var TEMPSENSOR_ID = 'YOUR TEMPERATURE SENSOR ID HERE',
    HUMISENSOR_ID = 'YOUR HUMIDITY SENSOR ID HERE',
    PRESSURESENSOR_ID = 'YOUR PRESSURE SENSOR ID HERE ',
    LUXSENSOR_ID = 'YOUR LUXSENSOR ID HERE ',
    UVSENSOR_ID = 'YOUR UV SENSOR ID HERE';

  var bytesToInt = function (bytes) {
    var i = 0;
    for (var x = 0; x < bytes.length; x++) {
      i |= +(bytes[x] << (x * 8));
    }
    return i;
  };

  var uint8 = function (bytes) {
    if (bytes.length !== uint8.BYTES) {
      throw new Error('int must have exactly 1 byte');
    }
    return bytesToInt(bytes);
  };
  uint8.BYTES = 1;

  var uint16 = function (bytes) {
    if (bytes.length !== uint16.BYTES) {
      throw new Error('int must have exactly 2 bytes');
    }
    return bytesToInt(bytes);
  };
  uint16.BYTES = 2;

  var humidity = function (bytes) {
    if (bytes.length !== humidity.BYTES) {
      throw new Error('Humidity must have exactly 2 bytes');
    }

    var h = bytesToInt(bytes);
    return h / 1e2;
  };
  humidity.BYTES = 2;

  var decode = function (bytes, mask, names) {

    var maskLength = mask.reduce(function (prev, cur) {
      return prev + cur.BYTES;
    }, 0);
    if (bytes.length < maskLength) {
      throw new Error('Mask length is ' + maskLength + ' whereas input is ' + bytes.length);
    }

    names = names || [];
    var offset = 0;
    return mask
      .map(function (decodeFn) {
        var current = bytes.slice(offset, offset += decodeFn.BYTES);
        return decodeFn(current);
      })
      .reduce(function (prev, cur, idx) {
        prev[names[idx] || idx] = cur;
        return prev;
      }, {});
  };

  var bytesToSenseBoxJson = function (bytes) {
    var json;

    try {
      json = decode(bytes,
        [
          uint16,
          humidity,
          uint16,
          uint8,
          uint16,
          uint8,
          uint16
        ],
        [
          TEMPSENSOR_ID,
          HUMISENSOR_ID,
          PRESSURESENSOR_ID,
          LUXSENSOR_ID + '_mod',
          LUXSENSOR_ID + '_times',
          UVSENSOR_ID + '_mod',
          UVSENSOR_ID + '_times'
        ]);

      //temp
      json[TEMPSENSOR_ID] = parseFloat(((json[TEMPSENSOR_ID] / 771) - 18).toFixed(1));

      //hum
      json[HUMISENSOR_ID] = parseFloat(json[HUMISENSOR_ID].toFixed(1));

      // pressure
      if (json[PRESSURESENSOR_ID] !== '0') {
        json[PRESSURESENSOR_ID] = parseFloat(((json[PRESSURESENSOR_ID] / 81.9187) + 300).toFixed(1));
      } else {
        delete json[PRESSURESENSOR_ID];
      }

      // lux
      json[LUXSENSOR_ID] = (json[LUXSENSOR_ID + '_times'] * 255) + json[LUXSENSOR_ID + '_mod'];
      delete json[LUXSENSOR_ID + '_times'];
      delete json[LUXSENSOR_ID + '_mod'];

      // uv
      json[UVSENSOR_ID] = (json[UVSENSOR_ID + '_times'] * 255) + json[UVSENSOR_ID + '_mod'];
      delete json[UVSENSOR_ID + '_times'];
      delete json[UVSENSOR_ID + '_mod'];

    } catch (e) {
      json = { payload: bytes };
    }

    return json;
  };

  return bytesToSenseBoxJson(bytes);
}
```

{% endcollapse %}



#### `lora-serialization`
Für Sensorstationen, welche eine spezielle Sensorkonfiguration haben, können
durch das `lora-serialization` Profil nahezu beliebige Daten annehmen.
Hierzu nutzen wir die [`lora-serialization`](https://github.com/thesolarnomad/lora-serialization)
Bibliothek, welche ein einheitliches Encoding auf dem Microcontroller, und
Decoding am anderen Ende der Leitung erlaubt.

Es werden die Encodings `temperature`, `humidity`, `unixtime`, `uint8` und
`uint16` unterstützt, welche pro Sensor unter **Dekodierungsoptionen** angegeben
werden müssen.  Die Zuordnung des Sensors kann über eine der Properties
`sensor_id`, `sensor_title`, `sensor_unit`, `sensor_type` erfolgen.

Ein Beispiel für zwei Sensoren sähe so aus:

```json
[
  { "decoder": "temperature", "sensor_title": "Temperatur" },
  { "decoder": "humidity", "sensor_unit": "%" }
]
```

> ***Hinweis:*** *Die Reihenfolge der Sensoren muss hier beim Arduino und der
> openSenseMap identisch sein!*

Wenn ein `unixtime` Decoder angegeben wird, wird dessen Zeitstempel für alle im
Folgenden angegebenen Messungen verwendet.
Andernfalls wird der Moment verwendet, in dem das erste Gateway die Nachricht
erhält. Beispiel: 

```json
[
  { "decoder": "unixtime" },
  { "decoder": "temperature", "sensor_title": "Temperatur" }
]
```

#### `json` - Decoding mit TTN Payload Function
Falls die `lora-serialization` Library nicht zur Wahl steht, können Messungen
schon auf Seite des TTN mittels einer *Payload Function* dekodiert werden,
sodass hier beliebige Datenformate unterstützt werden.

![In der TTN Console muss eine Payload Function definiert werden](https://raw.githubusercontent.com/sensebox/resources/master/images/lora_ttn_payloadfunc.png)

Das resultierende JSON muss kompatibel mit den von der [openSenseMap-API verstandenen
Measurement Formaten sein](https://docs.opensensemap.org/#api-Measurements-postNewMeasurements).
Ein einfaches Beispiel:

```json
{ "sensor_id1": "value1, "sensor_id2: "value2" }
```

Ein Beispiel dafür wurde dir [oben](#decoder) gezeigt.

Auf Seiten der openSenseMap ist keine Konfiguration notwendig.
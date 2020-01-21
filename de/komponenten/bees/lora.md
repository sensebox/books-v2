# LoRa-Bee {#head}
<div class="description">Verwendet die LoRa-Schnittstelle um Daten stromsparend und kostenlos ins Internet zu übertragen. Das Besondere an der Übertragunstechnologie ist ihre Reichweite, so muss ein LoRa-Gateway im Umkreis von lediglich 2 bis hin zu 40 Kilometern bestehen, je nachdem ob die Station im städtischen Gebiet oder im ländlichen Raum ohne Gebirge (ggf. über Wasser) genutzt werden soll.<br>Das von senseBox entwickelte LoRaWan™-XBee-Modul überträgt Daten mithilfe der LoRa-Funk-Standards des TheThingsNetwork. Die hierzu benötigte Infrastruktur wird von der TTN-Community bereit gestellt, und ist in immer mehr Regionen verfügbar. Deutschland besitzt im internationalen Vegleich schon eine sehr gute Abdeckung mit ~2000 Gateways.</div>

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
Bitte prüfe bevor du dir eine senseBox mit LoRa Bee holst, ob dein Gebiet bereits von LoRa erschlossen ist.<br>Dies ist auf der [Karte](https://www.thethingsnetwork.org/community#list-communities-map) des TTN möglich.

**Achtung: Aufgrund der erhöhten Komplexität der Installation empfehlen wir das LoRa-Modul außschließlich fortgeschrittenen Nutzern von Open-Hardware**

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Dieses Beispiel befasst sich mit einer senseBox:home mit allen Sensoren, fehlt dir ein Sensor aus der senseBox:home oder hast du einen zusätzlichen Sensor musst du noch ein zusätzliches decoding Profil erstellen, was dir am Ende des Tutorials erklärt wird.</div>


# Upload über LoRaWAN

Es ist möglich Sensordaten per [LoRaWAN™](https://de.wikipedia.org/wiki/Long_Range_Wide_Area_Network) durch das [TheThingsNetwork](https://thethingsnetwork.org)
(TTN) auf die openSenseMap zu laden.<br>
LoRa ist ein zunehmend Verbreitung findender Funkstandard, welcher ähnlich wie
WiFi digitale Datenübertragung in einem IP-Netzwerk erlaubt, jedoch deutlich
andere Features bietet:

- Datendurchsatz: 300 - 3000 Bit/s
- Reichweite:     ~ 15km (Im Durchschnitt) 

TTN ist eins von mehreren Projekten, welches die zur Funk-Hardware zugehörige
Infrastruktur für das IP-Netzwerk implementiert, wodurch registrierte Geräte
mit dem Internet verbunden werden können.

Nutzer können *Gateways* sowie *Nodes* zu dem Netzwerk hinzufügen.


## TheThingsNetwork & openSenseMap Integration
Die openSenseMap bietet eine direkte Integration in das TheThingsNetwork, was die
Konfiguration stark vereinfacht. Das TheThingsNetwork ist ein LoRa Netzwerk, welches dafür zuständig ist Daten von deiner senseBox an die openSenseMap weiterzuleiten. Erstelle als ersten Schritt dieses Tutorials einen Account auf der [Website](www.thethingsnetwork.org).

### Registrierung im TheThingsNetwork

Hast du einen Account erstellt, musst du nun eine Application hinzufügen.<br>Dies kannst du über diesen [Link](https://console.thethingsnetwork.org/applications) erledigen. Hier musst du eine Application ID, also einen Namen für deine Anwendung eingeben.<br><br>Nachdem die Application hinzugefügt wurde, musst du nun ein Device hinzufügen. Dies geschieht über den Reiter `Devices`->`Register device`. Auch hier musst du eine ID für das Gerät hinzufügen. Die `Device-EUI` kannst du dir mit einem Klick auf das Symbol generieren lassen.<br><br>Zu guter Letzt musst du dem TTN-Netzwerk nun noch mitteilen, dass deine Daten an die openSenseMap weitergeleitet werden sollen. Hierfür gehst du auf deine [Übersicht](https://console.thethingsnetwork.org/applications), wählst deine eben erstellte Application aus und gehst auf den Reiter `Integrations`. Dort findest du den Knopf `Add integration`, woraufhin sich ein Fenster mit einer Reihe an Auswahlmöglichkeiten öffnet. Unter diesen Möglichkeiten wählst du `HTTP Integration` aus. Die `Process ID` kannst du wieder selbst wählen. Bei `URL` gibst du `https://ttn.opensensemap.org/v1.1` an und die Methode lautet `POST`. Unter Access Key den `default key` auswählen. Das Authorization Feld kann leer bleiben!

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/osem_ttnconsole.png" alt="ttnconsole" center width="767" />

### Registrierung auf der openSenseMap

Gehe nun auf die openSenseMap und registriere eine senseBox mit deinen Sensoren, die du angeschlossen hast. Als Methode zur Datenübertragung wählst du hier `LoRa` aus. Im Abschnitt `Erweitert` öffnet sich nun der Reiter für die TTN-Konfigurationen. Als Erstes musst du hier ein Decoding Profil auswählen. Dies hängt von den Sensoren ab, die du installieren möchtest. 

- Hast du nur die Sensoren der senseBox:home (Temperatur&Luftfeuchte, Luftdruck, UV/Licht) wähle das `senseBox:home` Profil aus. 
- Hast du nicht alle Sensoren der senseBox:home oder hast zusätzliche wie <b> z.B. den Feinstaubsensor </b> wähle hier `JSON` aus!

In den weiteren Feldern du die `Application ID` und die `Device ID` aus dem vorherigen Schritt angeben.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/osem_register_ttn.png"  alt="osemregister" center width="767"/>

Optional kann im Feld `port` noch der Port angegeben werden, auf welchem
der Sender seine Daten an das TTN schickt. So lassen sich dieselbe `app_id`
und `dev_id` für mehrere Sensorstationen verwenden. Falls das nicht der Fall ist, lasse dieses Feld leer.

### Datenübertragung 
Nachdem du die Box erfolgreich auf der openSenseMap registriert hast, bekommst du nun per Mail einen Arduino Sketch zugeschickt. Dieser ist schon <b>fast fertig!</b> Wir müssen aber noch ein paar Änderungen vornehmen, bis alles funktioniert. 

Öffne den dir zugeschickten Sketch in der Arduino IDE und scrolle zur Stelle im Code, an der du die Schlüssel `DEVEUI`,`APPEUI` und `APPKEY` eingeben musst.  

{% collapse  title="Stelle im Code" %}

```arduino

// This EUI must be in little-endian format, so least-significant-byte (lsb)
// first. When copying an EUI from ttnctl output, this means to reverse
// the bytes.
static const u1_t PROGMEM DEVEUI[8]={0x10, 0xC0, 0x7F, 0xE2, 0xCF, 0xB9, 0x34, 0x00 };
void os_getDevEui (u1_t* buf) { memcpy_P(buf, DEVEUI, 8);}

// This EUI must be in little-endian format, so least-significant-byte (lsb)
// first. When copying an EUI from ttnctl output, this means to reverse
// the bytes. For TTN issued EUIs the last bytes should be 0xD5, 0xB3,
// 0x70.
static const u1_t PROGMEM APPEUI[8]={ 0x24, 0xBE, 0x01, 0xD0, 0x7E, 0xD5, 0xB3, 0x70 };
void os_getArtEui (u1_t* buf) { memcpy_P(buf, APPEUI, 8);}

// This key should be in big endian format (msb) (or, since it is not really a
// number but a block of memory, endianness does not really apply). In
// practice, a key taken from ttnctl can be copied as-is.
// The key shown here is the semtech default key.
static const u1_t PROGMEM APPKEY[16] = { 0x5A, 0x9D, 0x13, 0xEB, 0x5A, 0x1F, 0x01, 0xD7, 0x35, 0x90, 0x85, 0xE5, 0x36, 0x18, 0x10, 0x6C };
void os_getDevKey (u1_t* buf) {  memcpy_P(buf, APPKEY, 16);}

```
{% endcollapse %}

Wie du den Kommentaren im Code entnehmen kannst, ist es wichtig das richtige Format der Schlüssel einzusetzen. Mit einem Klick auf das `<>` Symbol lässt du dir die Schlüssel anzeigen und kannst mit dem Pfeilsymbolen das Format ändern. Achte darauf, dass `Device und Application EUI` im `lsb` Format während der `App Key` im `msb` Format ist. 
Hast du das gemacht, kannst du dir die einzelnen Schlüssel kopieren und an der Stelle im Code ersetzen.  


![Ausgewählte ID's und Keys welche im Code ersetzet werden müssen!](../../../../pictures/LoRa_TTN_EUI.png)


### Decoding

<div class="box_success">
    <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
   Besitzt du die senseBox:home ohne Feinstaubsensor kannst du den Sketch einfach hochladen und er sollte funktionieren. Für den Feinstaubsensor müssen wir noch ein geeignetes Decoding Profil einstellen.  
</div>

#### sensebox/home
Dieses Profil ist zugeschnitten auf die mit der senseBox:home gelieferten Sensoren.
Neben der Angabe `sensebox/home` unter `profile` ist keine weitere Konfiguration
notwendig.

#### JSON
Begebe dich auf die Übersicht deiner Application indem du über [diesen Link](https://console.thethingsnetwork.org/applications/) deine Application auswählst. Dort wählst du wie auf dem Bild zu sehen den Reiter `Payload Formats` aus. Hier siehst du ein Eingabefeld, in welches du den Decoder schreiben musst. 

![Im Overview Fenster zu "Payload Formats" navigieren](../../../../pictures/decoder_1st.png)

![In der Textbox muss der Decoder nun eingefügt werden](../../../../pictures/decoder_code.png)

In diesem Beispiel findest du ein Decoder Profil welches nur den Temperatur- und Luftfeuchte-Sensor sowie den Feinstaubsensor der senseBox decodiert. 


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
  var TEMPSENSOR_ID = "Deine ID hier!";
  var  HUMISENSOR_ID = "Deine ID hier!";
  var  PM25SENSOR_ID = "Deine ID hier!";
  var PM10SENSOR_ID = "Deine ID hier!";


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
          uint16
        ],
        [
          TEMPSENSOR_ID,
          HUMISENSOR_ID,
          PM25SENSOR_ID,
          PM10SENSOR_ID
        ]);

      //temp
      json[TEMPSENSOR_ID] = parseFloat(((json[TEMPSENSOR_ID] / 771) - 18).toFixed(1));
      //hum
      json[HUMISENSOR_ID] = parseFloat(json[HUMISENSOR_ID].toFixed(1));
      //PM2.5
      json[PM25SENSOR_ID] = parseFloat(((json[PM25SENSOR_ID] / 10)).toFixed(1));
      //PM10
      json[PM10SENSOR_ID] = parseFloat(((json[PM10SENSOR_ID] / 10)).toFixed(1));

    } catch (e) {
      console.log(e);
      json = { payload: bytes };
    }

    return json;
  };

  return bytesToSenseBoxJson(bytes);
}
```

{% endcollapse %}
Möchtest du nun hier etwas ändern, sagen wir du möchtest den Luftdrucksensor hinzufügen, so musst du dies an drei Stellen im Decoder tun. 

{% collapse  title="Erste Änderung" %}
Als erstes musst du zwei zusätzliche Variablen für die ID's deklarieren. 
```javascript 
function Decoder(bytes, port) {
  // bytes is of type Buffer.
  'use strict';
  var TEMPSENSOR_ID = "Deine ID hier!";
  var HUMISENSOR_ID = "Deine ID hier!";
  var PM25SENSOR_ID = "Deine ID hier!";
  var PM10SENSOR_ID = "Deine ID hier!";
  var PRESSURESENSOR_ID = "Deine ID hier!";

    
```
{% endcollapse %}

{% collapse  title="Zweite Änderung" %}
Das Ausgabe-JSON muss um ein Feld erweitert werden. 
```javascript
  var bytesToSenseBoxJson = function (bytes) {
    var json;
    try {
      json = decode(bytes,
        [
          uint16,
          humidity,
          uint16,
          uint16,
          uint16
        ],
        [
          TEMPSENSOR_ID,
          HUMISENSOR_ID,
          PM25SENSOR_ID,
          PM10SENSOR_ID,
          PRESSURESENSOR_ID
        ]);
  
``` 
{% endcollapse %}

{% collapse  title="Dritte Änderung" %}
Zu guter Letzt muss dem erweiterten JSON noch ein Wert zugewiesen werden.

```javascript
      //temp
      json[TEMPSENSOR_ID] = parseFloat(((json[TEMPSENSOR_ID] / 771) - 18).toFixed(1));
      //hum
      json[HUMISENSOR_ID] = parseFloat(json[HUMISENSOR_ID].toFixed(1));
      //PM2.5
      json[PM25SENSOR_ID] = parseFloat(((json[PM25SENSOR_ID] / 10)).toFixed(1));
      //PM10
      json[PM10SENSOR_ID] = parseFloat(((json[PM10SENSOR_ID] / 10)).toFixed(1));
      //Pressure
      json[PRESSURESENSOR_ID] = parseFloat(((json[PRESSURESENSOR_ID] / 81.9187) + 300).toFixed(1));
```
{% endcollapse %}
<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Fügst du einen neuen Sensor hinzu, so musst du das natürlich auch in deinem Arduino Sketch machen!
</div>

#### `lora-serialization`
Für Sensor-Stationen, welche eine spezielle Sensorkonfiguration haben, können
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
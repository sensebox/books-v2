# Upload via LoRaWAN {#head}

It is possible to send sensor data via LoRaWAN™ through the [TheThingsNetwork](https://thethingsnetwork.org)
(TTN) onto the openSenseMap.
LoRa is an increasingly widespread radio standard, which is similar to the
WiFi digital data transmission allowed in an IP network, but offers significant
other features:

- Data throughput: 300 - 3000 Bit/s
- Range: up to 15km 

TTN is one of several projects, which is the radio hardware's associated
Infrastructure implemented for the IP network, enabling registered devices
can be connected to the Internet.

Users can add *Gateways* and *Nodes* to the network.


## TTN openSenseMap Integration
The openSenseMap offers a direct integration into the TTN network, which greatly simplifies the
configuration process.

### Registration in TTN Console

In order to integrate a device into the TTN, it must first be defined. On
[thethingsnetwork.org](https://console.thethingsnetwork.org/)
an *Application* and a *Device* must be registered. Here you get a
`app_id` and a `dev_id`.

For the registered application, the HTTP integration must be configured under <https://console.thethingsnetwork.org/applications/DEINE_APPID/integrations/create/http-ttn>
can be activated. This must be configured to forward the messages via `POST` to `https://ttn.opensensemap.org/v1.1`. The
Authorization field can remain empty!

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/osem_ttnconsole.png" center width="767" />

For the data transfer to the openSenseMap the `app_id` and `dev_id` must be set at the form in the openSenseMap registration.
In addition, a suitable decoding profile must be configured,
which determines how the - because of the low bandwidth as raw bytes 
data should be interpreted as measurements.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/osem_register_ttn.png" center width="819" />

Optionally in the `port` field, you can specify the port on which the
the transmitter sends its data to the TTN. This way the same `app_id`
and `dev_id` for multiple sensor stations.

### Decoding profiles
A decoding profile must be created for a box to match the transmitted measurement data.
can be selected or defined.
The selection of the decoding profile depends on the encoding of the messages on the
microcontroller, and whether a payload function has been set in the TTN depends.

- For the senseBox:home (without extensions) the `senseBox:home` profile can be used.
- If the measurements are taken off the LoRa node with the `lora-serialization` library,
 the `lora-serialization` profile should be used.
- The `json` profile supports any other encoding, if a
  Payload function in the TTN console decodes the messages appropriately.

The following explains how to configure the supported profiles:

#### `sensebox/home`
This profile is tailored to the sensors supplied with senseBox:home,
in use with
[this Arduino sketch](https://github.com/sensebox/random-sketches/tree/master/lora/dragino).
Besides `sensebox/home` under `profile` there is no further configuration
necessary.

#### `lora-serialization`
For sensor stations that have a special sensor configuration, the following options are available that
can accept almost any data through the `lora-serialization` profile.
For this we use the [`lora-serialization`](https://github.com/thesolarnomad/lora-serialization)
library, which provides a uniform encoding on the microcontroller, and
decoding at the other end of the line.

The encodings `temperature`, `humidity`, `unixtime`, `uint8` and `number` are used.
`uint16`, which is specified per sensor under **Decoding options**.
 The assignment of the sensor can be done via one of the properties
`sensor_id`, `sensor_title`, `sensor_unit`, `sensor_type`.

An example for two sensors would look like this:

```json
[
  { "decoder": "temperature", "sensor_title": "Temperature" },
  { "decoder": "humidity", "sensor_unit": "%" }
]
```

>***Note:*** *The order of the sensors has to be set here at Arduino and the openSenseMap to be identical!

If a `unixtime` decoder is specified, its timestamp will be used for all decoders in the
The following measurements are used.
Otherwise, the moment when the first gateway receives the message
receives. Example: 

```json
[
  { "decoder": "unixtime" },
  { "decoder": "temperature", "sensor_title": "Temperature" }
]
```

#### `json` - Decoding with TTN Payload Function
If the `lora-serialization` library is not available, measurements can be sent using 
the  *Payload Function* tab at TTN,so that any data formats are supported.

![In the TTN Console a Payload Function must be defined](https://raw.githubusercontent.com/sensebox/resources/master/images/lora_ttn_payloadfunc.png)

The resulting JSON must be compatible with the [openSenseMap API's understanding of the
Measurement Formats](https://docs.opensensemap.org/#api-Measurements-postNewMeasurements).
A simple example:

```json
{ "sensor_id1": "value1, "sensor_id2: "value2" }
```

No configuration is necessary on the openSenseMap side.



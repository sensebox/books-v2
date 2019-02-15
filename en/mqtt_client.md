# Data transmission via MQTT {#head}

This manual describes the possibility to send measured values via MQTT to the openSenseMap. The openSenseMap is able to connect as MQTT client to a public MQTT broker. The openSenseMap does not offer its own MQTT broker. The openSenseMap MQTT client connects to a 13 digit Id with prefix `osem_` followed by 8 random digits and letters from A to F, unless otherwise specified in the connection settings.

Each registered senseBox requires separate MQTT settings. For a connection with a broker the following parameters can be specified. All specified settings are stored in the openSenseMap database. It is therefore a good idea to set up your own access data.

### URL
The address to the MQTT broker. Should start with `mqtt://` or `ws://`. If the MQTT Broker requires authentication by username and password, it can be encoded in the URL. The URL should look like this: `mqtt://username:password@hostname.of.mqtt.broker`.

### Topic
The MQTT topic under which the openSenseMap should receive messages. For example `home/temperatures/outside`

### Message format
Here you should choose between `json` and `csv`. The formats correspond to JSON array and csv documented in [docs.opensensemap.org](https://docs.opensensemap.org/#api-Measurements-postNewMeasurements).

### Decoding options
Expects a JSON object. Only for message format json: Allows you to specify a JSONPath expression under the key jsonPath, which specifies the position of the JSON encoded data. For example: `{"jsonPath":"$.payload_fields"}`

### Connection options
Expects a JSON object. Allows you to pass connection options to the MQTT client. The keys `keepAlive`, `reschedulePings`, `clientId`, `username` and `password` of [https://github.com/mqttjs/MQTT.js#client](https://github.com/mqttjs/MQTT.js#client) are allowed.

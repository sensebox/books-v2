# Manual configuration of a sensor on the OSeM {#head}

In this manual the connection of a SHT15 sensor to the OSeM network is described as an example.
For data processing and transmission we use an Arduino Uno with the Arduino Ethernet Shield.
The REST interface also allows any other programmable measuring station connected to the Internet publishing and sharing measurements on the OSeM.

## Materials
* Arduino Uno R3
* Arduino Ethernet Shield R3
* [Sparkfun SHT15 Breakout](https://www.sparkfun.com/products/8257)

## Structure

<center><img src="https://raw.githubusercontent.com/sensebox/resources/master/images/aufbau-sht15.png" width="300px"/></center>

* VCC to 5V
* DATA to pin 6
* SCK to pin 7
* GND to Arduino GND

## SHT1x library
A simple Arduino interface is already available for sensors of the SHT1x series from Sensirion. Download the library from [Github](https://github.com/practicalarduino/SHT1x) and extract it to your `Arduino/libraries` folder. Import the library as usual into your Arduino sketch, and additionally define the data and clock pin according to the wiring in the figure above. After that you can connect to the sensor:

```arduino
#include<sht1x.h>
#define dataPin 6
#define clockPin 7
SHT1x sht1x(dataPin, clockPin);
```

Now two functions can be used to store the temperature in degrees Celsius and the relative humidity in percent as a floating point number:

```arduino
float temp = sht1x.readTemperatureC();
float humi = sht1x.readHumidity();
```

## Manual registration
To connect a sensor to the OSeM, you need to register it [first] (https://opensensemap.org/register).
If you do not use any of the senseBox kits, you have to select the manual configuration in step 4 of the registration.
As shown in the figure below, a new sensor is created for each measured phenomenon:

![sensor configuration](https://raw.githubusercontent.com/senseBox/resources/master/images/osem_sensorconfig.png)

## openSenseMap API
A REST interface controls the access to the database on the OSeM server.
Internally, each measuring station is linked to its sensors (or phenomena), which were specified during registration.
In our case we have generated a senseBox ID for the station, as well as a sensor ID for temperature and humidity measurements during the registration process.
The IDs will be sent to you via email after the registration is complete.
Each measurement is then sent to the server via the HTTP protocol with the `POST` operation.
A unique URI must be specified which is structured as follows:

```
https://api.opensensemap.org/senseBoxID/SensorID
```

***Hint:*** *If the microcontroller used is not HTTPS compatible, there is currently still an HTTP interface available: `http://opensensemap.org:8000/senseBoxID/sensorID`*

Each measurement is sent individually to the server in JSON format via the `value` attribute.
Assuming we want to send a thermometer reading (ID abcd) of `22.5` from our station (ID 1234) to the OSeM server, the complete HTTP POST request would look like this:

```
POST /boxes/1234/abcd HTTP/1.1
Host:opensensemap.org
Content-Type: application/json
Connection: close
Content-Length: 14

{"value":22.5}
```
> ***Note***:  From line 7 the JSON data is sent. The line break (`\n`) in line 6 is necessary to execute the operation correctly.

## Arduino OSeM Client
After registration, an Arduino Sketch will be generated and sent to you as an attachment in a confirmation email.
This sketch has to be customized by inserting the SHT1x library, creating the required variables and a sensor instance:

```arduino
#include <SPI.h>
#include <Ethernet.h>

#include<sht1x.h>
#define dataPin 6
#define clockPin 7
SHT1x sht1x(dataPin, clockPin);

//senseBox ID
#define senseBox_ID "1234"
//Sensor IDs
#DeFine TEMPERATURESENSOR ID, "abcd."
#define HUMIDITYSENSOR_ID "efgh"
```

Within the if statement in the `loop` function, you have to read the sensors one after the other and upload them with the help function `postFloatValue()`.

```arduino
void loop()
{
  //Upload data with constant frequency
  if (millis() - oldTime >= postInterval)
  {
    oldTime = millis();
    temperature = sht1x.readTemperatureC();
    postFloatValue(temperature, 1, temperatureSensorID);
    humidity = sht1x.readHumidity();
    postFloatValue(humidity, 0, humiditySensorID);
  }
}
```

If you are using an Ethernet module that is not compatible with the Ethernet library, the sketch must be adapted accordingly.
If you have any further questions, you can also contact [our support team] directly (mailto:support@sensebox.de).

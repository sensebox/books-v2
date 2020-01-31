# Illumination and UV-Radiation Sensor {#head}
<div class="description">

Two sensors are put together with this senseBox component.

The light intensity is measured with the TSL45315 sensor from AMS-TAOS. This sensor detects the light conditions similar to the human eye and outputs the brightness values directly in lux, with a large dynamic range (3 lux to 220k lux).

The second sensor is a Vishay VEML6070 Ultraviolet (UV) light sensor. This converts the intensity of the UV light of the sun into digital data. The sensor has excellent UV sensitivity and linearity via Filtron ™ technology. It has a good UV radiation measurement even with long solar UV exposure and can compensate for excellent temperature fluctuations.

</div>
<div class="line">
    <br>
    <br>
</div>

![Illumination and UV-Radiation](https://github.com/sensebox/resources/raw/master/gitbook_pictures/tsl top.png)

## Technical Details

### Exposure Sensor

* 3,3V - 5V tolerant I2C/TWI Interface
* Input voltage range: 3,3V - 5V
* On-board 2,5V voltage regulator
* On-board levelconverter

### UV-Sensor

* Operating voltage: 2,7V - 5,5V I2C Interface
* Supports confirmation function  (Active Acknowledge-Function)
* Temperature compensation: -40°C to +85°C
* Software-switching of control for immunity with flickering fluorescent lamps

## Measurement
* 25mm x 25mm x 9mm
* Weight: 2,5 g

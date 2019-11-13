# Soil Temperature & Soil Humidity Sensor truebner SMT50 {#head}

<div class="description">
	The truebner SMT50 is a capacitive soil temperature and humidity sensor and is therefore well suited for various garden applications.
    Capacitive soil moisture sensors generate an electric field around their measuring electrodes.<br>The field penetrates the surrounding soil. The measuring electronics of the sensor determine the resulting electrical capacitance of the electrodes. The higher the water content in the soil, the greater the measuring capacity of the sensor.
</div>
<div class="line">
    <br>
    <br>
</div>

![soil temperature & humidity](../../../../pictures/smt50_top.png)

## Technical details
- Supply voltage: 3.3 - 30 VDC (DC voltage)
- Current consumption approx. 2.7 mA (measured at 12VDC)
- Measuring range volumetric water content: 0 - 50% (with +/- 3% accuracy)
- Measuring range temperature: -20 to +85 ° C (at +/- 1,0 ° C accuracy)
- Measurement method: FDR (Frequency Domain Response)
- Measurement signal: symmetrical, bipolar differential

### Maße
- Dimensions: about 13.5 cm x 2.15 cm
- Weight incl. 10m cable: approx. 235 g

## Integration of the SMT50 in a consisting senseBox:home setup
Prerequisite for the tutorial is a senseBox:home station registered on the openSenseMap.<br>In our case we have already registered a senseBox:home with WiFi module for data transmission, as well as sensors for temperature & humidity and air pressure & temperature. We also brought it online beforehand.

![Our registered station on the openSenseMap](../../../../pictures/station_osem_home.jpg)

### Expanding the hardware
We simply have to put the JST plug into the Digital A(pins 1&2) connector.

### Integration into openSenseMap
After that sign in on the OSeM. Select your station in the Dashboard and click 'Edit'. Under the sensors tab there is a + symbol on the top right, two new entries for the two phenomena should be created. Now enter the required information one after the other for the two additional measured values. Finally, for saving the changes, you have to click on the floppy disk icon.

![sensor edit OSeM](../../../../pictures/sensoren_edit.jpg)

### Expand the script
The script with the newly added phenomena should now also be found on the configuration page under the tab Script. Enter your Wi-Fi data and copy the script with 'Ctrl + A' in Arduino.<br><br>So that the measured values ​​can be uploaded, the respective functions for reading out the sensors have to be implemented and the upload function has to be adapted to the OSeM.<br>Round about the line '75' the sensor IDs should be located. If everything worked, the IDs for the newly created phenomena should also appear there:
```arduino
// sensor IDs
// temperature
const char TEMPERSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27905";
// rel. humidity
const char RELLUFSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27904";
// air pressure
const char LUFTDRSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27903";
// volumetric waterpercentage
const char BELEUCSENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27901";
// soil temperature
const char UVINTESENSOR_ID[] PROGMEM = "5dc3f30a0f9dc3001be27902";
```
The following part should be put into the 'loop ()' function, preferably at the end before the values ​​are sent to the OSeM with submitValue ().<br>Now a function has to be written to read out the data. For this we use the function 'analogRead ()' and convert this value into volts:
```arduino
float voltage1 = analogRead(1) * (3.3 / 1024.0);
float voltage2 = analogRead(2) * (3.3 / 1024.0);
```
We can now convert these values ​​into temperature or humidity values ​​using the formula from the data [sheet](http://www.truebner.de/sites/default/files/SMT50_Flyer_deutsch.pdf):
```arduino
float soilTemperature = (voltage1 – 0.5) / 0.01;
float soilMoisture = voltage2 / 3 * 50;
```
Finally, we give the command that the metrics will be sent to the openSenseMap:
```arduino
addMeasurement(VOLUMESENSOR_ID, soilMoisture);
addMeasurement(BODENTSENSOR_ID, soilTemperature);
```
<br>
If you have done everything right, your values ​​will now be displayed on the OSeM!<br>
![Station openSenseMap](../../../../pictures/station_osem.jpg)
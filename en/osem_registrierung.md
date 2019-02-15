# Registration on the openSenseMap {#head}
In order to register a new senseBox on the openSenseMap, a user account must first be created under *Login*.
There you can find the dashboard under the user logo in the upper right corner, where senseBoxes can be added and [managed](osem_manage-boxes.md).

A new senseBox can now be registered under *New senseBox*. The following information is necessary:

- **name of the senseBox**: e.g. the location
- **Indoor or outdoor**: serves to filter boxes
- **Location**: can be selected via the map
- **Model**: determines the sensor configuration

There is a pre-selection for different models.
If a sensor configuration does not exist, individual sensors can be added manually under *Manual configuration*.
How this works in detail is described in [Other Platforms](osem_custom_sensor.md).

After the registration has been completed, an Arduino sketch is displayed which reads the specified sensors and transfers their data regularly to the openSenseMap.
To transfer this to the senseBox, you need the [Arduino IDE](https://www.arduino.cc/en/Main/Software), a sample installation guide for the *senseBox:home* can be found [here](https://home.books.sensebox.de/de/software_installation.html).

## Advanced Configuration
Besides the [HTTP REST API](osem_api.md) it is also possible to use other interfaces for data transfer.
Settings for this must be made under the corresponding tab in the *Advanced* section.
Detailed instructions can be found here:

- [MQTT](mqtt_client.md)
- [TheThingsNetwork](ttn_integration.md)



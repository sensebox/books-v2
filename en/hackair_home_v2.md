# hackAIR home sensor v2 data to openSenseMap.org {#head}
It is also possible to send the measured data of the hackAIR home sensors (version 2) to the openSenseMap.

First you have to install your hackAIR sensor as follows [assemble](http://www.hackair.eu/hackair-home-v2/) and the [hackair-v2-advanced](https://github.com/mkraats/hackair-v2-advanced).

After that you can use the openSenseMap configuration in the web interface. ([fig. 1](#illustration-1-webinterface-fine dust sensor))

After that a senseBox has to be registered on the openSenseMap with the correct hardware.

## 1.[Register](https://opensensemap.org/register) new senseBox
- Fill in user, location, site and name. Group identification could for example be 'hackAIR'.
- Under the item **"Hardware "** in the step **"my senseBox "** unfold the field **"hackAIR "** and select the appropriate sensor configuration. ([fig. 2](#image-2-registration-opensensemap))
- Complete registration.
- **Important:** Copy `senseBox ID`. This is a 24 character string that looks something like this: *58a88c6b650831d8a3625e01*
- **Important**: copy `access token`. This is a 64 character string.
- If a correct e-mail address was specified, the senseBox ID comes again by e-mail. (for example: *Your senseBox ID is: 58a88c6b650831d8a3625e01*)

## 2. configure hackAIR device
The `hackAIR home v2` sensor can be easily configured via a website. To do this, connect the device to the power supply.
Then an open network called `ESP-wemos` should be available. After that you have to do the following steps:

- Open the configuration page of hackAIR home v2 with your browser (http://192.168.4.1).
- Enter the *senseBox-ID* in the **openSenseMap senseBox ID** field under **Configure WiFi**.
- Under the item **Configure WiFi** enter the *access token* in the field **senseBox access token**.
- Click at the bottom of the page on **Save**.

## Done
The `hackAIR home v2` sensor should now send the data to the openSenseMap.

## Figure 1: Webinterface fine dust sensor
<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/hackair/02_Sensor_Konfiguration.png"/>

## Figure 2: Registration openSenseMap
<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/hackair/01_openSenseMap_Konfiguration.png"/>



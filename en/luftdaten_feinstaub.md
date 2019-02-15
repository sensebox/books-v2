# Stuttgart Luftdaten.info Send data to openSenseMap.org {#head}
The fine dust sensors of the OK Lab Stuttgart (Luftdaten.info) make it possible to send the measured data to the openSenseMap. In order to send the data to the openSenseMap, the first step is to find out which sensors are used on the particulate matter sensor. This is best seen in the web interface of the fine dust sensor. ([Fig. 1](#figure-1-webinterface-fine dust sensor))

After that a senseBox must be registered on the openSenseMap with the configuration just looked up.
If the wrong sensors have been selected during registration, it is easiest to simply delete the box again and re-register it with the correct sensor configuration.

## 1.[Register](https://opensensemap.org/register) new senseBox
- Fill in user, location, site and name. Group identification could be e.g: air data.
- Under the point **"Hardware "** in the step **"my senseBox "** unfold the field **"luftdaten.info "** and select the suitable sensor configuration. ([fig. 2](#image-2-registration-opensensemap))
- Complete registration.
- **Important:** Copy senseBox ID. This is a 24 character string that looks something like this: *58a88c6b650831d8a3625e01*
- If a correct e-mail address has been entered, the senseBox ID will be sent again by e-mail. (for example: *Your senseBox ID is: 58a88c6b650831d8a3625e01*)

## 2.Configure the fine dust sensor
The fine dust sensor of Luftdaten.info can be easily configured via a website. To do this, the IP of the device must first be found in your WiFi network. The best way to do this is to read the IP in the WLAN router.

- Open the configuration page of the fine dust sensor with the browser.
- Under the point **More APIs** check **Send to openSenseMap**. In the field *senseBox-ID* enter your own senseBox-ID.
- Click on **Save** at the bottom of the page.

## Done
The fine dust sensor should now send its data to the openSenseMap.

## Figure 1: Webinterface fine dust sensor
<img src="https://github.com/sensebox/resources/raw/master/images/luftdaten/02_Sensor_Configuration.png"/>

## Figure 2: Registration openSenseMap
<img src="https://github.com/sensebox/resources/raw/master/images/luftdaten/01_openSenseMap_Configuration.png"/>



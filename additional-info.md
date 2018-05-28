# Firmware Update Wifi-Modul {#head}
<div class="description">Leider haben einige unserer WiFi Bees vom Typ WINC1500 eine veraltete Firmware (Version 19.4.4) installiert. Leider gibt es keine andere Möglichkeit dieses Firmware zu updaten als es manuell durchzuführen. Im folgenden Kapitel wirk erklärt wie man rausfindet welche Firmware man benutzt und (falls man eine veraltete Version hat) wie man diese updatet.</div>

# Test der Version
Zuerst muss rausgefunden werden, welche Version das gelieferte WiFi-Bee hat. Gehe dazu auf ´´Datei´´; ´´Beispiele´´ und unter "Beispiele für senseBox MCU" auf ´´Test_WINC1500´´ 

![Open the WiFi-Test](https://raw.githubusercontent.com/sensebox/books-v2/edu/pictures/Update-Wifi-Firmware/1-test.PNG?token=AUIA5zEFq2OiW0XRH5N7gdYaDBfz-r9qks5bFTcLwA%3D%3D)

Lade nun den Sketch auf dein Board, auf welchem das WiFi-Bee aufgesteckt ist (bitte auf XBEE1 aufstecken). Klicke dann auf den seriellen Monitor und es wird geprüft ob dein Wifi-Bee funktionsfähig ist, sowie welche Firmware darauf installiert ist.

![Test results with current version](https://raw.githubusercontent.com/sensebox/books-v2/edu/pictures/Update-Wifi-Firmware/2-result.PNG?token=AUIA55g3pMQVqX4oLEGCsUccVgd23n7wks5bFT9mwA%3D%3D)


# Firmware Update Wifi-Bee {#head}
<div class="description">Leider haben einige unserer WiFi Bees vom Typ WINC1500 eine veraltete Firmware (Version 19.4.4) installiert. Leider gibt es keine andere Möglichkeit dieses Firmware zu updaten als es manuell durchzuführen. Im folgenden Kapitel wird erklärt wie man rausfindet welche Firmware man benutzt und (falls man eine veraltete Version hat) wie man diese updatet.</div>

<div class="line">
    <br>
    <br>
</div>

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Mit der aktuellen Arduino IDE 1.8.8 ist es zur Zeit nicht möglich ein Update der Firmware für das WiFi Bee auszuführen. Für einen reibungslosen Vorgang braucht ihr die Arduino IDE V. 1.8.7. Diese könnt ihr euch aus dem <a href="https://www.arduino.cc/en/Main/OldSoftwareReleases#previous">Downloadarchiv von Arduino</a> herunterladen.
</div>

## Test der Version

Zuerst muss rausgefunden werden, welche Version das gelieferte WiFi-Bee hat. Gehe dazu auf `Datei` -> `Beispiele` und unter `"Beispiele für senseBox MCU"` auf `Test_WINC1500`.

![Öffne den WiFi-Test](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Update-Wifi-Firmware/1-test.PNG)

Lade nun den Sketch auf dein Board (durch klicken des Pfeil-Symbols). Beachte, dass auf deinem senseBox Board das WiFi-Bee aufgesteckt sein muss (bitte auf XBEE1 aufstecken). Klicke dann auf den seriellen Monitor (durch klicken des Lupen-Symbols) und es wird geprüft ob dein Wifi-Bee funktionsfähig ist und angezeigt welche Firmware darauf installiert ist.

![Testergebnisse mit nicht aktueller Firmware](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Update-Wifi-Firmware/2-result.PNG)

<div class="box_success">
    <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
   Wenn du eine Firmware <b>19.5.2, oder höher</b> hast kannst du hier abbrechen. Dein WiFi-Bee funktioniert einwandfrei.
</div>

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Wenn du eine Firmware <b>geringer als 19.5.2</b> hast musst du leider die Firmware updaten. Wie das funktioniert erfährst du im nächsten Schritt.
</div>

## WiFi-Bee Firmware Update

Um die Firmware upzudaten, folge dem Pfad von oben: `Datei` -> `Beispiele` und unter `"Beispiele für senseBox MCU"` auf `WINC1500_Updater`.

![Öffne den WINC1500_Updater](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Update-Wifi-Firmware/3-updater.PNG)

Lade nun den Sketch auf dein Board (durch klicken des Pfeil-Symbols), auf welchem das WiFi-Bee aufgesteckt ist (bitte auf XBEE1 aufstecken).

<div class="box_error">
    <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    Öffne dieses Mal nicht den seriellen Monitor (nicht auf das Lupen-Symbol klicken)!
</div>

Jetzt auf `Werkzeuge` klicken und `Wifi 101 Firmware Updater` auswählen.

![Wähle Wifi 101 Firmware Updater](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Update-Wifi-Firmware/4-firmware-updater.PNG)

Zuerst kannst du die Verbindung testen, indem du auf den angezeigten `COM Port` klickst und danach auf `Test connection`. Es sollte folgende Information zurück kommen: `"The programmer is working!"`

![Teste die Verbindung mit dem Wifi-Bee](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Update-Wifi-Firmware/5-test-connection.PNG)

Fast geschafft, jetzt nur noch auf `Update Firmware` klicken und der Upload beginnt. Danach sollte eine Erfolgsmeldung kommen `"The firmware has been updated!"`.

![Aktualisierte Firmware](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Update-Wifi-Firmware/6-update-firmware.PNG)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Nicht davon irritieren lassen, dass es auch eine Version der Firmware 19.5.4 gibt, diese aber nicht in Arduino zu finden ist wenn man die Firmware updaten möchte. Diese Firmware wird mit dem Arduino Release 1.8.6 integriert und ist ab dann zu finden.</div>

Wir entschuldigen uns für den Umweg und wünschen auch weiterhin viel Spaß mit der [senseBox](https://sensebox.de).
 
Falls dir dieser Artikel nicht weitergeholfen hat, kannst du versuchen auf [www.forum.sensebox.de](www.forum.sensebox.de) nach einer Lösung suchen, oder gegebenenfalls selbst einen Beitrag einreichen.
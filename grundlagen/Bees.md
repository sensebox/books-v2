# Bees {#head}

<div class="description">Ein Bee bezeichnet eine aufsteckbare Komponenente, mit welcher die senseBoxMCU Daten übertragen oder speichern kann. Hier hast du die Wahl zwischen der Wifi-Bee oder der SD-Bee</div>
<div class="line">
    <br>
    <br>
</div>

## WiFi-Bee
Das WiFi-Bee ist das Verbindungsstück um die senseBox mit dem Internet zu verbinden. Deine Messwerte werden per WLAN(WiFi) in das bestehende Netzwerk übertragen. Das WiFi-Bee basiert auf dem ATWINC15000 Mikrochip von Atmel welcher einen sehr geringen Energieverbrauch und eine hohe Reichweite hat.

### Konfigurierung der WiFi-Bee & Hochladen auf der openSenseMap

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher das du die Software-Bibliotheken korrekt installiert hast. Wie das geht wurde dir in <a href ="/../../erste-schritte/schritt-3-libraries-hinzufuegen.html">Schritt 3</a> erklärt!
</div>

<!--sec data-title="Deklarierung der Objekte" data-id="setupWiFiObjekte" data-collapse=true ces-->
Als erstes muss eine Instanz der Bee & der openSenseMap erstellt werden.

```arduino
Bee* b = new Bee(); // Instanz der Bee
OpenSenseMap osem("senseBox ID",b); // Instanz der openSenseMap
float temp = 24.3; // Testwert den wir später auf der openSenseMap hochladen 
``` 
 Haben wir dies getan kann die Bee im Programmcode fortlaufen mit dem Kürzel `b` angesprochen werden. In der `setup()`-Funktion stellen wir nun eine Verbindung zu unserem gewünschten WiFi-Netzwerk her. Und laden Testweise einen ersten Wert auf der openSenseMap hoch.

 

<!--endsec-->

<!--sec data-title="setup()" data-id="setupWifi" data-collapse=true ces-->

```arduino
void setup(){
    b->connectToWifi("SSID","PW"); // Verbindung zum WiFi herstellen 
    delay(1000);
    osem.uploadMeasurement(temp,"sensor ID") // Testwert wird hochgeladen 
                                             //"sensor ID" muss noch ersetzt werden
    
    };
``` 

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Achte hier darauf, dass du die Parameter "SSID" mit dem Netzwerknamens ,"PW" mit dem dazugehörigen Passwort und "senseBox ID" mit deiner Box ID  ersetzen musst!
</div>

<!--endsec-->

Nun hat deine WiFi-Bee eine Verbindung zum Internet hergestellt und sollte einen ersten Wert auf der openSenseMap hochladen. 

Glückwunsch du hast soeben deine ersten Daten auf der Karte hochgeladen, nun bist du bereit für deine erste [Umweltstation](/../../projekte/Umweltstation/README.md);



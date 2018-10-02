# Bees {#head}

<div class="description">Ein Bee bezeichnet eine aufsteckbare Komponenente, mit welcher die senseBoxMCU Daten übertragen oder speichern kann. Hier hast du die Wahl zwischen der Wifi-Bee oder der mSD-Bee.</div>
<div class="line">
    <br>
    <br>
</div>

## WiFi-Bee
Das WiFi-Bee ist das Verbindungsstück, um die senseBox mit dem Internet zu verbinden. Deine Messwerte werden per WLAN(WiFi) in das bestehende Netzwerk übertragen. Das WiFi-Bee basiert auf dem ATWINC15000 Mikrochip von Atmel, welcher einen sehr geringen Energieverbrauch und eine hohe Reichweite hat.

### Konfigurierung der WiFi-Bee & Hochladen auf der openSenseMap

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher, dass du das aktuellste Board-Support-Package installiert hast, da du die korrekten Software-Bibliotheken benötigst. Wie das geht wurde dir in <a href ="../erste-schritte/board-support-packages-installieren.md">Schritt 2</a> erklärt!
</div>

{% collapse title="Deklarierung der Objekte" %}
Als erstes muss eine Instanz der Bee und der openSenseMap erstellt werden.

```arduino
Bee* b = new Bee(); // Instanz der Bee
OpenSenseMap osem("senseBox ID",b); // Instanz der openSenseMap
float temp = 24.3; // Testwert den wir später auf der openSenseMap hochladen 
```

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Achte hier darauf, dass du den Parameter  "senseBox ID" mit deiner Box ID  ersetzen musst!
</div>

Haben wir dies getan, kann die Bee im Programmcode fortlaufend mit dem Kürzel `b`angesprochen werden. In der `setup()`-Funktion stellen wir nun eine Verbindung zu unserem gewünschten WiFi-Netzwerk her und laden testweise einen ersten Wert auf der openSenseMap hoch.

 

{% endcollapse %}

{% collapse title="setup()" %}

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
    Achte hier darauf, dass du die Parameter "SSID" mit dem Netzwerknamen deines WiFi-Netzwerks, "PW" mit dem dazugehörigen Passwort und "sensor ID" mit der Sensor-ID des entsprechenden Sensors ersetzen musst!
</div>

{% endcollapse %}

Nun hat deine WiFi-Bee eine Verbindung zum Internet hergestellt und sollte einen ersten Wert auf der openSenseMap hochladen. 

Glückwunsch du hast soeben deine ersten Daten auf der Karte hochgeladen, nun bist du bereit für deine erste [Umweltmessstation](/../../projekte/Umweltstation/README.md).



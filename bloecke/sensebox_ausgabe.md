# senseBox Ausgabe {#head}

<div class="description">Diese Seite gibt dir eine Übersicht über die verschiedenen Ausgabemöglichkeiten der senseBox
</div>
<div class="line">
    <br>
    <br>
</div>



<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/led.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Die LED</h4>
            Die Einfachste Ausgabemöglichkeit wird über den Anschluss einer LED gesteuert. Wähle im Dropdown Menü den richtigen Anschlusspin
            aus und den Status der LED
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/led.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Die Einfachste Ausgabemöglichkeit wird über den Anschluss einer LED gesteuert. Wähle im Dropdown Menü den richtigen
                Anschlusspin aus und den Status der LED</h4>
            <ul>
                <li> Temperatur </li>
                <li> Luftfeuchtigkeit </li>
            </ul>
        </div>
    </div>
</div>


<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/create_sd_card.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Speichern auf SD Karte</h4>
            Um daten auf SD-Karte zu speichern werden verschiedene Blöcke benötigt. Im ersten Schritt sollte im Setup die Datei erstellt
            und mit einem Dateinamen versehen werden.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/open_sd_card.png" alt="block" align="left">
        </div>
        <div class="col-md">
            Mit diesem Block kann in der Endlosschleifen nur die Datei geöffnet werden um Daten zu schreiben.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/save_sd_card.png" alt="block" align="left">
        </div>
        <div class="col-md">
            Nun kann mit diesem Block ein Messwert oder Text in der, zuvor geöffneten Datei, geschrieben werden. Mithilfe der Checkbox
            kann angegeben werden ob nach diesem Block eine neue Zeile in der Datei erstellt wird. Es wird empfohlen die
            Messwerte durch ein Trennzeichen von einander zu Trennen. Verwende dazu den Block xxx aus (link zu Text)
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/wifi_connect.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Wlan Verbindung herstellen</h4>
            Verwende diesen Block im Setup() um eine Wlan Verbindung herzustellen. Trage den entsprechenden Netzwerknamen (SSID) und
            das Psswort ein.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/connect_osem.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Übertragen der Messwerte an die openSenseMap</h4>
            Um Messwerte über Internet zu übertragen erstelle zunächst eine neue Messstation auf der
            <a href="https://opensensemap.org/register">openSenseMap</a> Bei der Registrierung musst du angeboten ob es ich um eine stationäre oder mobile Station (benötigt
            GPS) handelt. Desweiteren wirst du gefragt, welche Sensoren und welche Messwerte du an die Plattform senden möchstest.
            Du kannst diese Parameter nach immer wieder ändern, falls du möchtest. Wichtig ist, dass du die BoxID kopierst
            und in diesen Block einfügst. Damit werden die Messwerte deiner senseBox zugeordnet.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/send_osem.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>stationäre senseBox</h4>
            Verwende diesen Block, wenn du eine stationäre senseBox registriert hast. Für jeden Messwert benögtist du jeweils einen eigenen
            Block, denn jeder Sensor/Messwert erhält zusätzlich zur senseBox ID eine spezifische und einmalige Sensor ID.
            Kopiere die jeweilige Sensor ID aus der Übersicht deiner Registrierung und hänge eine Messwert an, der Übertragen
            werden soll. Ziehe diesen Block in die Schleife des Blocks, der eine Verbindung zur openSenseMap herstellt.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../../pictures/blocks/output/send_osem_mobile.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>mobile senseBox</h4>
            Verwende diesen Block, wenn du eine stationäre senseBox registriert hast. Für jeden Messwert benögtist du jeweils einen eigenen
            Block, denn jeder Sensor/Messwert erhält zusätzlich zur senseBox ID eine spezifische und einmalige Sensor ID.
            Kopiere die jeweilige Sensor ID aus der Übersicht deiner Registrierung und hänge eine Messwert an, der Übertragen
            werden soll. Zusätzlich zum Messwert muss jedes mal dein Standort übertagen werden. Verwende hierzu den
            <a
                href="../../bloecke/sensebox_sensoren.html">GPS Sensor</a>. Ziehe diesen Block in die Schleife des Blocks, der eine Verbindung zur openSenseMap herstellt.
        </div>
    </div>
</div>
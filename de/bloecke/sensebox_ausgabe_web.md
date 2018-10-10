# senseBox Web {#head}

<div class="description">
</div>
<div class="line">
    <br>
    <br>
</div>



<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/output/web/output-web-0.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Wlan Verbindung herstellen</h4>
            <h6>Anschluss: XBEE1</h6>
            Verwende diesen Block im Setup() um eine Wlan Verbindung herzustellen. Trage den entsprechenden Netzwerknamen (SSID) und
            das Passwort ein.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/output/web/output-web-1.png" alt="block" align="left">
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
            <img src="../pictures/blocks/output/web/output-web-2.png" alt="block" align="left">
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
            <img src="../pictures/blocks/output/web/output-web-3.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>mobile senseBox</h4>
            Verwende diesen Block, wenn du eine stationäre senseBox registriert hast. Für jeden Messwert benögtist du jeweils einen eigenen
            Block, denn jeder Sensor/Messwert erhält zusätzlich zur senseBox ID eine spezifische und einmalige Sensor ID.
            Kopiere die jeweilige Sensor ID aus der Übersicht deiner Registrierung und hänge eine Messwert an, der Übertragen
            werden soll. Zusätzlich zum Messwert muss jedes mal dein Standort übertagen werden. Verwende hierzu den
            <a href="../bloecke/sensebox_sensoren.html">GPS Sensor</a>. Ziehe diesen Block in die Schleife des Blocks, der eine Verbindung zur openSenseMap herstellt.
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/output/output-11.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Messintervall</h4>
            Damit das Übertragen der Messwerte nicht jede Sekunde erfolgt, sondern erst nach einem gewissen Zeitintervall, kannst du diesen
            Block verwenden. Ziehe dazu alle Aktionen, die erste nach einer gewissen Zeit erfolgen sollen in die Schleife und trage die Zeit in Millisekunden ein. 
        </div>
    </div>
</div>

<div class="line"></div>
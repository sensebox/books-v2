# openSenseMap {#head}

<div class="description"> Mithilfe der Blöcke kannst du eine Verbindung zur  <a href="https://opensensemap.org">openSenseMap</a> herstellen und Messwerte.
Um Messwerte auf die openSenseMap zu übertragen musst du zuerst einen Useraccount anlegen und eine neue senseBox anlegen. Wie genau das geht erfährst du hier: 
</div>


<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/opensensemap/opensensemap1.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Übertragen der Messwerte an die openSenseMap</h4>
            Um Messwerte über Internet zu übertragen erstelle zunächst eine neue Messstation auf der
            <a href="https://opensensemap.org/register">openSenseMap</a> Bei der Registrierung musst du angeboten ob es ich um eine stationäre oder mobile Station (benötigt
            GPS) handelt. Desweiteren wirst du gefragt, welche Sensoren und welche Messwerte du an die Plattform senden möchstest.
            Du kannst diese Parameter nach immer wieder ändern, falls du möchtest. Wichtig ist, dass du die BoxID kopierst
            und in diesen Block einfügst. Damit werden die Messwerte deiner senseBox zugeordnet.
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/opensensemap/opensensemap2.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>stationäre senseBox</h4>
            Verwende diesen Block, wenn du eine stationäre senseBox registriert hast. Für jeden Messwert benögtist du jeweils einen eigenen
            Block, denn jeder Sensor/Messwert erhält zusätzlich zur senseBox ID eine spezifische und einmalige Sensor ID.
            Kopiere die jeweilige Sensor ID aus der Übersicht deiner Registrierung und hänge eine Messwert an, der Übertragen
            werden soll. Ziehe diesen Block in die Schleife des Blocks, der eine Verbindung zur openSenseMap herstellt.
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/opensensemap/opensensemap3.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>mobile senseBox</h4>
            Verwende diesen Block, wenn du eine stationäre senseBox registriert hast. Für jeden Messwert benögtist du jeweils einen eigenen
            Block, denn jeder Sensor/Messwert erhält zusätzlich zur senseBox ID eine spezifische und einmalige Sensor ID.
            Kopiere die jeweilige Sensor ID aus der Übersicht deiner Registrierung und hänge eine Messwert an, der Übertragen
            werden soll. Zusätzlich zum Messwert muss jedes mal dein Standort übertagen werden. Verwende hierzu den
            <a href="../blocks/sensoren.html#gps">GPS Sensor</a>. Ziehe diesen Block in die Schleife des Blocks, der eine Verbindung zur openSenseMap herstellt.
        </div>
    </div>
</div>


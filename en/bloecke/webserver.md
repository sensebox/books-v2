# senseBox Web {#head}

<div class="description">Hier findest du alle Blöcke, um einen Webserver mithilfe der senseBox zu bauen. Für den Webserver benötigst du das WiFi-Bee.
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="http_initialisieren">
            <img src="../pictures/blocks/webserver/webserver1.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>HTTP-Server initialisieren</h4>
            Verwende diesen Block im Setup() um den HTTP-Server zu initialisieren. Über das Feld Port kannst du einstellen über welchen Port der Server im Broswer erreichbar sein soll. Standardmäßig ist hier Port 80 eingetragen.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="client_connected">
            <img src="../pictures/blocks/webserver/webserver2.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Wenn Client verbunden ist</h4>
            Dieser Block wird in der Endlosschleife verbunden. In den freien Blockabschnitt fügst du die Blöcke ein, die ausgeführt werden sollen, wenn eine Client (z.B. ein Nutzer über den Browser) auf den den Server zugreift.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="ipadresse">
            <img src="../pictures/blocks/webserver/webserver3.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>IP-Adresse</h4>
            Dieser Block gibt dir die IP-Adresse deiner senseBox im Netzwerk zurück.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="methode">
            <img src="../pictures/blocks/webserver/webserver4.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Methode</h4>
            Dieser Block gibt dir die Methode zurück.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="uri">
            <img src="../pictures/blocks/webserver/webserver5.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>URI</h4>
            Dieser Block gibt dir die URI zurück.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="user-agent">
            <img src="../pictures/blocks/webserver/webserver6.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>User-Agent</h4>
            Dieser Block gibt dir die User-Agent des Clienten, der auf den HTTP-Server zugreift zurück.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="http-response">
            <img src="../pictures/blocks/webserver/webserver7.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Erfolgreiche HTTP-Antwort</h4>
            Mit diesem Block kannst du einen HTTP Antwort an den Clienten senden, wenn dieser auf den Server zugreift. Die Antwort ist der HTML Code, der aus verschiedenen Blöcken zusammengebaut werden kann. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="404">
            <img src="../pictures/blocks/webserver/webserver8.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>404-Fehler</h4>
            Dieser Block kannst als Mögliche HTTP Antwort gesendet werden, wenn eine fehlerhafte Seite aufgerufen wird. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="html_head_body">
            <img src="../pictures/blocks/webserver/webserver9.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>HTML</h4>
            Dies ist der Grundbaustein für den HTML Code. An den Body hängst du deinen HTML Code, der den Aufbau der Website beschreibt.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="tag">
            <img src="../pictures/blocks/webserver/webserver10.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Tag</h4>
            Mit den Tags kannst du deine HTML-Seite direkt über Blockly aufbauen. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="html_sd">
            <img src="../pictures/blocks/webserver/webserver11.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Lese HTML von SD Karte</h4>
            Diesen Block kannst du an den Grundbaustein für den HTML Code anhängen und eine .html Datei von SD-Karte laden. 
        </div>
    </div>
</div>

<div class="line"></div>
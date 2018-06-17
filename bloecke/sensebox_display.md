# senseBox Display {#head}

<div class="description"> Diese Seite gibt dir eine Übersicht über die verschiedenen Möglichkeiten des Displays der senseBox</div>
<div class="line">
    <br>
    <br>
</div>



<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-0.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Das OLED-Display</h4>
            <h6>Anschluss: I2C/Wire</h6>
            Das
            <a href="../komponenten/zubehoer/led-display.html">OLED-DISPLAY</a> hat eine Auflösung von 128x64 Pixeln und wird über den I2C Anschluss angeschlossen. Um das Display
            zu verwenden muss es im Setup() initialisiert werden.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-1.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Anzeige auf dem Display</h4>
            Verwende diesen Block, wenn du eine stationäre senseBox registriert hast. Für jeden Messwert benögtist du jeweils einen eigenen
            Block, denn jeder Sensor/Messwert erhält zusätzlich zur senseBox ID eine spezifische und einmalige Sensor ID.
            Kopiere die jeweilige Sensor ID aus der Übersicht deiner Registrierung und hänge eine Messwert an, der Übertragen
            werden soll. Ziehe diesen Block in die Schleife des Blocks, der eine Verbindung zur openSenseMap herstellt.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-2.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Display löschen</h4>
            Verwende diesen Block um den Inhalt des Displays zu löschen. Es empfiehlt sich am Anfang oder Ende der Endlosschleife das
            Display zu löschen um ein korrektes Anzeigen von z.B. Messwerten zu gewährleisten.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-4.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Anzeigen von Text</h4>
            Mit diesem Block kannst du dir Text und Messwerte auf dem Display anzeigen lassen. Die Schriftfarbe ist Standardmäßig auf
            Weiß eingestellt, da das Display einen schwarzen Hintergrund hat. Du kannst neben der Schriftfarbe auch die Schriftgröße
            ändern. In Schriftgröße 1 ist ein Buchstabe oder eine Zahl 8 Pixel groß und du kannst dir insgesamt in 8 Zeilen
            auf dem Display verschiedene Texte anzeigen lassen. In Schriftgröße 2 sind die Buchstaben oder Zahlen 16 Pixel
            hoch. Mit den X- und Y-Werten gibst du an wo auf dem Display etwas angezigt wird.

            <button type="button" class="btn-modal" data-toggle="modal" data-target="#Modal-Display-Example">
                Display Beispiele
            </button>

            <!-- Modal begin -->
            <div class="modal fade" id="Modal-Display-Example" tabindex="-1" role="dialog" aria-labelledby="ModalLabelDisplayExample"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLabelDisplayExample">Display Beispiele</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class "col-md">
                                    <h6 align="center">Block</h6>
                                    <img src="../pictures/blocks/display/display-example-1.png" alt="block" align="left">
                                </div>
                                <div class="col-md">
                                    <h6 align="center">Display Anzeige</h6>
                                    <img src="../pictures/blocks/display/display-example-orig.jpg" alt="block" align="left">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-modal" data-dismiss="modal">Schließen</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-3.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Anzeigen von Diagrammen</h4>
            Mit diesem Block können automatisch Diagramme auf dem Display erstellt werden.
        </div>

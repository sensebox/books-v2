# senseBox SD Karte {#head}

<div class="description">Um Daten auf SD Karte zu Speichern benötigst du neben einer micro SD-Karte das mSD-Bee. 
</div>
<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/msd_new_bottom.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>mSD Bee</h4>
            <!-- Button trigger modal -->
            <button type="button" class="btn-modal" data-toggle="modal" data-target="#bee2Modal">
                Anschluss: XBee2
            </button>

            <!-- Modal -->
            <div class="modal fade" id="bee2Modal" tabindex="-1" role="dialog" aria-labelledby="bee2ModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="bee2ModalLabel">Anschluss: Xbee2</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <img src="../pictures/mcu_bee2.png" alt="block" align="left">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-modal" data-dismiss="modal">Schließen</button>
                        </div>
                    </div>
                </div>
            </div>
            <br>
           Stecke das SD Bee auf den Xbee Steckplatz 2 und lege eine SD Karte ein. 
        </div>
    </div>
</div>
<br><br>
<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/output/sd/output_sd-0.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Erstellen der Datei</h4>
            Um daten auf SD-Karte zu speichern werden verschiedene Blöcke benötigt. Im ersten Schritt wird im Setup() eine neue Datei erstellt. Du kannst mit diesem Block auch mehrere verschiedene Dateien erstellen. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/output/sd/output_sd-1.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Öffnen der Datei</h4>
           In Endlosschleife wird die jeweilige Datei geöffnet. Wenn die Datei geöffnet ist kannst du in die Datei schreiben. 
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/output/sd/output_sd-2.png" alt="block" align="left">
        </div>
        <div class="col-md">
        <h4>Speichern in Datei</h4>
            Mit diesem Block schreibst du Messwerte oder Texte in die geöffnete Datei. 
        </div>
    </div>
</div>


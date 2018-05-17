# Schritt 2: Board-Support-Package installieren {#head}

<div class="description">Damit die Arduino IDE dein <a href="../komponenten/sensebox-mcu.html">senseBox MCU</a> unterstuetzt und Du Programme auf dieses uebertragen kannst musst Du vor Beginn noch zwei Board-Support-Packages installieren. Diese beinhalten die noetigen Treiber und die noetigste Software, um mit deinem Prozessor zu kommunizieren.</div>
<div class="line">
    <br>
    <br>
</div>

## Board-Support-Package einbinden 

Fuege die folgende URL in deiner Arduino IDE unter *Datei -> Voreinstellungen* in das Feld fuer *Zusaetzliche Bordverwalter-URLs* ein:
```
https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json
```
Oeffne dann den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und installiere dort die zwei Board-Support-Packages mit den Namen **Arduino SAMD Boards by Arduino** und **senseBox SAMD Boards by senseBox**.
<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Gib "SAMD" oben in die Suche ein um die Packages schneller zu finden
</div>












# Schritt 3: Board-Support-Package installieren {#head}

<div class="description">Damit die Arduino IDE deine <a href="../komponenten/sensebox-mcu.html">senseBox MCU</a> unterstützt und Du Programme auf diese übertragen kannst, musst Du vor Beginn noch zwei Board-Support-Packages installieren. Diese beinhalten die nötigen Treiber und die notwendige Software, um mit deinem Prozessor zu kommunizieren.</div>
<div class="line">
    <br>
    <br>
</div>

## Board-Support-Package einbinden 

Füge die folgende URL in deiner Arduino IDE unter *Datei -> Voreinstellungen* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json
```

![Öffne die Voreinstellungen und füge die URL ein](../pictures/ardu/Ardu1.png)

Öffne dann den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und installiere dort die zwei Board-Support-Packages mit den Namen **Arduino SAMD Boards by Arduino** und **senseBox SAMD Boards by senseBox**.

![Öffne den Bordverwalter und installiere die beiden Packages](../pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Gib "SAMD" oben in die Suchleiste ein um die Packages schneller zu finden
</div>












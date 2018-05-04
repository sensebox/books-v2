# Schritt 2: Board-Support-Package installieren {#head}

## Board-Support-Package einbinden {#board-package}

> Was fehlt jetzt noch?
    Das Board-Support-Package!

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Als nächstes musst du noch zwei Board-Support-Packages in die Arduino IDE hinzufügen. Dafür gehs du auf: </div>      
<div class="box_warning">
     <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Eine Library ist wie der Name schon sagt eine Sammlung von etwas - eine Sammlung von Methoden um genauer zu sein. Methoden sind in der Programmierung kleinere Abschnitte von Code die auf ein Objekt angewendet werden können.
</div> 
<div class="box_success">
    <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
    Bei der senseBox zum Beispiel kann eine Methode aufgerufen werden um die LEDs auf dem MCU ein- und auszuschalten. Es gibt eine Menge solcher Standardmethoden, die von einer Vielzahl an Programmmen benutzt werden. Um diese Methoden nicht alle einzeln in den Programmcode übertragen zu müssen, können sie in Libraries abgelegt werden. 
</div>
<div class="box_error">
     <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    Eine Library ist also eine Datei, in der viele Methoden gespeichert werden. Man kann Libraries in seinen Code einbinden. Dafür reicht es wenn sie im Arduino-Ordner für Libraries gespeichert sind und man sie dann mit einer einzigen Zeile zu Beginn des Programmcodes einbindet. Das sieht in Arduino für die Library mit dem Namen "senseBoxIO" wie folgt aus: 
</div>

```c
#include <senseBoxIO>;
```

Ist die Library eingebunden, können alle in ihr enthaltenen Methoden im Code benutzt werden. 

Für die senseBox solltet Ihr zu Beginn unbedingt die senseBox-Library einbinden, um alle grundlegenden Methoden gegeben zu haben.







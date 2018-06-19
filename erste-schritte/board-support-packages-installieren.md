# Schritt 2: Board-Support-Package installieren {#head}

<div class="description">Damit die Arduino IDE deine <a href="../komponenten/sensebox-mcu.html">senseBox MCU</a> unterstützt und Du Programme auf diese übertragen kannst, musst Du vor Beginn noch zwei Board-Support-Packages installieren. Diese beinhalten die nötigen Treiber und die notwendige Software, um mit deinem Prozessor zu kommunizieren. Das Board-Support-Package der senseBox enthält außerdem bereits unsere senseBox-Libraries. Damit stehen euch alle grundlegenden Methoden zur Programmierung der beiligenden Sensoren zur Verfügung.</div>
<div class="line">
    <br>
    <br>
</div>

## Libraries

<div class="box_error">
    <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    <b>Achtung, hier hat sich etwas geändert!</b> <br>
    Um euch die ersten Schritte mit der senseBox zu erleichtern haben wir die senseBox Libraries mit in das Board-Support-Package integriert. Somit fällt der ehemals 2. Schritt, das Hinzufügen der Libraries, weg.<br>
    Solltet ihr die alte Anleitung verwendet haben, schaut bitte <a href="">hier</a> oder in unserem FAQ nach, was ihr jetzt tun solltet. <br>
    Wenn ihr zum ersten mal die ersten Schritte durchführt, könnt ihr einfach weiter der Anleitung folgen :)
</div> 

Für die Programmierung der senseBox sollten zu Beginn unbedingt die senseBox-Libraries eingebunden werden. Diese Libraries haben wir für euch in das Board-Support-Package der senseBox integriert, um euch die Installation möglichst einfach zu machen. 

{% collapse title="'Library' - Was ist das eigentlich und wofür brauche ich das?" %}

Eine Library ist wie der Name schon sagt eine Sammlung von etwas - eine Sammlung von Methoden um genauer zu sein. Methoden sind in der Programmierung kleinere Abschnitte von Code, die auf ein Objekt angewendet werden können. 
Bei der senseBox zum Beispiel kann eine Methode aufgerufen werden, um die LEDs auf dem MCU ein- und auszuschalten. Es gibt eine Menge solcher Standardmethoden, die von einer Vielzahl an Programmmen benutzt werden. Um diese Methoden nicht alle einzeln in den Programmcode übertragen zu müssen, können sie in Libraries abgelegt werden. 
Eine Library ist also eine Datei, in der viele Methoden gespeichert werden. Man kann Libraries in seinen Code einbinden. Dafür reicht es wenn sie im Arduino-Ordner für Libraries gespeichert sind und man sie dann mit einer einzigen Zeile zu Beginn des Programmcodes einbindet. Das sieht in Arduino für die Library mit dem Namen "senseBoxIO" wie folgt aus: 

```arduino
#include <senseBoxMCU.h>;
```

Ist die Library eingebunden, können alle in ihr enthaltenen Methoden im Code benutzt werden. 

{% endcollapse %}


## Board-Support-Package einbinden 

Füge die folgende URL in deiner Arduino IDE unter *Datei -> Voreinstellungen* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Öffne die Voreinstellungen und füge die URL ein](../pictures/ardu/Ardu1.png)

Öffne dann den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und installiere dort die zwei Board-Support-Packages mit den Namen **Arduino SAMD Boards by Arduino** und **senseBox SAMD Boards by senseBox**.

![Öffne den Bordverwalter und installiere die beiden Packages](../pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Gib "SAMD" oben in die Suchleiste ein um die Packages schneller zu finden
</div>

Da wir das **senseBox SAMD Boards**-Package für euch regelmäßig aktualisieren, solltet ihr immer mal wieder in den Boardverwalter gehen und nachschauen, ob das **senseBox SAMD Boards**-Package noch aktuell ist. Öffnet dafür wie oben beschrieben den Boardverwalter und sucht nach **senseBox SAMD Boards**. Wenn ihr auf den Eintrag in der Liste klickt, erscheint dort, im Falle einer neuen Version, ein Update-Button. 

![Klicke auf 'Update', um das Board-Support-Package zu aktualisieren](../pictures/ardu/update-b-s-p.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wichtig ist, auf den Eintrag zu klicken. Ansonsten wird der Update-Button nicht angezeigt, auch wenn es bereits eine neue Version gibt.
</div>












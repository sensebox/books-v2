# Schritt 2: Board-Support-Package installieren {#head}

<div class="description">Damit die Arduino IDE deine <a href="../komponenten/sensebox-mcu.md">senseBox MCU</a> unterstützt und du Programme auf diese übertragen kannst, musst du vor Beginn noch zwei Board-Support-Packages installieren. Diese beinhalten die nötigen Treiber und die notwendige Software, um mit deinem Prozessor zu kommunizieren. Das Board-Support-Package der senseBox enthält außerdem bereits unsere senseBox-Libraries. Damit stehen dir alle grundlegenden Methoden zur Programmierung der beiligenden Sensoren zur Verfügung.</div>
<div class="line">
    <br>
    <br>
</div>

## Libraries

Für die Programmierung der senseBox sollten zu Beginn unbedingt die senseBox-Libraries eingebunden werden. Diese Libraries haben wir für dich in das Board-Support-Package der senseBox integriert, um dir die Installation möglichst einfach zu gestalten. 

{% collapse title="'Library' - Was ist das eigentlich und wofür brauche ich das?" %}

Eine Library ist, wie der Name schon sagt, eine Sammlung von etwas - eine Sammlung von Methoden um genauer zu sein. Methoden sind in der Programmierung kleinere Abschnitte von Code, die auf ein Objekt angewendet werden können.

Bei der senseBox zum Beispiel kann eine Methode aufgerufen werden, um die LEDs auf dem MCU ein- und auszuschalten. Es gibt eine Menge solcher Standardmethoden, die von einer Vielzahl an Programmmen benutzt werden. Um diese Methoden nicht alle einzeln in den Programmcode übertragen zu müssen, können sie in Libraries abgelegt werden.

Man kann Libraries in seinen Code einbinden. Dafür reicht es wenn sie im Arduino-Ordner für Libraries gespeichert sind und man sie dann mit einer einzigen Zeile zu Beginn des Programmcodes einbindet. Das sieht in Arduino für die Library mit dem Namen "senseBoxIO" wie folgt aus: 

```arduino
#include <senseBoxMCU.h>;
```

Ist die Library eingebunden, können alle in ihr enthaltenen Methoden im Code benutzt werden. 

{% endcollapse %}

## Board-Support-Package einbinden 
Wähle dein Betriebssystem, um die passende Anleitung zu sehen:

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Anleitung für Windows
Füge die folgende URL in deiner Arduino IDE unter *Datei -> Voreinstellungen* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Öffne die Voreinstellungen und füge die URL ein](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu1.png)

Öffne dann den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und installiere dort die zwei Board-Support-Packages mit den Namen **Arduino SAMD Boards by Arduino** und **senseBox SAMD Boards by senseBox**.

![Öffne den Bordverwalter und installiere die beiden Packages](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Gib "SAMD" oben in die Suchleiste ein um die Packages schneller zu finden
</div>

Da wir das **senseBox SAMD Boards**-Package für dich regelmäßig aktualisieren, solltest du immer mal wieder in den Boardverwalter gehen und nachschauen, ob das **senseBox SAMD Boards**-Package noch aktuell ist. Öffne dafür, wie oben beschrieben, den Boardverwalter und suche nach **senseBox SAMD Boards**. Wenn du auf den Eintrag in der Liste klickt, erscheint dort, im Falle einer neuen Version, ein Update-Button. Klicke diesen, um die neuste Version zu installieren. 

![Klicke auf 'Update', um das Board-Support-Package zu aktualisieren](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/update-b-s-p.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wichtig ist, zuerst auf den Eintrag zu klicken. Ansonsten wird der Update-Button nicht angezeigt, auch wenn es bereits eine neue Version gibt.
</div> 

{% content "second" %}
### Anleitung für Mac
Füge die folgende URL in deiner Arduino IDE unter *`Arduino -> Einstellungen...`* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Öffne die Voreinstellungen und füge die URL ein](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu_mac.png)

Öffne dann den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und installiere dort die zwei Board-Support-Packages mit den Namen **Arduino SAMD Boards by Arduino** und **senseBox SAMD Boards by senseBox**.

![Öffne den Bordverwalter ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu3_mac.png)

![Installiere die beiden markierten Packages](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu2_mac.png)


<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Gib "SAMD" oben in die Suchleiste ein um die Packages schneller zu finden
</div>

Da wir das **senseBox SAMD Boards**-Package für dich regelmäßig aktualisieren, solltest du immer mal wieder in den Boardverwalter gehen und nachschauen, ob das **senseBox SAMD Boards**-Package noch aktuell ist. Öffne dafür, wie oben beschrieben, den Boardverwalter und suche nach **senseBox SAMD Boards**. Wenn du auf den Eintrag in der Liste klickt, erscheint dort, im Falle einer neuen Version, ein Update-Button. Klicke diesen, um die neuste Version zu installieren. 

![Klicke auf 'Update', um das Board-Support-Package zu aktualisieren](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/ardu_update_mac.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wichtig ist, zuerst auf den Eintrag zu klicken. Ansonsten wird der Update-Button nicht angezeigt, auch wenn es bereits eine neue Version gibt.
</div>

{% content "third" %}
### Anleitung für Linux
Füge die folgende URL in deiner Arduino IDE unter *Datei -> Voreinstellungen* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```

![Öffne die Voreinstellungen und füge die URL ein](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu1.png)

Öffne dann den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und installiere dort die zwei Board-Support-Packages mit den Namen **Arduino SAMD Boards by Arduino** und **senseBox SAMD Boards by senseBox**.

![Öffne den Bordverwalter und installiere die beiden Packages](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/Ardu2.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Gib "SAMD" oben in die Suchleiste ein um die Packages schneller zu finden
</div>

Da wir das **senseBox SAMD Boards**-Package für dich regelmäßig aktualisieren, solltest du immer mal wieder in den Boardverwalter gehen und nachschauen, ob das **senseBox SAMD Boards**-Package noch aktuell ist. Öffne dafür, wie oben beschrieben, den Boardverwalter und suche nach **senseBox SAMD Boards**. Wenn du auf den Eintrag in der Liste klickt, erscheint dort, im Falle einer neuen Version, ein Update-Button. Klicke diesen, um die neuste Version zu installieren.  

![Klicke auf 'Update', um das Board-Support-Package zu aktualisieren](https://github.com/sensebox/resources/raw/master/gitbook_pictures/ardu/update-b-s-p.png)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wichtig ist, zuerst auf den Eintrag zu klicken. Ansonsten wird der Update-Button nicht angezeigt, auch wenn es bereits eine neue Version gibt.
</div>

{% endtabs %}












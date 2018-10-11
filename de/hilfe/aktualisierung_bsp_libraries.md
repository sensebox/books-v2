# Aktualisierung von Board-Support-Package und Libraries {#head}

<div class="description">
    Um die Installation und Updates der senseBox-Libraries benutzerfreundlicher zu gestalten, haben wir die Installationsschritte verändert. <br>
    Auf dieser Seite zeigen wir euch, welche Schritte ihr befolgen müsst, um euer Board-Support-Package und eure senseBox-Libraries zu aktualisieren. Diese Anleitung betrifft euch nur, wenn ihr die ersten Schritte dieses Buches <b>vor dem 23. Juni 2018</b> durchgeführt habt.
</div>
<div class="line">
    <br>
    <br>
</div>

## Was ist neu?
Wir haben ein neues Board-Support-Package entwickelt, welches das alte Board-Support-Package mit den senseBox-Libraries vereint. Dadurch wird die fehleranfällige, manuelle Installation der senseBox-Libraries umgangen. Gleichzeitig kann die integrierte Update-Funktion für Board-Support-Packages aus der Ardunio IDE benutzt werden, um die Libraries auf den neusten Stand zu bringen. So können Updates in Zukunft mit deutlich geringerem Aufwand eingespielt werden. 

## Anleitung zur Aktualisierung
Die Aktualisierung besteht aus 2 Schritten: 
1. Dem Löschen der senseBox-Libraries aus dem Sketchbook-Ordner, um Doppelungen der Libraries und die Benutzung alter Versionen zu vermeiden.
2. Der Installation des neuen Board-Support-Packages, um die Libraries über dieses in Arduino einzubinden.

Wähle dein Betriebssystem, um die passende Anleitung zu sehen:

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Schritt 1: Löschen der senseBox-Libraries aus dem Sketchbook-Folder
1. Öffne nun die Arduino IDE. Gehe auf `Datei` -> `Voreinstellungen`:

 ![Klicke `Datei` und dann `Voreinstellungen`](../../../pictures/libraries/voreinstellungen_2.PNG?raw=true)

    und schaue im Feld unter `Sketchbook-Speicherort` nach an welchem Ort der Sketchbook-Ordner gespeichert ist. 

 ![Schaue im rot-markierten Feld nach, wo dein Sketchbook-Speicherort ist](../../../pictures/libraries/voreinstellungen.PNG)

    Merke dir den Pfad zu diesem Ordner, also den Ort wo dieser gespeichert ist.

  

2. Nun navigierst du in deinem Datei-Explorer zum Sketchbook-Speicherort (siehe 1.). Beachte, dass der Zielordner im Datei-Explorer am Sketchbook-Speicherort den Namen `Arduino` trägt. Öffne diesen Ordner. Innerhalb des `Arduino`-Ordners befindet sich ein Ordner mit dem Namen `libraries`. Innerhalb dieses Ordners befinden sich die senseBox-Libraries. Lösche den `libraries`-Ornder, um sie zu entfernen.
 <div class="box_warning">
       <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        Wenn du ein erfahrener Arduino-Nutzer bist und in der Vergangenheit weitere externe Libraries eingebunden hast, die nicht zu den senseBox-Libraries gehören, gehe in den `libraries`-Ordner und lösche alle Libraries, die nicht extern von dir eingebunden wurden, anstatt den gesamten Ordner zu löschen.
 </div>  

3. Schließe jetzt das Programm Arduino vollständig und starte es erneut, um das Löschen der alten senseBox-Libraries abzuschließen. 

### Schritt 2: Neues Board-Support-Package einbinden

Um das neue Board-Support-Package einzubinden, geht ihr ähnlich vor, wie in den ersten Schritten, mit ein paar kleinen Änderungen.

1. Füge die folgende URL in deiner Arduino IDE unter *Datei -> Voreinstellungen* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```
    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
       An der Stelle steht im Normalfall vorher schon folgende URL: <i>https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json</i> diese sieht der obigen sehr ähnlich, ist aber nicht die gleiche URL. Sie muss aber unbedingt durch die oben stehende URL ausgetauscht werden.
    </div>

 ![Öffne die Voreinstellungen und füge die URL ein](../../../pictures/ardu/Ardu1.png)

2. Öffne nun den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und suche dort nach dem **senseBox SAMD Boards**-Package.

![Suche nach dem rot markierten Package](../../../pictures/ardu/Ardu3.png)

 Wenn ihr auf den Eintrag in der Liste klickt, erscheint dort ein Update-Button. 

 <div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wichtig ist, zuerst auf den Eintrag zu klicken. Ansonsten wird der Update-Button nicht angezeigt, auch wenn es bereits eine neue Version gibt.
 </div>

3. Klicke auf diesen Button und gehe danach sicher, dass die installierte Version höher als 1.1.0 ist.

![Klicke auf 'Update', um das Board-Support-Package zu aktualisieren](../../../pictures/ardu/update-b-s-p.png)

 Da wir das **senseBox SAMD Boards**-Package für euch regelmäßig aktualisieren, solltet ihr immer mal wieder in den Boardverwalter gehen und nachschauen, ob das **senseBox SAMD Boards**-Package noch aktuell ist. Öffnet dafür wie oben beschrieben den Boardverwalter, sucht nach **senseBox SAMD Boards** und klickt dort ggf. auf `Update`.

{% content "second" %}
### Schritt 1: Löschen der senseBox-Libraries aus dem Sketchbook-Folder
1. Öffne nun die Arduino IDE. Gehe auf `Arduino` -> `Einstellungen...`:

 ![Klicke `Arduino` -> `Einstellungen...`](../../../pictures/libraries/voreinstellungen_2_mac.png)

    und schaue im Feld unter `Sketchbook-Speicherort` nach an welchem Ort der Sketchbook-Ordner gespeichert ist. 

 ![Schaue im rot-markierten Feld nach, wo dein Sketchbook-Speicherort ist](../../../pictures/libraries/voreinstellungen_mac.png)

    Merke dir den Pfad zu diesem Ordner, also den Ort wo dieser gespeichert ist.

  

2. Nun navigierst du in deinem Datei-Explorer zum Sketchbook-Speicherort (siehe 1.). Beachte, dass der Zielordner im Datei-Explorer am Sketchbook-Speicherort den Namen `Arduino` trägt. Öffne diesen Ordner. Innerhalb des `Arduino`-Ordners befindet sich ein Ordner mit dem Namen `libraries`. Innerhalb dieses Ordners befinden sich die senseBox-Libraries. Lösche den `libraries`-Ornder, um sie zu entfernen.
 <div class="box_warning">
       <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        Wenn du ein erfahrener Arduino-Nutzer bist und in der Vergangenheit weitere externe Libraries eingebunden hast, die nicht zu den senseBox-Libraries gehören, gehe in den `libraries`-Ordner und lösche alle Libraries, die nicht extern von dir eingebunden wurden, anstatt den gesamten Ordner zu löschen.
 </div>  

3. Schließe jetzt das Programm Arduino vollständig und starte es erneut, um das Löschen der alten senseBox-Libraries abzuschließen.

### Schritt 2: Neues Board-Support-Package einbinden

Um das neue Board-Support-Package einzubinden, geht ihr ähnlich vor, wie in den ersten Schritten, mit ein paar kleinen Änderungen.

1. Füge die folgende URL in deiner Arduino IDE unter *`Arduino` -> `Einstellungen...`* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```
    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
       An der Stelle steht im Normalfall vorher schon folgende URL: <i>https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json</i> diese sieht der obigen sehr ähnlich, ist aber nicht die gleiche URL. Sie muss aber unbedingt durch die oben stehende URL ausgetauscht werden.
    </div>

 ![Öffne die Voreinstellungen und füge dort die URL ein](../../../pictures/libraries/voreinstellungen_mac_boardverwalter.png)

2. Öffne nun den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und suche dort nach dem **senseBox SAMD Boards**-Package.

![Suche nach dem rot markierten Package](../../../pictures/ardu/Ardu3.png)

 Wenn ihr auf den Eintrag in der Liste klickt, erscheint dort ein Update-Button. 

 <div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wichtig ist, zuerst auf den Eintrag zu klicken. Ansonsten wird der Update-Button nicht angezeigt, auch wenn es bereits eine neue Version gibt.
 </div>

3. Klicke auf diesen Button und gehe danach sicher, dass die installierte Version höher als 1.1.0 ist.

![Klicke auf 'Update', um das Board-Support-Package zu aktualisieren](../../../pictures/ardu/update-b-s-p.png)

 Da wir das **senseBox SAMD Boards**-Package für euch regelmäßig aktualisieren, solltet ihr immer mal wieder in den Boardverwalter gehen und nachschauen, ob das **senseBox SAMD Boards**-Package noch aktuell ist. Öffnet dafür wie oben beschrieben den Boardverwalter, sucht nach **senseBox SAMD Boards** und klickt dort ggf. auf `Update`.

{% content "third" %}
### Schritt 1: Löschen der senseBox-Libraries aus dem Sketchbook-Folder
1. Öffne nun die Arduino IDE. Gehe auf `Datei` -> `Voreinstellungen`:

 ![Klicke `Datei` -> `Voreinstellungen`](../../../pictures/libraries/voreinstellungen_2_linux.png)

    und schaue im Feld unter `Sketchbook-Speicherort` nach an welchem Ort der Sketchbook-Ordner gespeichert ist. 

 ![Schaue im rot-markierten Feld nach, wo dein Sketchbook-Speicherort ist](../../../pictures/libraries/voreinstellungen_linux.png)

    Merke dir den Pfad zu diesem Ordner, also den Ort wo dieser gespeichert ist.

  

2. Nun navigierst du in deinem Datei-Explorer zum Sketchbook-Speicherort (siehe 1.). Beachte, dass der Zielordner im Datei-Explorer am Sketchbook-Speicherort den Namen `Arduino` trägt. Öffne diesen Ordner. Innerhalb des `Arduino`-Ordners befindet sich ein Ordner mit dem Namen `libraries`. Innerhalb dieses Ordners befinden sich die senseBox-Libraries. Lösche den `libraries`-Ornder, um sie zu entfernen.
 <div class="box_warning">
       <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        Wenn du ein erfahrener Arduino-Nutzer bist und in der Vergangenheit weitere externe Libraries eingebunden hast, die nicht zu den senseBox-Libraries gehören, gehe in den `libraries`-Ordner und lösche alle Libraries, die nicht extern von dir eingebunden wurden, anstatt den gesamten Ordner zu löschen.
 </div>  

3. Schließe jetzt das Programm Arduino vollständig und starte es erneut, um das Löschen der alten senseBox-Libraries abzuschließen.


### Schritt 2: Neues Board-Support-Package einbinden

Um das neue Board-Support-Package einzubinden, geht ihr ähnlich vor, wie in den ersten Schritten, mit ein paar kleinen Änderungen.

1. Füge die folgende URL in deiner Arduino IDE unter *Datei -> Voreinstellungen* in das Feld für *Zusätzliche Bordverwalter-URLs* ein:
```
https://github.com/sensebox/senseBoxMCU-core/raw/master/package_sensebox_index.json
```
    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
       An der Stelle steht im Normalfall vorher schon folgende URL: <i>https://github.com/watterott/senseBox-MCU/raw/master/package_sensebox_index.json</i> diese sieht der obigen sehr ähnlich, ist aber nicht die gleiche URL. Sie muss aber unbedingt durch die oben stehende URL ausgetauscht werden.
    </div>

 ![Öffne die Voreinstellungen und füge die URL ein](../../../pictures/ardu/Ardu1.png)

2. Öffne nun den *Boardverwalter* unter *Werkzeuge -> Board:"..." -> Boardverwalter* und suche dort nach dem **senseBox SAMD Boards**-Package.

![Suche nach dem rot markierten Package](../../../pictures/ardu/Ardu3.png)

 Wenn ihr auf den Eintrag in der Liste klickt, erscheint dort ein Update-Button. 

 <div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Wichtig ist, zuerst auf den Eintrag zu klicken. Ansonsten wird der Update-Button nicht angezeigt, auch wenn es bereits eine neue Version gibt.
 </div>

3. Klicke auf diesen Button und gehe danach sicher, dass die installierte Version höher als 1.1.0 ist.

![Klicke auf 'Update', um das Board-Support-Package zu aktualisieren](../../../pictures/ardu/update-b-s-p.png)

 Da wir das **senseBox SAMD Boards**-Package für euch regelmäßig aktualisieren, solltet ihr immer mal wieder in den Boardverwalter gehen und nachschauen, ob das **senseBox SAMD Boards**-Package noch aktuell ist. Öffnet dafür wie oben beschrieben den Boardverwalter, sucht nach **senseBox SAMD Boards** und klickt dort ggf. auf `Update`.
{% endtabs %}
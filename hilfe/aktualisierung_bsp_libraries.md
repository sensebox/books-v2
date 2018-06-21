# Aktualisierung von Board-Support-Package und Libraries {#head}

<div class="description">
    Um die Installation und Updates der senseBox-Libraries benutzerfreundlicher zu gestalten, haben wir die Installationsschritte verändert. <br>
    Auf dieser Seite zeigen wir euch daher, welche Schritte ihr befolgen müsst, um euer Board-Support-Package und eure senseBox-Libraries zu aktualisieren, wenn ihr diese vor dem 23. Juni 2018 installiert habt.
</div>
<div class="line">
    <br>
    <br>
</div>

## Was ist neu?
Wir haben ein neues Board-Support-Package entwickelt, welches das alte Board-Support-Package und die senseBox-Libraries vereint. Dadurch wird die fehleranfällige manuelle Installation der senseBox-Libraries umgangen. Gleichzeitig kann die integrierte Update-Funktion für Board-Support-Packages in der Ardunio IDE benutzt werden, um die Libraries auf den neusten Stand zu bringen. So können Updates in Zukunft mit deutlich geringerem Aufwand eingespielt werden. 

## Anleitung zur Aktualisierung
Die Aktualisierung besteht aus 2 Schritten: 
1. Dem Löschen der senseBox-Libraries aus dem Sketchbook-Folder, um Doppelungen der Libraries und die Benutzung alter Versionen zu vermeiden.
2. Der Installation des neuen Board-Support-Packages, um die Libraries über dieses zu in Arduino einzubinden.

### Schritt 1: Löschen der senseBox-Libraries aus dem Sketchbook-Folder

1. Öffne nun die Arduino IDE. Gehe auf `Datei` -> `Voreinstellungen`:

 ![Klicke `Datei` und dann `Voreinstellungen`](../pictures/libraries/voreinstellungen_2.PNG?raw=true)

    und schaue im Feld unter `Sketchbook-Speicherort` nach an welchem Ort der Sketchbook Ordner gespeichert ist. 

 ![Schaue im rot-markierten Feld nach, wo dein Sketchbook-Speicherort ist](../pictures/libraries/voreinstellungen.PNG)

    Merke dir den Pfad zu diesem Ordner, also den Ort wo dieser gespeichert ist.

  

2. Nun navigierst du in deinem Datei-Explorer zum Sketchbook-Speicherort (siehe 1.). Beachte, dass der Zielordner im Datei-Explorer am Sketchbook-Speicherort den Namen `Arduino` trägt. Öffne diesen Ordner. Innerhalb des `Arduino`-Ordners befindet sich ein Ordner mit dem Namen `libraries`. Innerhalb dieses Ordners befinden sich die senseBox-Libraries, um sie zu entfernen, lösche den `libraries`-Ornder.
 <div class="box_warning">
       <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        Wenn du ein erfahrener Arduino-Nutzer bist und in der Vergangenheit weitere externe Libraries eingebunden hast, die nicht zu den senseBox-Libraries gehören, gehe in den `libraries`-Ordner und lösche alle Libraries bis auf deine externen Libraries, anstatt den gesamten Ordner zu löschen.
 </div>  

3. Schließe jetzt das Programm Arduino vollständig und starte es erneut, um das Löschen der alten senseBox-Libraries abzuschließen.

# Manuelles Einbinden von Libraries {#head}

<div class="description">Um eigene Sensoren an die senseBox anschließen zu können, geben die Hersteller vieler Sensoren passende Libraries mit. Hier zeigen wir euch, wie ihr aus einem Github-Repository Libraries herunterladen und diese manuell einbinden könnt. Ihr könnt diese Anleitung für jegliche externe Libraries verwenden, die ihr in Arduino einbinden möchtet. </div>
<div class="line">
    <br>
    <br>
</div>

<div class="box_error">
    <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    <b>ACHTUNG:</b> Die für die senseBox benötigten Libraries befinden sich bereits im Board-Support-Package, welches in <a href="../erste-schritte/board-support-packages-installieren.md">Schritt 2</a> heruntergeladen wird. Ihr solltet diese <b> nicht </b> mehr manuell einbinden, so wie es in früheren Versionen dieses Buches angegeben wurde.
    Dadurch entstehen Doppelungen, die zu Fehlern führen können.
</div>

## Libraries herunterladen und hinzufügen

{% collapse title="'Library' - Was ist das eigentlich und wofür brauche ich das?" %}

Eine Library ist wie der Name schon sagt eine Sammlung von etwas - eine Sammlung von Methoden um genauer zu sein. Methoden sind in der Programmierung kleinere Abschnitte von Code, die auf ein Objekt angewendet werden können. 
Bei der senseBox zum Beispiel kann eine Methode aufgerufen werden, um die LEDs auf dem MCU ein- und auszuschalten. Es gibt eine Menge solcher Standardmethoden, die von einer Vielzahl an Programmmen benutzt werden. Um diese Methoden nicht alle einzeln in den Programmcode übertragen zu müssen, können sie in Libraries abgelegt werden. 
Eine Library ist also eine Datei, in der viele Methoden gespeichert werden. Man kann Libraries in seinen Code einbinden. Dafür reicht es wenn sie im Arduino-Ordner für Libraries gespeichert sind und man sie dann mit einer einzigen Zeile zu Beginn des Programmcodes einbindet. Das sieht in Arduino für die Library mit dem Namen "senseBoxIO" wie folgt aus: 

```arduino
#include <senseBoxMCU.h>;
```

Ist die Library eingebunden, können alle in ihr enthaltenen Methoden im Code benutzt werden. 

{% endcollapse %}


Bei der manuellen Installation der Libraries können sehr schnell Fehler auftreten, daher sollte man hier besonders genau auf die einzelnen Schritte achten. Um dich bei der Installation möglichst gut zu unterstützen, haben wir für jedes Betriebssystem eine seperate Anleitung geschrieben.
Wähle das zu deinem Computer passende System und folge den angegebenen Schritten.

{% tabs first="Libraries einfügen Windows", second="Libraries einfügen Mac", third="Libraries einfügen Linux" %}
{% content "first" %}
# Libraries einfügen Windows

1. Die meisten externen Libraries findest du in Github-Repositories. Um sie herunterzuladen, musst du den grünen Button `Clone or download` und daraufhin im sich öffnenden Fenster `Download ZIP` klicken. 

  ![Beispielhafter Download der "Adafruit_HDC_Library" von github.com](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/github_download.png)

2. Sollte der Download nicht von alleine starten, öffnet sich ein Fenster, in dem du das Feld ``Datei speichern`` auswählen musst und den Ordner an einen beliebigen Ort auf deinem Computer legst (standardmäßig ist das der Downloads-Ordner).

3. Die heruntergeladene Datei ist ein `.zip`-Archiv, also eine komprimierte Version der Library. Es gilt daher als nächstes dieses `.zip`-Archiv zu entpacken. Dafür öffnest du den Speicherort des Archivs und klickst es mit Rechts-Klick an und wählst im erscheinenden Menü `Alle extrahieren...`. Wähle als Speicherort denselben Ordner wie beim Download (z.B. den Downloads-Ordner).

4. Öffne nun die Arduino IDE. Gehe auf `Datei` -> `Voreinstellungen`:

 ![Klicke `Datei` und dann `Voreinstellungen`](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_2.PNG?raw=true)

    und schaue im Feld unter `Sketchbook-Speicherort` nach an welchem Ort der Sketchbook Ordner gespeichert ist. 

 ![Schaue im rot-markierten Feld nach, wo dein Sketchbook-Speicherort ist](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen.PNG)

    Merke dir den Pfad zu diesem Ordner, also den Ort wo dieser gespeichert ist.

    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        Du musst den Library-Ordner, den du bereits heruntergeladen und entpackt hast, im nächsten Schritt in den Sketchbook-Speicherort verschieben. Es ist daher sehr wichtig, dass du dir den entsprechenden Speicherort aus Punkt 4 genau merkst, um so später auftretende Fehler zu vermeiden.
    </div>

5. Nun navigierst du in deinem Datei-Explorer zum Sketchbook-Speicherort (siehe 4.). Beachte, dass der Zielordner im Datei-Explorer am Sketchbook-Speicherort den Namen `Arduino` trägt. Wähle den Ordner mit Doppelklick aus um seinen Inhalt zu sehen. Der Ordner enthält einen weiteren Ordner mit dem Namen "libraries".

 <details><summary>Was mache ich, wenn es keinen 'libaries'-Ordner gibt?</summary><p>Falls hier kein Ordner mit dem Namen "libraries" vorhanden ist, kannst du einfach einen neuen Ordner erstellen und diesen "libraries" nennen. Einen neuen Ordner erstellst du mit Rechtsklick in den Dateiexplorer -&gt; <code>Neu</code> -&gt; <code>Ordner</code>.</p></details>
 <p>Kopiere oder ziehe jetzt den heruntergeladenen und entpackten Ordner in den <code>libraries</code>-Ordner.</p>  

6. Schließe jetzt das Programm Arduino vollständig und starte es erneut, um die Installation der entsprechenden Libraries abzuschließen. 


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Leider ist ein typischer Fehler, dass die senseBox Library nicht in den richtigen Ordner gelegt wird. Bitte überprüfe nochmal, ob du die Datei in den richtigen Ordner aus 4. gelegt hast.
</div>

{% content "second" %}
# Libraries einfügen Mac

1. Die meisten externen Libraries findest du in Github-Repositories. Um sie herunterzuladen, musst du den grünen Button `Clone or download` und daraufhin im sich öffnenden Fenster `Download ZIP` klicken. 

  ![Beispielhafter Download der "Adafruit_HDC_Library" von github.com](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/github_download.png)

2. Der Download sollte von alleine starten und die Datei automatisch entpackt und in deinem "Downloads"-Ordner abgelegt werden. Öffne den Downloads-Ordner und schaue ob der heruntergeladene Ordner dort vorhanden ist. *Sollte dort anstelle eines Ordners nur eine **.zip**-Datei liegen, doppel-klicke diese, um sie zu entpacken.*

3. Öffne nun die Arduino IDE. Gehe oben auf `Arduino` -> `Einstellungen ...`:

 ![Klicke `Arduino` und dann `Einstellungen ...`](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_2_mac.png)

    und schaue im Feld unter `Sketchbook-Speicherort` nach an welchem Ort der Sketchbook Ordner gespeichert ist. 

 ![Schaue im rot-markierten Feld nach, wo dein Sketchbook-Speicherort ist](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_mac.png)

    Merke dir den Pfad zu diesem Ordner, also den Ort wo dieser gespeichert ist.

    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        Du musst die Libraries, die du bereits heruntergeladen hast, im nächsten Schritt in den Sketchbook-Speicherort verschieben. Es ist daher sehr wichtig, dass du dir den entsprechenden Speicherort aus Punkt 3 genau merkst, um so später auftretende Fehler zu vermeiden.
    </div>

4. Nun navigierst du in deinem Finder zum Sketchbook-Speicherort. Beachte, dass der Zielordner im Finder am Sketchbook-Speicherort den Namen `Arduino` trägt. Wähle den Ordner mit Doppelklick aus um seinen Inhalt zu sehen. Der Ordner enthält einen weiteren Ordner mit dem Namen "libraries".

 <details><summary>Was mache ich, wenn es keinen 'libaries'-Ordner gibt?</summary><p>Falls hier kein Ordner mit dem Namen "libraries" vorhanden ist, kannst du einfach einen neuen Ordner erstellen und diesen "libraries" nennen.</p></details>
 <p>Kopiere oder ziehe jetzt den heruntergeladenen (entpackten) Ordner in den <code>libraries</code>-Ordner.</p>

6. Schließe jetzt das Programm Arduino vollständig und starte es erneut, um die Installation der entsprechenden Libraries abzuschließen. 


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Leider ist ein typischer Fehler, dass die senseBox Library nicht in den richtigen Ordner gelegt wird. Bitte überprüfe nochmal, ob du die Datei in den richtigen Ordner aus 3. gelegt hast.
</div>

{% content "third" %}
# Libraries einfügen Linux

1.  Die meisten externen Libraries findest du in Github-Repositories. Um sie herunterzuladen, musst du den grünen Button `Clone or download` und daraufhin im sich öffnenden Fenster `Download ZIP` klicken. 

  ![Beispielhafter Download der "Adafruit_HDC_Library" von github.com](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/github_download.png)

2. Der Download startet von alleine und legt ein `.zip`-Archiv in deinem Downloads-Ordner ab. Öffne den Downloads-Ordner und entpacke die `.zip` Datei mit Rechts-Klick -> `Extrahiere Hier`(*`Extract Here`*).

3. Öffne nun die Arduino IDE. Gehe auf `Datei` -> `Voreinstellungen`:

 ![Klicke `Datei` und dann `Voreinstellungen`](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_2_linux.png)

    und schaue im Feld unter `Sketchbook-Speicherort` nach an welchem Ort der Sketchbook Ordner gespeichert ist. 

 ![Schaue im rot-markierten Feld nach, wo dein Sketchbook-Speicherort ist](https://github.com/sensebox/resources/raw/master/gitbook_pictures/libraries/voreinstellungen_linux.png)

    Merke dir den Pfad zu diesem Ordner, also den Ort wo dieser gespeichert ist.

    <div class="box_warning">
        <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
        Du musst die Libraries, die du bereits heruntergeladen und entpackt hast, im nächsten Schritt in den Sketchbook-Speicherort verschieben. Es ist daher sehr wichtig, dass du dir den entsprechenden Speicherort aus Punkt 3 genau merkst, um so später auftretende Fehler zu vermeiden.
    </div>

5. Nun navigierst du in deinem Datei-Explorer zum Sketchbook-Speicherort (siehe 3.). Beachte, dass der Zielordner im Datei-Explorer am Sketchbook-Speicherort den Namen `Arduino` trägt. Wähle den Ordner mit Doppelklick aus um seinen Inhalt zu sehen. Der Ordner enthält einen weiteren Ordner mit dem Namen "libraries".

 <details><summary>Was mache ich, wenn es keinen 'libaries'-Ordner gibt?</summary><p>Falls hier kein Ordner mit dem Namen "libraries" vorhanden ist, kannst du einfach einen neuen Ordner erstellen und diesen "libraries" nennen. Einen neuen Ordner erstellst du mit Rechtsklick in den Dateiexplorer -&gt; <code>Neuer Ordner (New Folder)</code>. </p></details>
 <p>Kopiere oder ziehe jetzt den heruntergeladenen (entpackten) Ordner in den <code>libraries</code>-Ordner.</p>

6. Schließe jetzt das Programm Arduino vollständig und starte es erneut, um die Installation der entsprechenden Libraries abzuschließen. 


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Leider ist ein typischer Fehler, dass die senseBox Library nicht in den richtigen Ordner gelegt wird. Bitte überprüfe nochmal, ob du die Datei in den richtigen Ordner aus 3. gelegt hast.
</div>

{% endtabs %}



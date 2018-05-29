# Schritt 3: Libraries herunterladen {#head}

<div class="description"></div>
<div class="line">
    <br>
    <br>
</div>

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Hast Du schon die Ardunio IDE heruntergeladen und installiert?

<div class="row">
    <div class="col-sm-6">
        <div class="box_success">
            <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
            Ja natürlich?!
            <br>
            Dann bist du hier genau richtig und du kannst mit dem zweiten Schritt, dem hinzufügen der Libraries starten!
        </div>
    </div>
    <div class="col-sm-6">
        <div class="box_error">
            <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
             Nein, was ist das?!
             <br>
             Wenn du nicht weißt was die Arduino IDE ist oder du sie noch nicht installiert hast schau dir zuerst <a href="software-installation.html">Schritt 1</a> an und folge dort allen Anweisungen.
        </div>
    </div>
</div>
</div>

## Libraries herunterladen und hinzufügen

{% collapse title="'Library' - Was ist das eigentlich und wofür brauche ich das?" %}

Eine Library ist wie der Name schon sagt eine Sammlung von etwas - eine Sammlung von Methoden um genauer zu sein. Methoden sind in der Programmierung kleinere Abschnitte von Code die auf ein Objekt angewendet werden können. 
Bei der senseBox zum Beispiel kann eine Methode aufgerufen werden um die LEDs auf dem MCU ein- und auszuschalten. Es gibt eine Menge solcher Standardmethoden, die von einer Vielzahl an Programmmen benutzt werden. Um diese Methoden nicht alle einzeln in den Programmcode übertragen zu müssen, können sie in Libraries abgelegt werden. 
Eine Library ist also eine Datei, in der viele Methoden gespeichert werden. Man kann Libraries in seinen Code einbinden. Dafür reicht es wenn sie im Arduino-Ordner für Libraries gespeichert sind und man sie dann mit einer einzigen Zeile zu Beginn des Programmcodes einbindet. Das sieht in Arduino für die Library mit dem Namen "senseBoxIO" wie folgt aus: 

```arduino
#include <senseBoxMCU.h>;
```

Ist die Library eingebunden, können alle in ihr enthaltenen Methoden im Code benutzt werden. 

{% endcollapse %}

Für die senseBox solltet Ihr zu Beginn unbedingt die senseBox-Library einbinden, um alle grundlegenden Methoden gegeben zu haben. Befolge dafür folgende Schritte: 

1. Ein zip-Archiv mit allen benötigten Bibliotheken findest du [hier](https://github.com/sensebox/resources/blob/master/libraries/senseBox_Libraries.zip).

2. Klicke auf ``Download`` um den Ordner herunterzuladen und speichere den Ordner.

3. Klicke dann auf ``Datei speichern`` und lege den Ordner an einen beliebigen Ord auf deinem Computer.

4. Jetzt entpackst du die ``.zip`` Datei und speicherst diese im gleichen Ordner.

5. Als letztes suchst du die den Ort an dem du Arduino installiert hast und ziehst die beiden Dateien aus dem entpackten ``.zip``-Archiv ( ``libraries`` und ``examples``) in diesen Ordner. Du kannst diese gerne "ersetzen", falls du danach gefragt wirst.  

6. Starte jetzt Arduino neu. 






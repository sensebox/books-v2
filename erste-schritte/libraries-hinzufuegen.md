# Schritt 3: Libraries herunterladen {#head}

<div class="description"></div>
<div class="line">
    <br>
    <br>
</div>

## Libraries herunterladen und hinzufügen

{% collapse title="'Library' - Was ist das eigentlich und wofür brauche ich das?" %}

Eine Library ist wie der Name schon sagt eine Sammlung von etwas - eine Sammlung von Methoden um genauer zu sein. Methoden sind in der Programmierung kleinere Abschnitte von Codes, die auf ein Objekt angewendet werden können. 
Bei der senseBox zum Beispiel kann eine Methode aufgerufen werden, um die LEDs auf dem MCU ein- und auszuschalten. Es gibt eine Menge solcher Standardmethoden, die von einer Vielzahl an Programmmen benutzt werden. Um diese Methoden nicht alle einzeln in den Programmcode übertragen zu müssen, können sie in Libraries abgelegt werden. 
Eine Library ist also eine Datei, in der viele Methoden gespeichert werden. Man kann Libraries in seinen Code einbinden. Dafür reicht es wenn sie im Arduino-Ordner für Libraries gespeichert sind und man sie dann mit einer einzigen Zeile zu Beginn des Programmcodes einbindet. Das sieht in Arduino für die Library mit dem Namen "senseBoxIO" wie folgt aus: 

```arduino
#include <senseBoxMCU.h>;
```

Ist die Library eingebunden, können alle in ihr enthaltenen Methoden im Code benutzt werden. 

{% endcollapse %}

Für die senseBox solltet Ihr zu Beginn unbedingt die senseBox-Library einbinden, um alle grundlegenden Methoden gegeben zu haben. Befolge dafür folgende Schritte: 

1. Ein zip-Archiv mit allen benötigten Bibliotheken lädst du mit einem Klick auf [Download](https://github.com/sensebox/resources/raw/master/libraries/senseBox_Libraries.zip) herunter.

2. Klicke dann auf ``Datei speichern`` und lege den Ordner an einen beliebigen Ort auf deinem Computer.

3. Jetzt entpackst du die ``.zip`` Datei und speicherst diese im gleichen Ordner.

4. Als letztes suchst du den Ort, an dem du Arduino installiert hast und ziehst die beiden Dateien aus dem entpackten ``.zip``-Archiv ( ``libraries`` und ``examples``) in diesen Ordner. Du kannst diese gerne "ersetzen", falls du danach gefragt wirst.  

5. Starte jetzt Arduino neu. 


<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Leider ist ein typischer Fehler, dass die senseBox Library nicht in den richtigen Ordner gelegt wird. Bitte überprüfe nochmal, ob du die Datei in den richtigen Ordner gelegt hast. Wenn du Verbesserungsvorschläge für unsere Erklärung hast, kannst du uns gerne kontaktieren. 
</div>


{% tabs first="Libraries einfügen Windows", second="Libraries einfügen Mac", third="Libraries einfügen Linux" %}
{% content "first" %}
# Libraries einfügen Windows
Coming soon...

{% content "second" %}
# Libraries einfügen Mac
Coming soon...

{% content "third" %}
# Libraries einfügen Linux
Coming soon...

{% endtabs %}







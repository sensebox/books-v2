
# Blockly für senseBox Online {#head}
 <div class="description">Blockly für senseBox ist eine grafische Programmieroberfläche die komplett online in deinem Browser läuft. Sie ermöglicht dir deine senseBox zu programmieren ohne Software zu installieren </div>
<div class="line">
    <br>
    <br>
</div>

Du findest Blockly für senseBox online unter <a href="blockly.sensebox.de">https://blockly.senseBox.de</a>. Dort kannst du zwischen den verschiedenen Versionen der senseBox auswählen. 

## Die Oberfläche

Blockly für senseBox läuft in den gängingen Browsern (Google Chrome, Firefox und Edge) ohne Installation. Die Oberfläche ist sowohl in Deutsch als auch in Englisch verfügbar.
<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Wenn du die Sprache änderst wird die Oberfläche neu geladen und deine bisherige Programmierung wird nicht gespeichert. Du solltest dir also zu Begin überlegen ob du in der Englischen oder Deutschen Oberfläche arbeiten willst. Alternativ kannst du die deine Blöcke als XML Datei speichern und nach dem Ändern der Sprache wieder laden. 
</div>

Die Oberfläche ist grob in drei Bereiche aufgeteilt. Links findest du die Toolbox, die alle Blöcke enthält. In der Mitte ist deine Arbeitsoberfläche und rechts wird dir der generierte Arduino Code angezeigt. 

![Die Blockly für senseBox Oberfläche](../pictures/blockly_overview.png)

#### Die Toolbox

Hier findest du alle Blöcke, die die du für deine Programmierung verwenden kannst. Eine genaue Erläuterung zu den einzelnen Kategorien und die Funktionsweise der Blöcke findest du [hier](../bloecke/sensebox_sensoren.md)

#### Buttons

In der Online Oberfläche verbergen sich die wichtigsten Funktionen hinter verschiedenen Buttons. Die beiden Buttons in der Arbeitsoberfläche sind zum kopieren des Codes in die Zwischenablage (Praktisch, wenn du z.B. deinen Code offline in der Arduino IDE kompilieren willst) und der Kompilieren Button, der den Programmcode auf dem Server Online kompiliert und anschließend dir eine fertigen Programmcode als .BIN Datei zum Download anbietet. 
In der Kopfzeile der Weboberfläche kannst du deinem Programmcode einen Namen geben, die Blöcke als XML-Datei speichern oder wieder laden, den Programmcode als .ino speichern und die komplette Arbeitsfläche mit einem klick löschen. Ganz links findes du das Menü, in dem du Zugriff auf die Einstellungen und die vorgefertigten Beispiele hast.

### Übertragen auf die senseBox MCU

Schließt du deine senseBox MCU an deinen Computer an und führst einen Doppelklick auf den roten Button aus wird diese als Wechseldatendräger erkannt. Mit einem Klick auf Code Kompilieren in der Weboberfläche wird dein Programmcode auf dem Server kompiliert und eine .BIN Datei wird dir zum Download angeboten. Je nachdem welches Betriebssystem du verwendest unterscheidet sich nun der Kopiervorgang. 

{% tabs first="Windows", second="MacOS und Linux" %}
{% content "first" %}
#### Kopieren unter Windows 

Unter Windows kannst du die erstellte .BIN Datei einfach per Drag & Drop auf den Wechseldatenträger <b>SENSEBOX</b> kopieren. Die rote LED am Button wird kurz flackern und anschließend startet das Board selbstständig neu und führt deinen Programmcode aus. 


{% content "second" %}

#### Kopieren unter MacOS und Linux

{% endtabs %}




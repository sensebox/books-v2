# Getting started {#head}
 <div class="description">This page shows you how to create your first program and transfer it to the senseBox MCU.</div>
<div class="line">
    <br>
    <br>
</div>

Du findest Blockly für senseBox online unter <a href="https://blockly.sensebox.de">https://blockly.senseBox.de</a>. Dort kannst du zwischen den verschiedenen Versionen der senseBox auswählen. 

## Programming

In einem einfachen Programm wird die interne LED, die sich direkt neben dem roten Resetbutton befindet angeschaltet. Den Block zum Anschalten der LED findest du in der Toolbox unter [LED](../blocks/led.md). 

![Programmcode erstellen und kompilieren](../pictures/losgehts.gif)

Nach dem Programmieren muss der Programmcode auf die senseBox MCU übertragen werden. Schließe dazu die senseBox MCU mit dem USB Kabel an deinen Computer an. 


### Transfer to senseBox MCU

Schließt du deine senseBox MCU an deinen Computer an und führst einen Doppelklick auf den roten Button aus wird diese als Wechseldatendräger erkannt. Mit einem Klick auf Code Kompilieren in der Weboberfläche wird dein Programmcode auf dem Server kompiliert und eine .BIN Datei wird dir zum Download angeboten. Je nachdem welches Betriebssystem du verwendest unterscheidet sich nun der Kopiervorgang. 

{% tabs first="Windows", second="MacOS", third="Linux" %}
{% content "first" %}
#### Copy with Windows 

Unter Windows kannst du die erstellte .BIN Datei einfach per Drag & Drop auf den Wechseldatenträger <b>SENSEBOX</b> kopieren. Die rote LED am Button wird kurz flackern und anschließend startet das Board selbstständig neu und führt deinen Programmcode aus. 


{% content "second" %}

#### Copy with MacOS

Unter MacOS funktioniert das kopieren der .BIN per Drag & Drop leider zurzeit noch nicht. Eine Möglichkeit ist die Datei im Terminal per dd-Befehl zu kopieren (nur erfahrenen Nutzern zu empfehlen!) oder einen alternativen Dateimanager wie zum Beispiel [muCommander](http://www.mucommander.com/) zu verwenden.

{% content "third" %}

#### Copy with Linux 

Unter Linux kannst du die erstellte .BIN Datei einfach per Drag & Drop auf den Wechseldatenträger <b>SENSEBOX</b> kopieren. Die rote LED am Button wird kurz flackern und anschließend startet das Board selbstständig neu und führt deinen Programmcode aus. 


{% endtabs %}

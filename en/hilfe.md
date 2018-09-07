#Hilfe {#head}
<div class="description">
Hier findest du häufig gestellte Fragen und Antworten. Wenn du Probleme hast schaue zuerst hier nach ob deine Frage beantwortet wird. Ansonsten schau in unser <a href="https://forum.sensebox.de/">Forum</a> oder stell dort deine Fragen.</div>
<div class="line">
    <br>
    <br>
</div>

### Fehler bei der Kompilierung oder Übertragung von Code in Arduino

Wenn Fehler bei der Kompilierung oder der Übertragung von Code auftreten, kann das oft sehr simple Gründe haben, die einfach zu beheben sind. Oft fehlt ein `; (Semikolon)` eine `} (geschweifte Klammer)` oder andere kleine Fehler treten auf. Das schwierigste an der Fehlerbehebung ist aber nicht das ausbessern des Fehlers, sondern das Finden des Fehlers bzw. der Fehlerquelle. Um das Finden des Fehlers zu erleichtern, gibt euch die Arduino IDE Fehlermeldungen aus. 
Diese sind aber, ohne Vorerfahrung mit der Programmierung, oft kryptischer als der eigentlich Fehler.

Ihr findet hier daher einige häufig auftretende Fehler zusammen mit Fehlermeldung und Anleitung zur Behebung des Fehlers. Falls ihr mit diesen euer Problem nicht lösen könnt, schaut im Forum vorbei und erstellt dort gegebenenfalls einen Beitrag mit der Beschreibung eures Fehlers. Dazu solltet ihr am besten Fehlermeldung und euren Sketch zur Verfügung stellen. 

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
   Wenn ihr öffentlich euren Sketch darstellt (z.B. in unserem Forum), solltet ihr selbstverständlich immer darauf achten, dass ihr keine persönlichen Daten an die Öffentlichkeit weitergebt. Daher solltet ihr vorher im Code schauen, ob ihr euren Wifi-Namen (SSID) und das Passwort im Sketch eingebaut habt. Sollte dies der Fall sein, löscht diese bitte aus dem Sketch, bevor ihr ihn im Internet publiziert.
</div>

{% collapse title="Ich bekomme einen Fehler, wenn ich den Feinstaubsensor anschließe. Ich habe den Sketch aber nicht verändert, was läuft hier schief?" %}
Schaue dir zunächst die Fehlermeldung an. Diese findest du in der Arduino IDE unterhalb deines Sketches, in einem abgetrennten Bereich. Hier steht deine Fehlermeldung. Du kannst mit deiner Maus durch diese Meldung scrollen oder den Bereich größer ziehen um die gesamte Fehlermeldung zu erkennen.

Auch wenn du den Sketch direkt von der openSenseMap hast und ihn nicht verändert hast, kann es vorkommen, dass ein Fehler mit ähnlicher oder identischer Fehlermeldung, wie folgender, auftritt:

```arduino
'undefined' was not declared in this scope
   
#define SDS_UART_PORT (undefined)
                          ^
 /Users/user-name/Documents/Arduino/libraries/sketch_jun27a/example_sketch123.ino:77:12: note: in expansion of macro 'SDS_UART_PORT'
   SDS011 SDS(SDS_UART_PORT);
              ^
 /Users/user-name/Documents/Arduino/libraries/example_sketch123/example_sketch123.ino: In function 'void setup()':
example_sketch123:247: error: 'undefined' was not declared in this scope
     undefined.begin(9600);
     ^
exit status 1
'undefined' was not declared in this scope
```

Der Fehler liegt hier in an den Stellen
<pre>#define SDS_UART_PORT (<b>undefined</b>)</pre>
und
<pre><b>undefined</b>.begin(9600);</pre>

Hier hat sich ein Fehler bei der Konfiguration eingeschlichen, denn dort wo `undefined` steht müsste eigentlich `Serial1` oder `Serial2` stehen. Die senseBox MCU bekommt hier von deinem Sketch die Information an welchen Port der Feinstaubsensor angeschlossen wurde. Mit der Information `undefined`, also "undefiniert", kann die senseBox MCU allerdings nichts anfangen und weiß somit nicht an welchen Port der Feinstaubsensor die Messwerte schickt. 

Befolge die folgenden Schritte, um das Problem zu lösen:

- Schaue auf deine senseBox MCU, wo das Kabel vom Feinstaubsensor angeschlossen ist.

![Schau nach, an welchem der beiden farbig markierten Ports du deinen Feinstaub Sensor angeschlossen hast](pictures/feinstaub_serial_port.jpg)

- Hast du deinen Feinstaubsensor, wie auf dem Bild, an den seriellen Port 1 (rot markierter Port) angeschlossen, dann ersetze das `undefined` im Sketch durch `Serial1`. 

- Hast du deinen Feinstaubsensor, an den Port daneben, den seriellen Port 2 (im Bild gelb markiert), angeschlossen, musst du das `undefined` im Sketch durch `Serial2` ersetzen. 

- Denke daran, die Änderung in beiden Zeilen durchzuführen. Also einmal an der Stelle, wo im Text `#define SDS_UART_PORT (undefined)` steht und dort, wo `undefined.begin(9600);` steht.

- Kompiliere dann den Sketch erneut. 

Dein Problem sollte gelöst sein - Viel Spaß mit deinem Feinstaubsensor! 

Bei Fragen oder Problemen mit dieser Anleitung, wende dich bitte an das [Forum](https://forum.sensebox.de)!

{% endcollapse %}


### Fragen zur Programmierung
{% collapse title="Ich möchte eine externe Library einbinden. Geht das?" %}
Ja das geht. Die senseBox ist nicht auf die mitgelieferten Sensoren beschränkt. Du kannst sie mit jeglichen Sensoren erweitern. Zur Programmierung werden oft externe Libraries von den Anbietern der Sensoren benötigt. 

Wie du diese manuell in die Arduino IDE einbinden kannst erfährst du auf [dieser Hilfeseite](add-external-libraries.md)!
{% endcollapse %}


### Fragen zur Datenübertragung

{% collapse title="Ich habe Probleme bei der Übertragung von Daten per Wifi. Was kann ich tun?" %}
Bei einigen unserer WiFi Bees vom Typ WINC1500 kann es vorkommen, dass eine veraltete Firmware (Version 19.4.4) installiert ist. Das kann zu Übertragungsproblemen führen. Sollten diese Probleme bei dir auftreten, schaue dir [diese Hilfeseite](additional-info.md) an, um die Firmware zu aktualisieren.
{% endcollapse %}

### Fragen zur Verbindung von senseBox mit dem Computer

{% collapse title="Ich habe Probleme bei dem Verbinden meiner senseBox MCU mit meinem Windows-Rechner. Was kann ich tun?" %}
Bei einigen unserer Windows-Rechnern kann es vorkommen, dass die USB-Bootloader Treiber nicht korrekt installiert sind. Das kann dazu führen, dass der Computer die senseBox MCU nicht als USB-Gerät erkennt und somit keine Dateien übertragen kann. Sollten diese Probleme bei dir auftreten, schaue dir [diese Hilfeseite](win-boot-help.md) an, um zu prüfen, ob deine Treiber funktionieren und sie ggf. zu aktualisieren.
{% endcollapse %}


### Fragen zum senseBox-Projekt

{% collapse title="Wo kann ich die neue senseBox Version 2 kaufen?" %}
Ganz einfach, gehe auf sensebox.kaufen und klicke dir dort die senseBox passend zu deinen Bedürfnissen zusammen.
{% endcollapse %}


{% collapse title="Wie kann ich auf dem neusten Stand bleiben was die senseBox angeht?" %}
Melde dich ganz einfach zu unserem Newsletter an und verpasse nie wieder, wenn es etwas neues gibt!     
{% endcollapse %}

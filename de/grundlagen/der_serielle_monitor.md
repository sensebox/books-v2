# Der Serielle Monitor {#head}

<div class="description">Der serielle Monitor ist ein Werkzeug um Daten über die USB-Verbindung der senseBox MCU direkt in der IDE anzeigen zu lassen und Daten von der Computertastatur an die senseBox MCU zu übertragen.
</div>
<div class="line">
    <br>
    <br>
</div>


Mit diesem seriellen Monitor kann man sich am PC Daten anzeigen lassen, die der Mikrocontroller an den PC sendet (Zahlen oder Texte). 
Das ist sehr sinnvoll, da man nicht immer ein LCD Display am Mikrocontroller angeschlossen hat, auf dem man bestimmte Werte ablesen könnte.

## Den seriellen Monitor starten
Um den seriellen Monitor zu starten, musst du zuerst die IDE öffnen und dann in der Symbolleiste auf das Symbol mit der kleinen Lupe klicken.

![Lupen-Symbol](https://github.com/sensebox/resources/raw/master/gitbook_pictures/grundlagen/arduino_magnifying_glass.png)

Das nun geöffnete Fenster hat oben eine Eingabezeile mit "Senden"-Schaltfläche und darunter ein Ausgabefenster.
Im Ausgabefenster werden fortlaufend die neusten Ausgaben angezeigt. Wenn das Häkchen bei Autoscroll gesetzt ist, werden nur die aktuellsten Ausgaben angezeigt.
Das heißt, wenn das Ausgabefenster voll ist, werden ältere Daten nach oben aus dem sichtbaren Bereich des Bildschirms geschoben um Platz für die aktuellen Ausgaben zu schaffen.
Deaktiviert man die Autscroll Funktion, muss manuell über den Scrollbalken am rechten Rand gescrollt werden.

![serieller Monitor](https://github.com/sensebox/resources/raw/master/gitbook_pictures/grundlagen/arduino_serial_monitor_mac.jpg)

## Werte auf dem seriellen Monitor ausgeben
Um sich Daten im seriellen Monitor anzeigen lassen zu können, muss dieser zuerst initialisiert werden.
Dies passiert über die Funktion `Serial.begin(9600)` in der `setup()` Funktion.
Der Wert `9600` definiert die Baud-Rate, also die Geschwindigkeit mit der Daten zwischen Computer und Arduino übertragen werden.
Der eingetragene Wert muss immer der im seriellen Monitor unten rechts ausgewählten Geschwindigkeit entsprechen.

Um Daten an den seriellen Monitor zu senden, verwendet man die Funktionen `Serial.print()` und `Serial.println()`.
Die erste Variante der Funktion gibt einfach die Daten aus, während die zweite Variante einen Zeilenumbruch am Ende einfügt.


Als ersten Versuch sollst du jetzt Text im Ausgabefenster anzeigen lassen.
Um Text anzeigen zu lassen, muss dieser in Anführungszeichen in den Klammern der Funktion stehen:
```arduino
Serial.println("senseBox rocks!");
Serial.print("senseBox ");
Serial.println("rocks!");
```

Das Beispiel sollte in je einer Zeile den Text "senseBox rocks!" ausgeben.
Beachte die Verwendung von `print` und `println`!

Neben Text kann man sich im seriellen Monitor auch die Inhalte von Variablen anzeigen lassen. Dazu muss statt dem gewünschten Text der Name der jeweiligen Variable eingetragen werden:

```arduino
String beispielvariable = "hallo welt!";
Serial.println(beispielvariable);
```

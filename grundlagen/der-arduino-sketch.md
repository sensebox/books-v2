# Arduino IDE und Sketches {#head}

<div class="description">
    Bevor du loslegen kannst dein erstes eigenes Programm zu schreiben, musst du dir das Arduino Programm - die sogenannte Entwicklungsumgebung (engl. IDE) - anschauen.
</div>
<div class="line">
    <br>
    <br>
</div>

## Grundlagen

Wenn du die IDE öffnest, siehst du direkt einen großen weißen Bereich, in welchem du dein Programm schreiben wirst.
Im schwarzen Bereich darunter werden dir Status- und Fehlermeldungen angezeigt. Es lohnt sich also immer einen Blick auf die Meldungen zu werfen.

Zuletzt solltest du dir noch die kleinen Schaltflächen über dem weißen Bereich anschauen.

![auf Schreibfehler überprüfen - Programm an senseBox MCU übertragen](../pictures/grundlagen/arduino-ide_schaltflaechen1.png)

Das Häkchen und der Pfeil sind die beiden wichtigsten Symbole für dich:
Mit dem Häkchen kannst du dein Programm auf Schreibfehler überprüfen lassen, und mit den Pfeil überträgst du dein Programm an die senseBox MCU.

![neues Programm erstellen - gespeichertes Programm öffnen - Programm speichern](../pictures/grundlagen/arduino-ide_schaltflaechen2.png)

Die anderen drei Symbole - angefangen mit dem kleinen Blatt ganz links - stehen dafür ein neues Programm zu erstellen, ein gespeichertes zu öffnen und dein geschriebenes Programm zu speichern

## Der Arduino-Sketch
Ein Arduino Programm (auch "Sketch" genannt) hat einen sehr einfachen Aufbau, der aus zwei Hauptbestandteilen besteht. Diese zwei benötigten Funktionen enthalten Blöcke von Anweisungen, welche den Programmablauf beschreiben:

```arduino
void setup(){
    // Anweisung
}
void loop(){
    // Anweisung
}
```
Die `setup`-Funktion wird nur einmal beim Start des Programmes ausgeführt. In der `loop`-Funktion werden hingegen alle Anweisungen in einer endlosen Schleife wiederholt. Beide Funktionen sind zwingend notwendig, um das Programm erfolgreich kompilieren und ausführen zu können. "Kompilieren" bezeichnet die Übersetzung des Programms in einen Maschinencode, welcher vom Arduino-Prozessor verstanden werden kann; dies übernimmt die Arduino-IDE für uns.

Mit einem doppelten Schrägstrich (`//`) lassen sich Kommentare zum Programmcode hinzufügen. Es ist immer wichtig seinen Programmcode zu kommentieren, damit auch andere nachvollziehen können, was an einer bestimmten Stelle passiert.

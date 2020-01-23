# Die ersten Töne - Nutzung eines Summers {#head}

<div class="description">
Bis jetzt ist unsere senseBox noch recht schweigsam, aber das wollen wir in dieser Station ändern.
In einem ersten Schritt wollen wir den Summer zum Piepen bringen. In einem zweiten Schritt wollen wir die Lautstärke des Summers verändern und in einem dritten Schritt soll der Summer eine kurze Melodie abspielen. Während die ersten beiden Ziele recht schnell erreicht werden, ist der dritte Teil ein kleines bisschen kniffeliger.
</div>
<div class="line">
    <br>
    <br>
</div>

## Materialien 
* Summer
* Potentiometer 

## Grundlagen 

{% collapse title="Summer" %} 
Ein Summer oder Piezo ist ein Bauteil, welches elektrische Signale in Töne umwandelt. Die Lautstärke beträgt bis zu 80dB. Der Summer hat zwei Pins, mit denen er auf das Steckboard gesteckt werden kann. Die Betriebsspannung des Summers liegt zwischen 1V und 12V, wobei er bis zu 19mA verbraucht. Wie bei der LED kann der Strom nur in eine Richtung fließen. Der kürzer Pin muss mit Ground (GND) verbunden werden und der längere mit einer Spannungsquelle.
{% endcollapse %}
{% collapse title="Potentiometer" %} 
Das Potentiometer ist ein elektrisches Bauelement dessen Widerstandswert sich stufenlos einstellen lässt. Über einen Widerstandskörper wird der sogenannte Schleifer bewegt. Die Position des Schleifers bestimmten den Widerstand. Gewöhnlich hat ein Potentiometer drei Anschlüsse: Zwei für den Widerstand und einen dritten für den Abgriff. Unser Potentiometer hat einen maximalen Widerstand von 10k Ohm.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
        <b>Achtung:</b> Kleine Potentiometer sind nur für einen relativ geringen Stromfluss konstruiert. Für die elektrischen Bauteile in der senseBox reicht das Potentiometer aus, doch wenn du Bauteile mit einer größeren Stromaufnahme anschließen möchtest (z.B. einen Servomotor), benötigst du ein größeres Potentiometer.
</div>

{% endcollapse %}


## Aufbau

### Schritt 1 

Der Summer benötigt einen Minus und einen Pluspol. Stecke den Schaltkreis so wie auf der Abbildung zu sehen. 
<div class="box_info">
<i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Der längere Pin am Summer ist der Pluspol(rotes Kabel verbinden) und der kurze Pin der Minuspol(schwarzes Kabel verbinden)
</div>

![Verkabelung des Summers](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Aufbau_Summer.png)

Wenn ihr den Schaltkreis wie in der Grafik steckt und den Arduino mit dem Netzteil verbindet, sollte der Summer einen lauten Dauerton erzeugen. Damit haben wir unsere erste Aufgabe bereits erledigt.

### Schritt 2

Nun wollen wir ein weiteres Bauteil in unseren Schaltkreis integrieren, mit dessen Hilfe sich die Lautstärke des Summers verändern lässt. Wie in älteren Radios wollen wir dazu ein Potentiometer verwenden.

Verbinde dazu den 5V Ausgang des Arduinos mit dem Potentiometer, und dieses mit dem längeren Pin des Summers. Nun musst du den kurzen Pin des Summers noch mit GND verbinden und schon kannst du über das Potentiometer die Lautstärke verändern.

![Verkabelung des Potentiometers](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Aufbau_Potentiometer.png)

<div class="box_info">
<i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Tipp: Falls ihr ein paar Informationen zur Funktionsweise eines Potentiometers lesen möchtet, schaut euch den Eintrag im Glossar an.
</div>

<div class="box_success">
<i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Idee: Falls ihr nicht jedes Mal das Kabel ziehen wollt um den Summer auszuschalten, könnt ihr noch einen Drucktaster einbauen.
</div>

### Schritt 3

Ein einzelner durchgehender Ton ist nicht besonders spannend; unser Summer kann mehr. Um dem Summer verschiedene Töne zu entlocken, müssen wir Pulsweiten ausgeben. Für nähere Information zu Pulsweitenmodulation (PWM) kannst du hier mehr erfahren. Für dieses Projekt ist das aber nicht unbedingt nötig.

Ein Summer setzt jede Pulsweite in einen spezifischen Ton um. Wir wollen unser Programm so schreiben, dass eine Note (Tonleiter: c, d, e, f, g, a, h, c) für eine Pulsweite steht. Dazu benutzen wird das Konstrukt #define wie folgt:

{% collapse title="Definieren der Noten" %}

```arduino
#define  h     4064    // 246 Hz
#define  c     3830    // 261 Hz
#define  d     3400    // 294 Hz
#define  e     3038    // 329 Hz
#define  f     2864    // 349 Hz
#define  g     2550    // 392 Hz
#define  a     2272    // 440 Hz
#define  h     2028    // 493 Hz
#define  C     1912    // 523 Hz
#define  E     1518    // 659 Hz
#define  F     1432    // 698 Hz
#define  R     0       // Definiere eine Note als Ersatz für eine Pause
```
{% endcollapse %}

Nun benötigen wir einige Variablen um das spätere Abspielverhalten des Arduinos zu steuern. Die Werte könnt ihr für den Anfang so übernehmen. Wenn ihr später ein fertiges Programm habt, dann könnt ihr verschiedene Werte einsetzen und prüfen wie sich das auf die Melodie auswirkt:

{% collapse title="Definieren der globalen Variablen und setup()-Funktion" %}

```arduino
// Geschwindigkeit 
long tempo = 26000;
// Länge der Pausen zwischen den Noten
int pause = 1000;
// Variable für die Schleife um die Rest-Länge zu erhöhen
int rest_count = 50;
``` 

Zusätzlich benötigen wir noch einige globale Variablen welche von den Abspielfunktionen intern genutzt werden, und definieren im setup unseren Ausgangs-Pin:

```arduino
int sound = 0;
int beat = 0;
long duration = 0 ; 
int speakerOut = 1; // Abhängig von dem Port an dem ihr den Summer angeschlossen habt

void setup(){
    pinMode(speakerOut,OUTPUT);
}
```
{% endcollapse %}

Jetzt könne wir unsere Melodie in ein Array schreiben. Ein weiteres Array beats definiert, wie lange die entsprechende Note in melody gespielt werden soll:
{% collapse title="Definieren der Melodie" %}

```arduino
    int melody[] = { g, e, R, R, R, e, f, g, E,  E,  C }; //example melody
    int beats[]  = { 8, 8, 8, 8, 8, 8, 8, 8, 16, 16, 32 };
```
Natürlich dürft ihr hier später eure eigene Melodie einfügen. Dazu könnt ihr im Internet einmal die Noten eures Lieblingssongs suchen (siehe unten).
{% endcollapse %}

Wir schreiben uns eine Hilfsmethode, welche genau einen Ton unserer Melodie abspielt. Dazu überprüft sie in der ersten if-Anweisung ob es sich um eine Note oder eine Pause handelt. Falls es sich um eine Note handelt, wird die Note in einer Schleife für duration Millisekunden gespielt:
{% collapse title="Definieren der Hilfsmethode Nr.1" %}

```arduino
void playTone() {
  long elapsed_time = 0;
  if (tone > 0) { // if this isn't a Rest beat
    while (elapsed_time < duration) {

      digitalWrite(speakerOut,HIGH);
      delayMicroseconds(tone / 2);

      // DOWN
      digitalWrite(speakerOut, LOW);
      delayMicroseconds(tone / 2);

      // Keep track of how long we pulsed
      elapsed_time += (tone);
    }
  }
  else { // Rest beat;
    for (int j = 0; j < rest_count; j++) {
      delayMicroseconds(duration/2);
    }
  }
}
```
{% endcollapse %}

Nach dem wir jetzt einen Ton abspielen können, soll eine weitere Hilfsmethode die gesamte Melodie abspielen. Dazu geht eine `for`-Schleife unser Array `melody` durch und ruft für jeden Eintrag die Hilfsfunktion `playTone()` auf, die wir weiter oben definiert haben. Zusätzlich wird nach jeder Note eine kurze Pause eingefügt.
{% collapse title="Definieren der Hilfsmethode Nr.2" %}

```arduino
int MAX_COUNT = sizeof(melody) / 2; // number of tones

void playMelody(){

  for (int i=0; i<MAX_COUNT; i++) {
    tone = melody[i];
    beat = beats[i];

    duration = beat * tempo; // Set up timing

    playTone();

    delayMicroseconds(pause);
  }
}
```
{% endcollapse %}

Es fehlt uns nur noch die Hauptschleife, welche den Ablauf des Programms steuert:
{% collapse title="loop()-Funktion" %}

```arduino
void loop(){
    playMelody();
}
```
{% endcollapse %}

<div class="box_info">
<i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
Idee: Falls ihr für eure Melodie höhere oder tiefere Töne benötigt, so könnt ihr diese wie im Beispiel oben definieren. Wie viel Hertz ein Ton hat könnt ihr hier nachschauen. Diesen Wert müsst ihr dann mit einem antiproportionalen Dreisatz umrechnen.
</div>

<div class="box_warning">
<i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
Achtung: Zwei Variablen im Programm dürfen nicht den gleichen Namen haben!
</div>
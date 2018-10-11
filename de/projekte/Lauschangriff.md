# Lauschangriff {#head}

<div class="description">
In dieser Station wollen wir lernen, wie wir das Mikrofon mit dem Arduino nutzen können.
</div>
<div class="line">
    <br>
    <br>
</div>

## Materialien 
* Mic-Breakout

## Grundlagen 
Das Mikrofon (Mic-Breakout) benötigt eine Betriebsspannung von 2.7V-5.5V und ist in der Lage Geräusche zwischen 58dB und 110dB wahrzunehmen.

## Aufbau 
Das Mikrofon wird mit einen JST-Adapterkabel mit der senseBox MCU verbunden. Dazu wird das JST-Adapterkabel mit dem Steckplatz Digital A verbunden. Es verfügt übe.r drei Pins(GND, VCC und OUT). Das schwarze Kabel wird mit GND verbunden, das rote mit VCC und das grüne mit OUT. Hierbei stellen wir mit dem schwarzen Kabel einen Minuspol, mit dem roten Kabel die Stromversorgung und mit dem grünen Kabel eine Datenübertragung zum Port 1 her. 
Steckt den Schaltkries wie ihr ihn unten in der Grafik seht.
![Verkabelung des Mikrofons](../../../pictures/Lauschangriff_Aufbau.png)

## Programmierung

Eine Variable in der die Werte des Mikrofons gespeichert werden sowie der digitale Port an der das Mikrofon angeschlossen ist, müssen definiert werden.
```arduino
    int micValue = 0; 
    int mic = 1; // Abhängig von dem Port an dem ihr das Mikrofon angeschlossen habt
```

Nun muss die serielle Ausgabe initialisiert werden und dem Pin `mic` der Modus `INPUT` zugeordnet werden. Dies geschieht in der `setup()`-Funktion.
{% collapse title="setup() Funktion" %}

```arduino
void setup(){
    Serial.begin(9600);
    pinMode(mic,INPUT);
    }
```
{% endcollapse %}

In der `loop()`-Funktion kann nun der gemessene Wert über den seriellen Monitor ausgegeben werden.

{% collapse title="loop() Funktion" %} 
```arduino
void loop(){
    micValue = analogRead(mic);
    Serial.println(micValue);
    }
```
{% endcollapse %}


In einem leisen Raum wird der ausgegebene Wert um den Wert 510 schwanken. Bei lauten Geräuschen können auch negative Werte zurückgegeben werden. Um die Lesbarkeit der erhaltenen Werte zu verbessern können wir einige zusätzliche Berechnungen in einer extra Methode ausführen. 

{% collapse title="Funktion zur Lesbarkeit" %} 
```arduino
long getMicVal(){
  int period = 3; // mittelt drei Werte um 'Ausreißer' abzufangen
  int correction_value = 510;
  for(int i = 0; i < period; i++){
    // berechnet den Absolutbetrag des Wertes um negative Ausschläge abzufangen
    micValue = micValue + abs(analogRead(mic)-correction_value);
    delay(5);
  }
  micVal = constrain(abs(micValue/period),1,500);    
  return(micValue);
}
```
{% endcollapse %}

Diese Funktion kann nun anstelle von `analogRead(mic)` in der `loop()`-Funktion verwendet werden.

{% collapse title="Aktualisierte loop() Funktion" %} 
```arduino
void loop(){
    micValue = getMicVal(mic);
    Serial.println(micValue);
    }
```
{% endcollapse %}

Jetzt könnt ihr ausprobieren welche Geräusche welche Ausschläge verursachen:
* Wie stark ist der Ausschlag bei Gesprächen ? 
* Was passiert wenn du den etwas lautes vor das Mikrofon hältst ? 
* Und was, wenn du hinein pustest ? 
# Ampel {#head}

<div class="description">
  Es soll eine Ampel simuliert werden. Mit einem Button kann man die Ampel umschalten.
</div>
<div class="line">
    <br>
    <br>
</div>


## Materialien
* senseBox MCU
* rote LED
* gelbe LED
* grüne LED
* 3x 470Ω Widerstand
* Button
* 10kΩ (10000Ω) Widerstand
* 2x senseBox JST-Adapterkabel

## Aufbau
### Hardwarekonfiguration
Um alle Komponenten anzuschließen benötigst Du zwei JST-Adapterkabel. Das erste wird an Digital A (also den digitalen Pins 1 und 2) angeschlossen, das zweite an Digital B (also den digitalen Pins 3 und 4) angeschlossen. Am Kabel in Digital A werden die rote und die gelbe LED angeschlossen, am Kabel in Digital B die grüne LED und der Button.

![Verkabelung der Ampelschaltung](../../../pictures/projekte/AmpelSchaltungKlein.png)

### Sketch

{% tabs first="Arduino Quellcode", second="Blockly" %}
{% content "first" %}
# Arduino Quellcode
```arduino
int rot = 1;
int gelb = 2;
int gruen = 3;

int button = 4;

void setup() {
 pinMode(rot, OUTPUT);
 pinMode(gelb, OUTPUT);
 pinMode(gruen, OUTPUT);

 // Der Button soll Signale messen, also INPUT
 pinMode(button, INPUT);

 // Ampel zuerst auf ROT setzen
 digitalWrite(rot, HIGH);
 digitalWrite(gelb, LOW);
 digitalWrite(gruen, LOW);
}

void loop() {

 // Hier wird geprüft ob der Button gedrückt wird
 if(digitalRead(button) == HIGH) {

   delay(5000);

   // ROT zu GRUEN
   digitalWrite(rot, HIGH);
   digitalWrite(gelb, HIGH);
   digitalWrite(gruen, LOW);

   delay(1000);

   digitalWrite(rot, LOW);
   digitalWrite(gelb, LOW);
   digitalWrite(gruen, HIGH);

   delay(5000);


   // GRUEN zu ROT
   digitalWrite(rot, LOW);
   digitalWrite(gelb, HIGH);
   digitalWrite(gruen, LOW);

   delay(1000);


   digitalWrite(rot, HIGH);
   digitalWrite(gelb, LOW);
   digitalWrite(gruen, LOW);
 }
}

```

- Am Anfang der `loop()` Funktion wird jedesmal abgefragt ob der Button gedrückt wird.
- `digitalRead(button)` liest den aktuellen Zustand des Buttons aus. Wird er gedrückt, liefert die Funktion `HIGH` aus, ansonsten `LOW`.
-  Um zu Prüfen ob der Button gedrückt wurde muss `digitalRead(button)` mit `HIGH` verglichen werden. Der Vergleich geschieht mit __zwei__ Gleichzeichen `==` (Vergleichsoperator). __Ein__ Gleichzeichen `=` ist eine Zuweisung, wie etwa `int rot = 13`.

{% content "second" %}

# Blockly

![Blockly](https://raw.githubusercontent.com/sensebox/resources/master/images/edu/Blockly_Ampel_Button.png)



{% endtabs %}


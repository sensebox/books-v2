# Kaminfeuer {#head}

<div class="description">
Es soll ein Kaminfeuer simuliert werden. Dazu wird eine rote LED zum flackern gebracht.</div>
<div class="line">
    <br>
    <br>
</div>

## Materialien 
* LED
* 1x 470Ω Wiederstand
* JST-Adapterkabel

## Aufbau

Es wird nur die LED angeschlossen. Diese wird am langen Beinchen mit einem 470Ω Wiederstand mit dem digitalen Port 1 verbunden. Das kurze Beinchen wird mit GND verbunden.

![Verkabelung der einfachen LED](../../../pictures/Aufbau_LED.png)

## Programmierung

{% collapse title="Definieren der globalen Variable und setup()-Funktion" %}
```arduino

// die LED ist an den digitalen Port 1 angeschlossen
int led = 1;

void setup() {
  // der digitale Port 1 wird als OUTPUT definiert
  // d.h.: es werden Signale herausgeschickt
  pinMode(led, OUTPUT);
}
```
Wir speichern den digitalen Port 13 in einer Variable, damit wir uns nur noch den aussagekräftigen Variablennamen merken müssen und nicht die Portnummer. Das ist vorallem bei mehreren angeschlossenen LEDs hilfreich
{% endcollapse %}


{% collapse title="loop()-Funktion" %}
```arduino
void loop() {
  // generiert Zufallswert zwischen 0 und 1000 und speichert ihn in randomDelayAn
  int randomDelayAn = random(1000);
  digitalWrite(led, HIGH);

  // Zufallswert wird eingesetzt, LED bleibt entsprechend lange an (in Millisekunden)
  delay(randomDelayAn);

  // generiert Zufallswert zwischen 0 und 500 und speichert ihn in randomDelayAus
  int randomDelayAus = random(500);
  digitalWrite(led, LOW);

  // Zufallswert wird eingesetzt, LED bleibt entsprechend lange aus (in Millisekunden)
  delay(randomDelayAus);
}
```
Die Funktion random(max) generiert Zufallszahlen von 0 bis max. Falls man ebenfalls ein Minimum angeben will kann man die Funktion random(min, max) benutzen.
{% endcollapse %}

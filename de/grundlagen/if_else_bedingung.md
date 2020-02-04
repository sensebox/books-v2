# if/else-Bedingung {#head}

<div class="description">Mit <i>if</i> und <i>else</i> ist es möglich in einem Programm Entscheidungen zu fällen und die senseBox MCU, je nachdem wie die Entscheidung ausfällt, unterschiedlichen Code ausführen zu lassen.</div>
<div class="line">
    <br>
    <br>
</div>

## Verwendung von if
Um die Bedeutung von `if` verständlich zu machen, schauen wir uns den Programmcode zu folgendem Beispiel an:

Wenn du eine LED in Abhängigkeit von einem Schalter leuchten lassen möchtest, würde der Code wie folgt aussehen:

```arduino
if (digitalRead(BUTTON_PIN) == HIGH) {
  digitalWrite(LED_PIN, HIGH);
}
```

Die erste Codezeile beginnt mit einem `if`. Innerhalb der darauffolgenden Klammern wird die zu prüfende Bedingung angegeben, also in diesem Fall ob der Taster gedrückt ist. Ist diese Bedingung wahr (gibt `true` zurück), wird der in den geschweiften Klammern eingetragene Code ausgeführt.

Wie dir bestimmt aufgefallen ist, wird in der Bedingung ein Vergleichsoperator verwendet, nämlich ein doppeltes Gleichzeichen (`==`). Ein häufiger Fehler besteht darin, dass nur ein einzelnes Gleichzeichen verwendet wird.

Für den Arduino steht ein einzelnes Gleichzeichen jedoch nicht "prüfe, ob gleich" sondern für "setze linken gleich rechten Wert".

## Verwendung von else
Mit `else` kannst du deiner `if`-Anweisung noch eine zusätzliche Aktion hinzufügen, welche alternativ ausgeführt wird, falls die Bedingung nicht wahr ist.
Wenn du also den obenstehenden Code um ein `else` ergänzt, würde der komplette Sketch so aussehen:

```arduino
#define LED_PIN 1
#define BUTTON_PIN 3

void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(BUTTON_PIN, INPUT);
}
void loop() {
  if (digitalRead(BUTTON_PIN)==HIGH){
    digitalWrite(LED_PIN, HIGH);
  } else {
    digitalWrite(LED_PIN, LOW);
  }
}
```

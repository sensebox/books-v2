# if / else-condition {#head}

<div class="description">With <i>if</i> and <i>else</i> it is possible to make decisions in a program and the senseBox MCU, depending on how the decision fails, to execute different code.
</div>
<div class="line">
    <br>
    <br>
</div>

## Use of if
To understand the meaning of `if`, let's take a look at the program code for the following example:

If you want to light an LED depending on a switch, the code would look like this:

```arduino
if (digitalRead(BUTTON_PIN) == HIGH) {
  digitalWrite(LED_PIN, HIGH);
}
```

The first line of code begins with an `if`. Within the following brackets, the condition to be tested is specified, in this case, if the button is pressed. If this condition is `true` (returns true), the code entered in the curly braces is executed.

As you may have noticed, the condition uses a comparison operator, namely a double equal sign (`==`). A common mistake is that only a single match is used. For the Arduino, however, a single equal sign is not "check if equal" but for "set left equal value right".

## Using else
With `else`, you can add an additional action to your if statement, which is alternatively executed if the condition is not true. So if you add an `else` to the above code, the whole sketch would look like this:

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

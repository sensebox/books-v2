# LED-Display {#head}

<div class="description">Dieser hochwertige OEL Display von Univision ist einer der neusten Komponenten zur senseBox. Es stehen 128 x 64 Pixel zum anzeigen von Werten, oder Statusmeldungen der senseBox zur Verfügung.</div>
<div class="line">
    <br>
    <br>
</div>

![Das OLED-Display](../../../../pictures/oled_top.png)

## Technische Details
   * Number of Pixels: 128 × 64
   * Panel Size: 26.70 × 19.26 × 1.45 (mm)
   * Active Area: 21.744 × 10.864 (mm)
   * Pixel Pitch: 0.17 × 0.17 (mm)
   * Pixel Size: 0.154 × 0.154 (mm)
   * Wieght: 1.54 (g)

## Zubehör
* JST to JST Kabel(300mm)

## Anschluss und Programmierung

Mit dem , in deiner senseBox beiliegenden, "JST to JST" Kabel kannst du das Display an einen I²C-Port deiner senseBoxMCU anschließen.
Ist dies erledigt können wir nun im Programmcode das Display initialisieren und unsere Messwerte live auf dem Display anzeigen!

<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher, dass du das aktuellste Board-Support-Package installiert hast, da du die korrekten Software-Bibliotheken benötigst. Wie das geht wurde dir in <a href ="../erste-schritte/board-support-packages-installieren.md">Schritt 2</a> erklärt!
</div>

Anfangs müssen einige neue Libraries einladen, damit das Display funktioniert.
```arduino
    #include <SPI.h>
    #include <Wire.h>
    #include <Adafruit_GFX.h>
    #include <Adafruit_SSD1306.h>
    #include <senseBoxIO.h>
    #include "SenseBoxMCU.h"
```
Ist dies passiert, deklarieren wir nun unsere Variablen für das Display.

```arduino
    #define OLED_RESET 4
    Adafruit_SSD1306 display(OLED_RESET);
```

{% collapse title="setup() Funktion" %}

In der `setup()`-Funktion soll das Display gestartet werden.
```arduino
void setup(){
    senseBoxIO.powerI2C(true);
    delay(2000);
    display.begin(SSD1306_SWITCHCAPVCC, 0x3D);
    display.display();
    delay(100);
    display.clearDisplay();
}
```
{% endcollapse %}

{% collapse title="loop() Funktion" %}
In der `loop()`-Funktion wird nun die Textfarbe, Schriftgröße und Wert den das Display anzeigen soll ausgegeben.

```arduino 
void loop(){
        display.setCursor(0,0);
        display.setTextSize(1); // Verändere Schriftgröße hier 
        display.setTextColor(WHITE,BLACK); // Verändere Schriftfarbe hier
        /* Gebe hier an was dein Display anzeigen soll! 
            Hier kannst du auch die Ergebnisse deiner Messwerte anzeigen lassen */
        display.println("senseBox rocks!");
        display.display();
}
```
{% endcollapse %}



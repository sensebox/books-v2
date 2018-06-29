# DIY - Experimente mit Licht {#head}

<div class="description">Wenn du fern siehst, das Radio anschaltest, mit deinem Smartphone eine Nachricht schreibst oder Essen in der Mikrowelle warm machst, nutzt du dabei elektromagnetische Energie.
Heutzutage sind alle Menschen ständig auf diese Energie angewiesen.
Ohne sie würde das Leben in modernen Städten völlig anders sein, als du es kennst.</div>
<div class="line">
    <br>
    <br>
</div>



## Vorraussetzungen
- [Die Verwendung von Software-Bibliotheken](../../erste-schritte/board-support-packages-installieren.md)
- [Der serielle Datenbus I²C](../../grundlagen/serielle_datenbus.md)
- [Der serielle Monitor](../../grundlagen/der_serielle_monitor.md)

## Ziele der Station
In dieser Station verwendest du einen Lichtsensor, um die Beleuchtungsstärke des sichtbaren Lichts in Lux zu erfassen.

##Materialien
- Lichtsensor `TSL 45315`

##Grundlagen

{% collapse title="Lichtintensität" %}
Elektromagnetische Energie bewegt sich in Wellen durch den Raum. Ihr Spektrum reicht von sehr langen Radiowellen bis hin zur sehr kurzwelligen Gammastrahlung. Das menschliche Auge kann dabei nur einen sehr kleinen Teil dieses Spektrums wahrnehmen: das sichtbare Licht. Unsere Sonne ist dabei die Quelle der Energie über das gesamte Spektrum hinweg. Die Atmosphäre der Erde schützt uns davor, einem zu hohen Maß an Strahlung ausgesetzt zu werden, die für uns lebensgefährlich werden könnte.

Für uns ist die Intensität des sichtbaren Lichts besonders interessant. Um die sog. Beleuchtungsstärke des einfallenden Lichts im sichtbaren Teil des Spektrums zu messen, wird die Einheit Lux verwendet. Sie gibt das Verhältnis der Helligkeit in Lumen pro Quadratmeter an. Bei einem hellen Sonnentag beträgt sie über 100.000 Lux, in einer Vollmondnacht hingegen nur etwa 1 Lux.
{% endcollapse %}

{% collapse title="TSL45315 Sensor" %}
Für diese Messung benutzen wir im Folgenden den Sensor TSL45315 von AMS-TAOS.
Im Datenblatt des Sensors sieht man, dass seine Empfindlichkeit auf den sichtbaren Teil des Lichtspektrums angeglichen ist, der ungefähr zwischen 400 und 700 nm liegt.
Laut dem Datenblatt hat dieser Sensor eine Reichweite von 2 bis 200.000 Lux, bei einer Auflösung von 3 Lux. Des Weiteren muss der Sensor mit 3,3V betrieben werden.

Der Sensor wird über das I²C Protokoll angesprochen. Wir sprechen ihn direkt mit den folgenden aus dem Datenblatt entnommenen Befehlen an:

![](../../pictures/diy-station/Grundlagen_Station_6.png)
{% endcollapse %}

##Aufbau

![Belichtungs- und UV-Sensor angeschlossen über I2C-Port](../../pictures/diy-station/wired_lux.jpg)

## Programmierung
<div class="box_warning">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Stelle sicher, dass du das aktuellste Board-Support-Package installiert hast, da du die korrekten Software-Bibliotheken benötigst. Wie das geht wurde dir in <a href ="../erste-schritte/board-support-packages-installieren.md">Schritt 2</a> erklärt!
</div>
Als erstes muss eine Instanz des Sensors angelegt werden.
```arduino
#include "SenseBoxMCU.h"
TSL45315 lux_sensor;
```

{% collapse title="setup() Funktion" %}
In der `setup()`-Funktion soll der Sensor nun gestartet werden: 

```arduino
lux_sensor.begin();
```

{% endcollapse %}

{% collapse title="loop() Funktion" %}
In der `loop()`-Funktion können wir mit dem Befehl 'getIlluminance()' die aktuelle gemessene Lichtintensität abrufen:

```arduino
lux_sensor.getIlluminance();
```
{% endcollapse %}

## Aufgaben

{% collapse title="Aufgabe 1" %}
Füge den Code aus dieser Lektion zusammen und ergänze eine Funktion um die Daten im Seriellen Monitor ausgeben zu lassen.
{% endcollapse %}

{% collapse title="Aufgabe 2" %}
Versucht abhängig von der Beleuchtung eine LED an und auszuschalten. Hierfür kann das Kapitel [if/else - Bedingung](/../../grundlagen/if_else_bedingung.md) hilfreich sein.
{% endcollapse %}


#Datenupload {#head}
Wenn wir unsere Wetterstation aufgebaut haben, wäre es doch schön die gewonnenen Daten immer von jedem Ort aus abrufen zu können.
Dazu gibt es die [openSenseMap](https://openSenseMap.org/) (OSeM), welche diverse Sensordaten online sammelt und auf einer Karte darstellt.
Über den Ethernet- oder WiFi-Bee oder können wir unsere senseBox ans Internet anbinden und die Daten zur OSeM hochladen.

<div class="description"></div>
<div class="line">
    <br>
    <br>
</div>


## Voraussetzungen
- [Die Verwendung von Software-Bibliotheken](../../erste-schritte/schritt-1-software-installation.md)
- [**Bees**](../../grundlagen/shields.md):
    Lese dieses Kapitel um zu erfahren, wie der Arduino mit Shields um eine Netzwerkverbindung erweitert werden kann.
- [**openSenseMap Upload**](../../grundlagen/datenupload.md):
    In diesem Kapitel erfährst du, wie du deine senseBox in die openSenseMap einbinden kannst.

## Ziele der Station
In dieser Station wird beispielhaft die Integration eines Sensors in die openSenseMap gezeigt, sodass die gewonnenen Daten online verfügbar sind.

## Materialien
* Ethernet-Shield bzw WiFi-Bee (je nach Variante)
* evtl. Netzwerk-Kabel
* Mindestens einen (beliebigen) Sensor

## Aufgaben
<!--sec data-title="Aufgabe 1" data-id="aufg1" data-collapse=true ces-->
Mache dich mit der openSenseMap vertraut (siehe Vorraussetzungen), und registriere dort deine senseBox mit den Sensoren, welche du bisher angeschlossen hast.
<!-- endsec -->

<!--sec data-title="Aufgabe 2" data-id="aufg2" data-collapse=true ces-->
In dem Arduino-Sketch, den du bei der Registrierung in Aufgabe 1 erhalten hast, fehlt noch das Auslesen von Sensoren.
Erweitere den Sketch von der OSeM-Registrierung sodass deine angeschlossenen Sensoren ausgelesen werden.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Folge der Anleitung im <a href="../../grundlagen/digitale_signale.html">Grundlagenkapitel</a>. Du kannst deinen bisherigen Code überwiegend wiederverwenden!<
</div>

<!-- endsec -->

<!--sec data-title="Aufgabe 3" data-id="aufg3" data-collapse=true ces-->
Erweitere den Sketch aus Aufgabe 2, sodass die Sensordaten zur openSenseMap hochgeladen werden.

<!-- endsec -->
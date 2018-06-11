# Der serielle Datenbus {#head}

<div class="description">Der Arduino kann über einen Datenbus mit anderen Geräten kommunizieren.
Ein Datenbus beschreibt ein System, über das zwei oder mehr Geräte Daten auf eine geordnete Art und Weise austauschen können.
Bei unserem Arduino wäre das zweite Gerät fast immer ein Sensor, bzw ein Aktor.</div>
<div class="line">
    <br>
    <br>
</div>



## Der I²C-Bus
Der I²C-Bus ist ein einfach zu verwendender Datenbus um Daten zu übermitteln.
Hierbei werden die Daten zwischen dem Arduino und dem anderen Gerät durch zwei Kabel übertragen, die als `SDA` und `SCL` bezeichnet werden.
Die als `SDA` (serial data) bezeichnete Leitung ist die Datenleitung, über welche die eigentlichen Daten übermittelt werden.
Die `SCL` (serial clock) Leitung wird auch Taktleitung genannt und gibt die Taktfrequenz vor.
Am Arduino findest du die beiden Anschlüsse als `A4` (SDA) und `A5` (SDC).

Wenn mehrere I²C Geräte an den Arduino angeschlossen werden sollen, wird dies über eine Reihenschaltung umgesetzt.
Das SDA Kabel am ersten Sensor würde also auf der selben Reihe des Breadboards zum nächsten Sensor verlängert:

![senseBox MCU mit Breadboard](../pictures/mcu%20v2%20top.png)

Benutzt man den I²C-Bus auf dem Arduino, gilt der Arduino immer als Master-Gerät und alle anderen Geräte am Bus als Slave.
Jeder Slave hat seine eigene Adresse in Form einer Hexadezimalzahl, mit welcher er eindeutig angesprochen werden kann.
Für gewöhnlich bringt jedes Gerät einen Bereich von Busadressen mit, welche man verwenden kann. Die jeweiligen Adressen können im Datenblatt des Herstellers nachgeschaut werden.

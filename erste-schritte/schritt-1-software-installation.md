# Schritt 1: Software Installation

## Treiber und Softwareinstallation {#treiber-und-softwareinstallation}

Bevor die senseBox aktiviert werden kann, musst du Treiber sowie eine Software auf deinem Computer installieren. Außerdem ist es vor Inbetriebnahme der senseBox ratsam einen Testlauf durchzuführen, um zu überprüfen ob die Sensoren korrekt funktionieren und die Kommunikation mit dem Internet reibungslos läuft.

Falls etwas bei dem Testlauf schief geht, melde dich am besten [per Mail](https://home.books.sensebox.de/de/software_installation.html#) bei unserem Support.

{% tabs %}
{% tab title="Windows-Installation" %}
### Arduino Software herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.3 oder höher nutzen.

Das Mainboard der senseBox ist eine modifizierte Version des Arduino Uno Mikrocontrollers. Um ein Programm auf das Board zu laden, brauchst du die integrierte Entwicklungsumgebung von Arduino, kurz _Arduino IDE_. Lade die neueste Version als zip-Datei von der [Arduino Homepage](https://www.arduino.cc/en/main/software) herunter:

![](https://github.com/bkari02/senseBooksv2/blob/master/erste-schritte/arduino-windows-view.png)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen indem du auf „just download“ klickst.

![](https://github.com/bkari02/senseBooksv2/blob/master/erste-schritte/arduino-just-download.png)

Lege auf deiner Festplatte einen neuen Ordner an und entpacke darin die Zip-Datei. Durch starten der Datei `arduino.exe` kann die IDE gestartet werden.  
{% endtab %}

{% tab title="OSX\(Mac\)-Installation" %}
### Arduino Software herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.3 oder höher nutzen.

Das Mainboard der senseBox ist eine modifizierte Version des Arduino Uno Mikrocontrollers. Um ein Programm auf das Board zu laden, brauchst du die integrierte Entwicklungsumgebung von Arduino, kurz _Arduino IDE_. Lade die neueste Version als zip-Datei von der [Arduino Homepage](https://www.arduino.cc/en/main/software) herunter:

![](https://github.com/bkari02/senseBooksv2/blob/master/erste-schritte/arduino-mac-view.png)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen indem du auf „just download“ klickst.

![](https://github.com/bkari02/senseBooksv2/blob/master/erste-schritte/arduino-just-download.png)

Lege auf deiner Festplatte einen neuen Ordner an und entpacke darin die Zip-Datei. Durch starten der Datei `arduino.exe` kann die IDE gestartet werden.  
{% endtab %}

{% tab title="Linux-Installation" %}
### Arduino Software herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.3 oder höher nutzen.

Das Mainboard der senseBox ist eine modifizierte Version des Arduino Uno Mikrocontrollers. Um ein Programm auf das Board zu laden, brauchst du die integrierte Entwicklungsumgebung von Arduino, kurz _Arduino IDE_. Lade die neueste Version als zip-Datei von der [Arduino Homepage](https://www.arduino.cc/en/main/software) herunter:

![](https://github.com/bkari02/senseBooksv2/blob/master/erste-schritte/arduino-linux-view.png)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen indem du auf „just download“ klickst.

![](https://github.com/bkari02/senseBooksv2/blob/master/erste-schritte/arduino-just-download.png)
### Installation der IDE unter Linux {#installation-der-ide-unter-linux}

Linux-Nutzer können die Linuxvariante herunterladen und entpacken. Das enthaltene `install.sh`-Skript legt automatisch eine Desktopverknüpfung an. Am schnellsten geht dies über die folgenden Terminal-Befehle:

```text
tar -xvf arduino-1.8.3-linux64.tar.xz
cd arduino-1.8.3
./install.sh
```

Um den Arduino programmieren zu können, sind unter Ubuntu 14 & 16 zusätzliche Rechte notwendig. Diese können für den aktuellen Nutzer mit den folgenden Befehlen eingerichtet werden \(benötigt Admin-Rechte\): Führe `udevadm monitor --udev` aus und schließe den Arduino per USB an, um die Device-ID zu bestimmen. Der angegebene Bezeichnung am Ende der Ausgabe \(zB. `ttyUSB0`\) ist die Device-ID. Beende `udevadm` per `ctrl+C`, und führe noch die folgenden Befehle aus, wobei die herausgefundene Device-ID eingesetzt werden muss:

```text
sudo usermod -a -G dialout $(whoami)
sudo chmod a+rw /dev/<device-id>
```

Nach einem Logout und erneutem Login sollte der Arduino aus der Arduino IDE programmierbar sein!
{% endtab %}
{% endtabs %}

### 



# Schritt 1: Software Installation {#head}
 <div class="description">Bevor du mit dem Messen von Phänomenen starten kannst, musst du noch ein paar Dinge beachten. Dazu gehört die Installation von verschiedenen Treibern und Software. Keine Sorge, es handelt sich um Open-Source-Software, du zahlst also nichts dafür. Du solltest dir die Schritte 1 bis 8 allerdings genau anschauen, damit später keine Probleme auftreten. </div>
<div class="line">
    <br>
    <br>
</div>

## Arduino IDE installieren

Bevor die senseBox aktiviert werden kann, musst du Treiber sowie eine Software auf deinem Computer installieren. Außerdem ist es vor Inbetriebnahme der senseBox ratsam einen Testlauf durchzuführen, um zu überprüfen ob die Sensoren korrekt funktionieren und die Kommunikation mit dem Internet reibungslos läuft.

Schau dir die Anleitung für dein Betriebsystem an und folge den angegebenen Schritten.

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Arduino Software für Windows herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.7.

Die senseBox ist ein Microcontroller mit verschiedenen Komponenten und Sensoren. Sie wird über die Entwicklungsumgebung _Arduino IDE_ programmiert. Lade die Version 1.8.7 von der [Arduino Homepage](https://www.arduino.cc/en/Main/OldSoftwareReleases#previous) herunter:


![ ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/software-install/arduino-view.png)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen, indem du auf `JUST DOWNLOAD` klickst.

![ ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/software-install/arduino-install-view.png)

<div class="box_warning">
 	<i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
 	Lade bitte die ZIP Datei herunter und <b> nicht </b> den Windows-Installer um mögliche Probleme 
     zu vermeiden !
</div>

Lege auf deiner Festplatte einen neuen Ordner an und entpacke darin die zip-Datei. Durch das Starten der Datei `arduino.exe` kann die IDE gestartet werden.  

{% content "second" %} 

### Arduino Software für Mac(OSX) herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.7 nutzen.

Die senseBox ist ein Microcontroller mit verschiedenen Komponenten und Sensoren. Sie wird über die Entwicklungsumgebung _Arduino IDE_ programmiert.  Lade die Version 1.8.7 von der [Arduino Homepage](https://www.arduino.cc/en/Main/OldSoftwareReleases#previous) herunter:

![ ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/software-install/arduino-view.png)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen, indem du auf `JUST DOWNLOAD` klickst.

![ ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/software-install/arduino-install-view.png)

In deinem Downloads-Ordner sollte eine Arduino.app Datei erscheinen. Verschiebe diese Datei in deinen "Programme"-Ordner. Durch starten der Datei `Arduino.app` kann die IDE gestartet werden. 


{% content "third" %}

### Arduino Software für Linux herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.7 nutzen.

Die senseBox ist ein Microcontroller mit verschiedenen Komponenten und Sensoren. Sie wird über die Entwicklungsumgebung _Arduino IDE_ programmiert.  Lade die Version 1.8.7 von der [Arduino Homepage](https://www.arduino.cc/en/Main/OldSoftwareReleases#previous) herunter:

![ ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/software-install/arduino-view.png)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen, indem du auf `JUST DOWNLOAD` klickst.

![ ](https://github.com/sensebox/resources/raw/master/gitbook_pictures/software-install/arduino-install-view.png)
### Installation der IDE unter Linux {#installation-der-ide-unter-linux}

Linux-Nutzer können die Linuxvariante herunterladen und entpacken. Das enthaltene `install.sh`-Skript legt automatisch eine Desktopverknüpfung an. Am schnellsten geht dies über den Terminal. Öffne dazu den Terminal in dem du die Tasten `Ctrl + Alt + T` drückst und gib dort die folgenden Befehle ein:

```text
# sollte die heruntergeladene Datei nicht im Downloads-Ordner abgespeichert sein, ersetze "Downloads" durch den Pfad zum entsprechenden Ordner
cd Downloads 
```

```text
# entpacke die Datei mit folgendem Befehl und installiere Arduino
tar -xvf arduino-1.8.7-linux64.tar.xz
cd arduino-1.8.7
./install.sh
```
Um den Arduino programmieren zu können, sind unter Ubuntu 14 & 16 zusätzliche Rechte notwendig. Diese können für den aktuellen Nutzer mit den folgenden Befehlen eingerichtet werden \(benötigt Admin-Rechte\):

Führe `udevadm monitor --udev` aus und schließe den Arduino per USB an, um die Device-ID zu bestimmen. Der angegebene Bezeichnung am Ende der Ausgabe \(zB. `ttyUSB0`\) ist die Device-ID. Beende `udevadm` per `ctrl+C`, und führe noch die folgenden Befehle aus, wobei die herausgefundene Device-ID eingesetzt werden muss:

```text
sudo usermod -a -G dialout $(whoami)
sudo chmod a+rw /dev/<device-id>
```

Nach einem Logout und erneutem Login sollte der Arduino aus der Arduino IDE programmierbar sein!

{% endtabs %}



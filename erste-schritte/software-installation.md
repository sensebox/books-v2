
# Schritt 1: Software Installation {#head}
 <div class="description">Bevor du mit dem Messen von Phänomenen starten kannst musst du noch ein paar Dinge beachten, dazu gehört die Installation von verschiedenen Treibern und Software. Keine Sorge es handelt sich um Open-Source-Software, du zahlst also nichts dafür. Du solltest dir die Schritte 1 bis 5 allerdings genau anschauen, damit später keine Probleme auftreten. </div>
<div class="line">
    <br>
    <br>
</div>

## Arduino IDE installieren

Die senseBoxMCU ist eine 

Bevor die senseBox aktiviert werden kann, musst du Treiber sowie eine Software auf deinem Computer installieren. Außerdem ist es vor Inbetriebnahme der senseBox ratsam einen Testlauf durchzuführen, um zu überprüfen ob die Sensoren korrekt funktionieren und die Kommunikation mit dem Internet reibungslos läuft.

Falls etwas bei dem Testlauf schief geht, schau zuerst in unser Forum ob jemand schon ähnliche Probleme gehabt hat. Falls du auch dort keine Lösung findest melde dich am besten per Mail bei unserem Support.

Schau dir die Anleitung für dein Betriebsystem an und folge den angegebenen Schritten.

{% tabs first="Windows", second="Mac(OSX)", third="Linux" %}
{% content "first" %}
### Arduino Software für Windows herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.3 oder höher nutzen.

Das Mainboard der senseBox ist eine modifizierte Version des Arduino Uno Mikrocontrollers. Um ein Programm auf das Board zu laden, brauchst du die integrierte Entwicklungsumgebung von Arduino, kurz _Arduino IDE_. Lade die neueste Version als zip-Datei von der [Arduino Homepage](https://www.arduino.cc/en/main/software) herunter:

![](https://github.com/sensebox/books-v2/blob/edu/pictures/software-install/arduino-windows-view.png?raw=true)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen indem du auf „just download“ klickst.

![](https://github.com/sensebox/books-v2/blob/edu/pictures/software-install/arduino-just-download.png?raw=true)

Lege auf deiner Festplatte einen neuen Ordner an und entpacke darin die Zip-Datei. Durch starten der Datei `arduino.exe` kann die IDE gestartet werden.  
__________

{% content "second" %}

### Arduino Software für Mac(OSX) herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.3 oder höher nutzen.

Das Mainboard der senseBox ist eine modifizierte Version des Arduino Uno Mikrocontrollers. Um ein Programm auf das Board zu laden, brauchst du die integrierte Entwicklungsumgebung von Arduino, kurz _Arduino IDE_. Lade die neueste Version von der [Arduino Homepage](https://www.arduino.cc/en/main/software) herunter:

![](https://github.com/sensebox/books-v2/blob/edu/pictures/software-install/arduino-mac-view.png?raw=true)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen indem du auf „just download“ klickst.

![](https://github.com/sensebox/books-v2/blob/edu/pictures/software-install/arduino-just-download.png?raw=true)

In deinem Downloads-Ordner sollte eine Arduino.app Datei erscheinen. Verschiebe diese Datei in deinen "Programme"-Ordner. Durch starten der Datei `Arduino.app` kann die IDE gestartet werden. 
___________________


{% content "third" %}

### Arduino Software für Linux herunterladen

> Für einen reibungslosen Ablauf bitte Arduino 1.8.5 oder höher nutzen.

Das Mainboard der senseBox ist eine modifizierte Version des Arduino Uno Mikrocontrollers. Um ein Programm auf das Board zu laden, brauchst du die integrierte Entwicklungsumgebung von Arduino, kurz _Arduino IDE_. Lade die neueste Version von der [Arduino Homepage](https://www.arduino.cc/en/main/software) herunter:

![](https://github.com/sensebox/books-v2/blob/edu/pictures/software-install/arduino-linux-view.png?raw=true)

Arduino ist ein Open-Source Projekt und wird durch Spenden finanziert. Daher wirst du vor dem Download nach einer Spende gefragt; das kannst du überspringen indem du auf „just download“ klickst.

![](https://github.com/sensebox/books-v2/blob/edu/pictures/software-install/arduino-just-download.png?raw=true)
### Installation der IDE unter Linux {#installation-der-ide-unter-linux}

Linux-Nutzer können die Linuxvariante herunterladen und entpacken. Das enthaltene `install.sh`-Skript legt automatisch eine Desktopverknüpfung an. Am schnellsten geht dies über den Terminal. Öffne dazu den Terminal in dem du die Tasten `Ctrl + Alt + T` drückst und gib dort die folgenden Befehle ein:

```text
# sollte die heruntergeladene Datei nicht im Downloads-Ordner abgespeichert sein, ersetze "Downloads" durch den Pfad zum entsprechenden Ordner
cd Downloads 
```

```text
# entpacke die Datei mit folgendem Befehl und installiere Arduino
tar -xvf arduino-1.8.5-linux64.tar.xz
cd arduino-1.8.5
./install.sh
```
<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Achte darauf, dass der Befehl auf die heruntergeladene Arduinoversion abgestimmt ist! Lädst du z.B. Arduino 1.8.6 muss auch überall wo arduino-1.8.5 steht arduino-1.8.6 stehen. Um zu überprüfen welche Version du heruntergeladen hast, schau dir den Namen der Download-Datei an.
</div>

Um den Arduino programmieren zu können, sind unter Ubuntu 14 & 16 zusätzliche Rechte notwendig. Diese können für den aktuellen Nutzer mit den folgenden Befehlen eingerichtet werden \(benötigt Admin-Rechte\):

Führe `udevadm monitor --udev` aus und schließe den Arduino per USB an, um die Device-ID zu bestimmen. Der angegebene Bezeichnung am Ende der Ausgabe \(zB. `ttyUSB0`\) ist die Device-ID. Beende `udevadm` per `ctrl+C`, und führe noch die folgenden Befehle aus, wobei die herausgefundene Device-ID eingesetzt werden muss:

```text
sudo usermod -a -G dialout $(whoami)
sudo chmod a+rw /dev/<device-id>
```

Nach einem Logout und erneutem Login sollte der Arduino aus der Arduino IDE programmierbar sein!
___________

{% endtabs %}



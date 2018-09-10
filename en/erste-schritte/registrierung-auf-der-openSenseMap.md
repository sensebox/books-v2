# Step 6: Registration on the openSenseMap {#head}
<div class="description">In order to transfer the measured data to the openSenseMap, you must first register there and create a new senseBox. How to do that you will find out in the following section</div>

<div class="line">
    <br>
    <br>
</div>

{% collapse title="What is the openSenseMap?" %}

The openSenseMap is a project to file, compare and visualise sensordata. Take a look at it by clickin on [www.opensensemap.org](https://www.opensensemap.org) and discover a vast data pool of sensordata from around the world. Not only senseBoxes send data to the openSenseMap but also other microcontroller with sensors. You can [here](https://sensebox.github.io/books-v2/osem) see how the individual functions of openSenseMap and their interfaces work.


{% endcollapse %}

## 1. Useraccount Registration
Please go to www.opensensemap.org and create an account. To do this, click on "Login" in the top right corner and then go to "Sign up". You need a valid e-mail address to register. After successful registration you will receive an e-mail with a confirmation link. Please click the link to complete the registration.
![Account anlegen](../pictures/Sing_up.PNG)

## 2. Set up a new sensBox
After successful registration you can start creating your senseBox. Click on "New senseBox / New senseBox" in your menu and confirm the terms of use. Follow the instructions of the registration and provide the following data:

* A freely selectable name of the senseBox
* The exposure, in which you want to set up your senseBox 
* The location, where you want to set up your senseBox (you can also have your location determined automatically)

Since the openSenseMap is open to all types of senseBoxes, you will be asked about the hardware used. Select * senseBox: home V2 * and the bee you use (WiFi, or Ethernet)

![Selection of senseBox:home V2 MCU and WiFi Internetconnection](../pictures/Select_hardware.PNG)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  You are not sure if you have an ethernet or a wifi-bee, or you can not see the difference between the airpressure and temperaturesensor? In the chapter <a href = "../komponenten/README.md">Komponenten</a> you are going to find pictures and further hintsfindest du Bilder und weitere Hinweise zu den einzelnen Bauteilen.
</div>

Jetzt hast du es fast geschafft! Noch schnell die Sensoren auswählen, welche du an deine senseBox anschließen wirst. Einfach anklicken und fertig. Falls du einen Feinstaubsensor installieren möchtest, musst du außerdem noch angeben, an welchen Serial-Port du diesen anschließen willst. Danach kannst du den Vorgang abschließen.

{% collapse title="Warum muss ich den Feinstaub-Sensor an einen Serial-Port anschließen?" %}

Hier sollte eine Erklärung stehen. 

{% endcollapse %}

## 3. Summary der Registrierung und Mail erhalten
Wenn du die Registrierung abgeschlossen hast, musst du noch einmal der Veröffentlichung deiner Daten zustimmen. Danach erhälst du eine Summary deiner Registrierung. Dort wird dir deine senseBox ID, deine Sensoren-IDs und der Arduino Code angezeigt (diesen bekommst du zudem noch einmal per E-Mail zugeschickt). 

![Summary der Registrierung. Hier siehst du die IDs deiner senseBox und deiner Sensoren!](../pictures/summary.PNG)

{% collapse title="Was ist meine senseBox ID" %}

Die senseBox ID ist ein eindeutiger Identifikator deiner senseBox. Damit kannst du deine senseBox z.B. über die URL finden (opensensemap.org/explore/HIER-DEINE-SENSEBOX-ID-EINGEBEN) oder in Datensätzen aufspüren. Des Weiteren wird sie für verschiedene Applications und Funktionen rund um die senseBox und die openSenseMap verwendet.

{% endcollapse %}

## Arduino-Code auf die senseBox laden
Nachdem du den ```.ino``` Anhang der Email heruntergeladen hast, muss dieses Programm auf deine senseBox geladen werden. Dafür musst du natürlich die Arduino IDE (wie in Schritt 1 erklärt) auf deinem Computer heruntergeladen haben. In Kurzfassung kannst du danach folgende Schritte befolgen:

{% tabs first="WiFi-Bee", second="Ethernet-Bee", third="LoRa-Bee" %}
{% content "first" %}

### WiFi-Bee

* Arduino Anwendung öffnen
* In der Menüleiste ``Datei`` → ``Öffnen`` auswählen und die ``sensebox.ino`` Datei auswählen
* Im Dialogfeld wird gefragt, ob die Datei verschoben werden darf. Dieses mit "Ja" oder "Ok" bestätigen.
* Jetzt musst du dein WiFi-Netzwerk und dein Passwort für das Netzwerk zwischen die ``""`` eingeben. Achte darauf, keine Leerzeichen zwischen den ``"`` und den Buchstaben deines Passworts zu haben.  
* Jetzt kannst du as Programm über das Pfeil Icon auf den Mikrocontroller laden.
* Warten bis das Programm übertragen wurde
__________

{% content "second" %}

### Ethernet-Bee

* Arduino Anwendung öffnen
* In der Menüleiste ``Datei`` → ``Öffnen`` auswählen und die ``sensebox.ino`` Datei auswählen
* Im Dialogfeld wird gefragt ob die Datei verschoben werden darf. Dieses mit "Ja" oder "Ok" bestätigen.
* Jetzt musst du dein WiFi-Netzwerk und dein Passwort für das Netzwerk zwischen die ``""`` eingeben. Achte darauf, keine Leerzeichen zwischen den ``"`` und den Buchstaben deines Passworts zu haben.  
* Jetzt kannst du as Programm über das Pfeil Icon auf den Mikrocontroller laden.
* Warten bis das Programm übertragen wurde
___________________


{% content "third" %}

### LoRa-Bee

Leider sind wir bisher noch nicht dazu gekommen eine Anleitung für das LoRa-Bee zu schreiben. Wenn du Lust hast dies zu übernehmen, schicke uns gerne eine Mail an info@sensebox.de
___________

{% endtabs %}

Wenn alles richtig gelaufen ist, kannst du nun auf der openSenseMap deine Station auswählen und verfolgen, wie Messungen kontinuierlich übertragen werden!

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Du kannst dich nicht mehr daran erinnern, wie du den Code von Arduino auf die senseBox überträgst? Schau nochmal in <a href="../erste-schritte/software-installation.html">Schritt 1</a> und <a href="../erste-schritte/komponenten-testen.html">Schritt 5</a> nach, dort wird die Installation und die Übertragung der Tests erklärt. Falls du weitere Fragen hast, nutze unser <a href="https://forum.sensebox.de/">Forum</a>, um dich zu informieren oder gegebenenfalls einen eigenen Beitrag zu erstellen. </div>


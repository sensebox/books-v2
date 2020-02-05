# Schritt 5: Registrierung auf der openSenseMap {#head}
<div class="description">Um die gemessenen Daten auf die openSenseMap zu übertragen, musst du dich dort zuerst registrieren und eine neue senseBox anlegen. Wie das geht, erfährst du im folgenden Abschnitt.</div>

<div class="line">
    <br>
    <br>
</div>

{% collapse title="Was ist die openSenseMap?" %}

Die openSenseMap ist ein Projekt um Sensordaten zu speichern, zu vergleichen und zu visualisieren. Schau sie dir doch am besten mal an. Gehe auf [www.opensensemap.org](https://www.opensensemap.org) und entdecke einen riesigen Pool an Sensordaten aus der ganzen Welt. Nicht nur senseBoxen senden Daten an die openSenseMap, sondern auch andere Microcontroller mit Sensoren. Wie die einzelnen Funktionen der openSenseMap und ihre Schnittstellen funktionieren findest du [hier](https://sensebox.github.io/books-v2/osem).

{% endcollapse %}

## 1. Nutzeraccount Registrierung
Gehe auf [www.opensensemap.org](https://www.opensensemap.org) und lege dir einen Account an. Dafür klickst du rechts oben in der Ecke auf "Login" und gehst dann auf "Sign up". Du brauchst eine gültige E-Mail-Adresse zum Registrieren. Nach erfolgreicher Registrierung erhältst du eine E-Mail mit einem Bestätigungslink. Bitte klicke den Link um die Registrierung abzuschließen. 

![Account anlegen](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Sing_up.PNG)

## 2. Eine neue senseBox anlegen
Nach der erfolgreichen Registrierung kannst du damit beginnen deine senseBox anzulegen. Dafür klicke auf "New senseBox / Neue senseBox" in deinem Menü und bestätige die Nutzungsbedingungen. Befolge danach die Anweisungen der Registrierung und gebe folgende Daten an:

* Einen frei wählbaren Namen der senseBox
* Die Umgebung (Exposure), in der du deine senseBox aufstellen möchtest
* Den Ort (Location), an dem du deine senseBox aufstellen möchtest (du kannst deinen Standort auch automatisch bestimmen lassen)

Da die openSenseMap offen für alle Arten von senseBoxen ist, wirst du nach der verwendeten Hardware gefragt. Wähle *senseBox:home V2* und den Bee den du verwendest (WiFi, oder Ethernet)

![Auswahl von senseBox:home V2 MCU und WiFi Internetverbindung](https://github.com/sensebox/resources/raw/master/gitbook_pictures/Select_hardware.PNG)

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Du bist dir nicht sicher ob du ein Ethernet oder WiFi-Bee hast, oder kannst den Unterschied zwischen dem Luftdruck und Temperatursensor nicht erkennen? Im Kapitel <a href = "../komponenten/README.md">Komponenten</a> findest du Bilder und weitere Hinweise zu den einzelnen Bauteilen.
</div>

{% collapse title="Verbindung über LoRa" %}

Möchtest du deine Daten über LoRa an die openSenseMap schicken wählst du bei "Verbindungsart" LoRa aus. Anschließend kannst du im Reiter "Erweitert" deine Lora Einstellungen angeben. Hier musst du die Application-ID und Device-ID angeben, welche du beim [TheThingsNetwork](https://www.thethingsnetwork.org) angegeben hast. 
![LoRa Konfigurationen](https://github.com/sensebox/resources/raw/master/gitbook_pictures/LoRaOSEM.PNG)

{% endcollapse %}

Jetzt hast du es fast geschafft! Noch schnell die Sensoren auswählen, welche du an deine senseBox anschließen wirst. Einfach anklicken und fertig. Falls du einen Feinstaubsensor installieren möchtest, musst du außerdem noch angeben, an welchen Serial-Port du diesen anschließen willst. Danach kannst du den Vorgang abschließen.

## 3. Summary der Registrierung und Mail erhalten
Wenn du die Registrierung abgeschlossen hast, musst du noch einmal der Veröffentlichung deiner Daten zustimmen. Danach erhälst du eine Summary deiner Registrierung. Dort wird dir deine senseBox ID, deine Sensoren-IDs und der Arduino Code angezeigt (diesen bekommst du zudem noch einmal per E-Mail zugeschickt). 

![Summary der Registrierung. Hier siehst du die IDs deiner senseBox und deiner Sensoren!](https://github.com/sensebox/resources/raw/master/gitbook_pictures/summary.PNG)

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

* Arduino Anwendung öffnen
* In der Menüleiste ``Datei`` → ``Öffnen`` auswählen und die ``senseBox.ino`` Datei auswählen
* Im Dialogfeld wird gefragt ob die Datei verschoben werden darf. Dieses mit "Ja" oder "Ok" bestätigen.
* Jetzt kannst du as Programm über das Pfeil Icon auf den Mikrocontroller laden.
* Warten bis das Programm übertragen wurde
___________

{% endtabs %}

Wenn alles richtig gelaufen ist, kannst du nun auf der openSenseMap deine Station auswählen und verfolgen, wie Messungen kontinuierlich übertragen werden!

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Du kannst dich nicht mehr daran erinnern, wie du den Code von Arduino auf die senseBox überträgst? Schau nochmal in <a href="../erste-schritte/software-installation.html">Schritt 1</a> und <a href="../erste-schritte/komponenten-testen.html">Schritt 4</a> nach, dort wird die Installation und die Übertragung der Tests erklärt. Falls du weitere Fragen hast, nutze unser <a href="https://forum.sensebox.de/">Forum</a>, um dich zu informieren oder gegebenenfalls einen eigenen Beitrag zu erstellen. </div>


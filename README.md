# Das senseBox:home Buch {#head}
<div class="description">Dein Weg zur eigenen Umweltmessstation, vom Aufbau bis zur Programmierung.</div>

<div class="line">
    <br>
    <br>
</div>



## Über dieses Buch:

Dieses Buch begleitet dich auf deinem Weg zur eigenen Umweltmessstation, vom Aufbau bis zur Übertragung des Programm-Codes. Du lernst so eine Menge darüber wie deine Station funktioniert und wo deine Daten herkommen.

Damit du ohne weiteres starten kannst, lies dir einmal kurz aber gründlich die Einleitung durch. Sie hilft dir das Buch besser zu verstehen und gibt dir Einsicht in das, was dich erwartet.

## Einleitung
Das senseBox:home Buch ist ein Buch für Besitzer der senseBox:home, aber auch für alle Interessierten. Also für alle die sich nicht nur einfach eine Wetterstation kaufen und aufhängen wollen, sondern für jene, die verstehen wollen wie so eine Station funktioniert und was nötig ist um Daten zu generieren. Mit der senseBox:home lernst du nicht nur mehr über deine Wetterstation, du kannst sie auch erweitern und eine umfangreiche Umweltmessstation aus ihr bauen, die nicht nur Temperatur und Luftfeuchte misst, sondern mit den passenden Sensoren auch Feinstaub oder UV-Strahlung messen kann. Diese Daten kannst du auf die [openSenseMap](https://opensensemap.org/) übertragen, um sie mit vielen anderen Menschen in einem Pool aus Open-Data zu teilen oder, um dir deine Datenhistorie einfach anschauen zu können. Deine senseBox:home kannst du dir selber zusammenstellen aus einem Basis-Setup und einer Auswahl von Sensoren, Übertragungsmodulen und weiterem Zubehör. Sie kann Zuhause, am Arbeitsplatz oder an einem anderen Ort deiner Wahl aufgestellt werden.

Dieses Buch hilft dir bei den [Ersten Schritten](erste-schritte/software-installation.md) mit deiner senseBox:home, unterstützt dich beim Aufbau deiner Station und erklärt dir die einzelnen Komponenten der senseBox. Du solltest mit den ersten Schritten starten, um dich an die senseBox heranzutasten, bevor Du deine senseBox zusammenbaust.

Auf dem Weg durch das Buch wirst Du dich mithilfe der Seitenleiste links oder mit den grünen Pfeiltasten auf den Seiten durch die Anleitungen klicken.
Jede Seite hat eine überschrift und darunter eine grau hinterlegte Box mit grüner Schrift in der eine kleine Beschreibung der Seite verfasst wurde. Das ganze sieht in etwa so aus:

#Überschrift
<div class="description">
Hier steht eine kleine Beschreibung von dem was dich erwartet auf dieser Seite.
</div>
<div class="line">
    <br>
</div>
<br>
Außerdem werden dir mit Sicherheit einige unserer vier verschiedenen Arten von Hinweis-Boxen begegnen. Hier siehst du wofür die Boxen stehen und was sie dir vermitteln:

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
    Diese Box ziegt dir Info-Hinweise. Zum Beispiel Links zu weiteren Informationsquellen oder weiteres Hintergundwissen.</div>

<div class="box_success">
    <i class="fa fa-check fa-fw" aria-hidden="true" style="color: #50af51;"></i>
   Diese Hinweis-Box ist eine Art Checkliste. In ihr stehen zusammenfassend Sachen die du im Laufe der Seite erledigt hast. An ihr kannst du abschließend abhaken, ob du keinen wichtigen Zwischenschritt vergessen hast. 
</div>

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Dies ist ein Warn-Hinweis! Er weist dich auf potentielle Fehlerquellen hin oder zeigt dir Stellen an denen du besonders vorsichtig arbeiten musst oder besonders genau hinschauen solltest!
</div>

<div class="box_error">
    <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    Diese Box weist dich auf Fehler hin. Sie zeigt dir z.B. was du machen kannst um einen bereits geschehenen Fehler zu korriegieren. 
</div>

Weiterhin gibt es einige Absätze die dir nicht direkt angezeigt werden, sie enthalten Inforamtionen über weitergehende Themen oder Aufgaben und Beispiele. Um Dir eine Übersicht zu schaffen sind sie eingeklappt. Möchtest du den Inhalt sehen klicke einfach auf die Überschrift des Absatzes. Du erkennst eingeklappte Absätze an der grauen Box mit grüner Schrift, ähnlich wie bei der Box unter der Überschrift der Seite. Zusätzlich befindet sich ein kleiner grüner Pfeil der dir vermittelt ob der Absatz ein- oder ausgeklappt ist. Schau dir hier doch einfach mal so einen versteckten Absatz an:

{% collapse title="Ein versteckter Absatz" %}
 Super, du hast alles richtig verstanden! Klicke noch einmal auf die grüne Überschrift des Absatzes und ich verschwinde wieder!   
{% endcollapse %}

Als letztes wichtiges Element, dass du kennen solltest bevor Du mit diesem Buch durchstarten kannst haben wir sogenannte "Tabs". Du kennst sie vermutlich aus deinem Internet-Browser und wenn Du dich aktuell im Internet befindet hast du auch bestimmt mehrere Tabs geöffnet. Wir haben ähnlich wie im Browser auch Tabs, diese sind allerdings innerhalb der Seite eingebaut. Sie helfen uns, das was du siehst, auf das was du auch wirklich benötigst, zu reduzieren. Wenn wir zum Beispiel eine Anleitung beschreiben um ein Programm zu installieren tun wir dies für verschiedene Betriebssysteme (Windows, OSX(Mac) und Linux). Da Du im Normalfall nur an einem Computer arbeitest ist für dich nur das darauf installierte Betriebssystem von Interesse. Daher integrieren wir die Installationsanleitungen in drei Tabs. In jedem dieser drei Tabs wird die passende Anleitung für ein Betriebssytem angezeigt. Du wählst das zu deinem System passende Tab aus und bekommst so nur die passende Anleitung angezeigt und nicht die anderen beiden. Probier es einfach mal aus und schau dir an was passiert wenn du hier die verschiedenen Tabs anklickst.

{% tabs first="Erster Tab", second="Zweiter Tab", third="Dritter Tab" %}
{% content "first" %}
# Erster Tab
Ich bin der erste Tab, ich bin standardmäßig aufgerufen wenn du diese Seite öffnest. 

{% content "second" %}
# Zweiter Tab
Ich bin der zweite Tab, indem du mich angewählt hast ersetzt mein Inhalt den Inhalt des ersten Tabs.

{% content "third" %}
# Dritter Tab
Ich bin der dritte Tab, indem du mich angewählt hast wird der Inhalt des vorher ausgewählten Tabs durch meinen Inhalt ersetzt. Viel Spaß noch mit dem senseBox:edu Buch!

{% endtabs %}
<div class="line" style="border-bottom: solid 1px #a6a6a6!important;">
    <br>
</div>
<br>
Hast Du dir die Tabs und alle weiteren Elemente angeschaut? 
Wenn ja, dann kannst Du jetzt loslegen mit diesem Buch und deiner senseBox:edu!

Viel Spaß wünscht dir das Team der [senseBox](https://sensebox.de/)! 
# Das senseBox Tech-Buch {#head}
<div class="description">
Hier findest du alle Informationen, die du brauchst um mit Deiner
senseBox durchzustarten!
</div>
<div class="line">
    <br>
    <br>
</div>

## Über dieses Buch
Dieses Buch begleitet dich auf deinem Weg zur eigenen Umweltmessstation, vom Aufbau bis zur Programmierung. Dabei kannst du spannende Experimente durchführen und gleichzeitig eine Menge lernen über Sensoren, das Programmieren, Elektrotechnik und vieles mehr. 

Damit du ohne weiteres starten kannst, lies dir einmal kurz aber gründlich die Einleitung durch. Sie hilft dir das Buch besser zu verstehen und gibt dir Einsicht in das, was dich erwartet.

## Einleitung
Das senseBox Tech-Buch ist ein Buch für alle Tüftler und Interessierte, die im Besitz einer senseBox sind. Also für alle, die nicht nur einfach eine Umweltmessstation zusammenbauen und aufstellen wollen, sondern die Technik, Hardware und Software dahinter verstehen und beherrschen möchten. Mit der senseBox sind dir keine Limits gesetzt, eigene Anwendungsfälle zu erfinden und dazu passende Programme zu schreiben. Die senseBox wird zusammen mit einem umfassenden Setup an Sensoren, LEDs, Widerständen, Kabeln und weiteren spannenden Komponenten geliefert. Sie kann in der Schule zum Lernen und Verstehen von Informatik, Physik und Technik eingesetzt werden, aber auch zuhause zum Experimentieren benutzt werden.

Dieses Buch hilft dir bei den [Ersten Schritten](erste-schritte/software-installation.md) mit deiner senseBox, erklärt dir Grundlagen, stellt dir Projekte zum selber nachbauen vor und erklärt dir die einzelnen Komponenten der senseBox. Du solltest mit den ersten Schritten starten und diese lesen und befolgen, bevor du dich an die vorgestelleten DIY-Projekte oder eigene Projekte wagst. 

Auf dem Weg durch das Buch wirst du dich mithilfe der Seitenleiste links oder mit den grünen Pfeiltasten auf den Seiten durch die Anleitungen klicken.
Jede Seite hat eine Überschrift und darunter eine grau hinterlegte Box mit grüner Schrift, in der eine kleine Beschreibung der Seite verfasst wurde. Das Ganze sieht in etwa so aus:

# Überschrift
<div class="description">
Hier steht eine kleine Beschreibung von dem, was dich auf dieser Seite erwartet.
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
    Dies ist ein Warn-Hinweis! Er weist dich auf potentielle Fehlerquellen hin oder zeigt dir Stellen, an denen du besonders vorsichtig arbeiten musst oder besonders genau hinschauen solltest!
</div>

<div class="box_error">
    <i class="fa fa-exclamation-triangle fa-fw" aria-hidden="true" style="color: #d9534f"></i>
    Diese Box weist dich auf Fehler hin. Sie zeigt dir z.B. was du machen kannst, um einen bereits geschehenen Fehler zu korriegieren. 
</div>

Weiterhin gibt es einige Absätze, die dir nicht direkt angezeigt werden. Sie enthalten Inforamtionen über weitergehende Themen oder Aufgaben und Beispiele. Damit du eine größere Übersicht erhälst, sind sie eingeklappt. Möchtest du den Inhalt sehen, klicke einfach auf die Überschrift des Absatzes. Du erkennst eingeklappte Absätze an der grauen Box mit grüner Schrift, ähnlich wie bei der Box unter der Überschrift der Seite. Zusätzlich befindet sich ein kleiner grüner Pfeil, der dir vermittelt, ob der Absatz ein- oder ausgeklappt ist. Schau dir hier doch einfach mal so einen versteckten Absatz an:

{% collapse title="Ein versteckter Absatz" %}
 Super, du hast alles richtig verstanden! Klicke noch einmal auf die grüne Überschrift des Absatzes und ich verschwinde wieder!   
{% endcollapse %}

Als letztes wichtiges Element, dass du kennen solltest bevor du mit diesem Buch durchstarten kannst, haben wir sogenannte "Tabs". Du kennst sie vermutlich aus deinem Internet-Browser und wenn du dich aktuell im Internet befindet, hast du auch bestimmt mehrere Tabs geöffnet. Wir haben ähnlich wie im Browser auch Tabs, diese sind allerdings innerhalb der Seite eingebaut. Sie helfen uns, das was du siehst, auf das was du auch wirklich benötigst, zu reduzieren. Wenn wir zum Beispiel eine Anleitung beschreiben, um ein Programm zu installieren, tun wir dies für verschiedene Betriebssysteme (Windows, OSX(Mac) und Linux). Da du im Normalfall nur an einem Computer arbeitest, ist für dich nur das darauf installierte Betriebssystem von Interesse. Daher integrieren wir die Installationsanleitungen in drei Tabs. In jedem dieser drei Tabs wird die passende Anleitung für ein Betriebssytem angezeigt. Du wählst das zu deinem System passende Tab aus und bekommst so nur die passende Anleitung angezeigt und nicht die anderen beiden. Probier es einfach mal aus und schau dir an, was passiert wenn du hier die verschiedenen Tabs anklickst.

{% tabs first="Erster Tab", second="Zweiter Tab", third="Dritter Tab" %}
{% content "first" %}
# Erster Tab
Ich bin der erste Tab. Ich bin standardmäßig aufgerufen, wenn du diese Seite öffnest. 

{% content "second" %}
# Zweiter Tab
Ich bin der zweite Tab. Indem du mich angewählt, hast ersetzt mein Inhalt den Inhalt des ersten Tabs.

{% content "third" %}
# Dritter Tab
Ich bin der dritte Tab. Indem du mich angewählt, hast wird der Inhalt des vorher ausgewählten Tabs durch meinen Inhalt ersetzt. Viel Spaß noch mit dem senseBox Tech-Buch!

{% endtabs %}
<div class="line" style="border-bottom: solid 1px #a6a6a6!important;">
    <br>
</div>
<br>
Hast du dir die Tabs und alle weiteren Elemente angeschaut? 
Wenn ja, dann kannst du jetzt loslegen mit diesem Buch und deiner senseBox!

Viel Spaß wünscht dir das Team der [senseBox](https://sensebox.de/)! 

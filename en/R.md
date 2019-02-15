# R {#head}

Für eine ausfürhliche Analyse eurer Daten empfiehlt es sich, mit R und der dazugehörigen Benutzeroberfläche R-Studio zu arbeiten. 
R bietet umfangreiche Analysetools und ist daher bestens geeignet. 

Startet im ersten Schritt R-Studio.



Um einen Datensatz (.csv Datei) in R zu verarbeiten müsst ihr ihn als erstes einladen. 
Dies geschieht über den Befehl csv.read("dateiname.csv").


<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/r-studio.png" align="center" width="700"/>

Im nächsten Schritt muss die eingelesene Datei als Variable deklariert werden, da ihr nur so die Tools auf den Datensatz anwenden könnt.

Dies funktioniert über folgenden Befehl: 

variablenname <- read.csv(dateiname.csv)

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/r_var.png" align="center" width="700"/>


Mit dem Befehl *View(variablenname)* könnt ihr euch den Datensatz in einem Fenster in einer Tabelle anzeigen lassen. 
Dabei ist es wichtig, wie bei allen Funktionen, das ihr auf Groß- und Kleinschreibung achtet, da die Funktionen sonst nicht vom Programm erkannt werden. 


<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/view.png" align="center" width="700"/>

Im Folgenden zeigen wir euch ein paar einfache Tools, die ihr benutzen könnt, um aus eurem Datensatz Graphiken zu erstellen:

*plot(variablenname)* Plottet euch den Datensatz in einem einfachen Graphen

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/plot1.png" align="center" width="700"/>

*boxplot(variablenname)* Plottet euch den Datensatz in einer "Boxen" Ansicht.
Hieran könnt ihr unter anderem den Mittelwert, Minimum und Maximum ablesen.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/boxplot.png" align="center" width="700"/>

Ihr könnt euch auch Messwerte in Abhängigkeit von einzelnen Parametern über den Befehl:
*boxplot(d$Messwert)* anzeigen lassen

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/bplot.png" align="center" width="700"/>

Mit dem Befehl *hist(variablenname$Parameter)* könnt ihr ein Histogramm erstellen.
Hierbei gilt es darauf zu achten, das die Funktion nur nummerische Werte verarbeiten kann und dies jeweils auch nur für eine Spalte. 
Hierzu arbeitet ihr wieder mit dem *variablenname$Parameter* Operator, mit dem ihr einzelne Parameter ansprechen könnt. 

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/hist.png" align="center" width="700"/>


Weitere Pakete mit nützlichen Tools könnt ihr unter dem Reiter "Tools" -> install Packages installieren.
Weitere Informationen, unter anderem zu den Paketen finder ihr [hier](<https://www.r-project.org/other-docs.html>)


# Datendownload {#head}
Es bestehen mehrere Möglichkeiten Sensordaten von der openSenseMap herunterzuladen.
Abhängig von der Fragestellung bietet sich je eine Option an.
Bei denen von der SenseBox aufgenommenen Daten handelt es sich um OpenData, das heißt sie stehen für alle Nutzer zur freien Verfügung. 

## Daten zu einer Box
Unter <https://archive.opensensemap.org> wird ein Archiv für sämtliche Messungen in der openSenseMap Datenbank geführt.
Hier sind nach Tag und Box gegliederte Messwerte als CSV beziehungsweise ZIP-Archiv verfügbar.

## Filter

Durch einen Klick auf den Reiter "Filter" in der openSenseMap kannst du dir zunächst optional spezische Dinge für deine Suche und den anschließenden Download der Daten vorfiltern lassen.
Solltest du nach einem Namen filtern, kannst du auch die Werte einer einzelnen SenseBox herunterladen.
Das der Filter aktiv ist, erkennst du an einem roten Dreick unter dem "Reiter" Namen

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/filter.png" align="center" width="900"/>


## Grapische Darstellung von Daten  

Neben der Funktion zum Filtern kannst du dir auch die Statistiken der einzelnen Boxen anzeigen lassen, indem du einfach auf eine beliebige Box in der Karte klickst, woraufhin du dann in der Sidebar die Statistiken auswählen 
kannst, die du angezeigt bekommen möchtest.

##Download

Wenn du auf der Seite der openSenseMap den Reiter "Datendownload" auswählst, kannst du eine Reihe von räumlichen und Zeitlichen Filtern auf die bereits von den SenseBoxen gemessenen Werte anwenden.

<img src="https://raw.githubusercontent.com/sensebox/resources/master/images/downl.png" align="center" width="900"/>


### Zeitraum auswählen
Zunächst solltest du einen Zeitraum auswählen, von welchem du die Daten angezeigt haben möchtest.
Dies geht entweder manuell, oder du wählst zwischen "letzte 24 Stunden",
"Letzte Woche" oder "Letzter Monat".  


### Gruppieren nach...
Jetzt wählst du aus, ob du die Daten gemittelt haben möchtest. Hierbei kannst du wieder einen Zeitraum auswählen.
Alternativ ist es aber auch möglich, dir die Rohdaten ausgeben zu lassen.

### Operation
Jetzt kannst du unter "Operation" entscheiden, welche Funktion du auf die Werte anwenden möchtest.
Hierbei kannst du dir zum Beispiel das Maximum oder Minimum von gemessenen Tempertaturen berechnen lassen.

### Wähle einen Sensor
Hier kannst du nun einen Sensor auswählen, von dem du die gewünschten Werte, mit den Filtern, die du vorher ausgewählt hast, angezeigt haben möchtest.

### Columns
Klicke auf den Button "Columns" um auswählen zu können, welche zusätzlichen Informationen du zu deinen Werten bekommen möchtest.



> **Achtung**: Je nach Auswahl der Filterparameter kann der Download sehr groß werden (mehrere 100MB)!


### Formate
Derzeit wird nur das Datenformat CSV unterstützt, welches problemlos mit Tabellenkalkulations-Tools wie 
[Microsoft Excel](excel.md), [Libre office](libre.md), [R-Studio](R.md) oder [ArcGis](Arc.md) verarbeitet werden kann.
Informationen zu Weiteren Datenformaten finder ihr [hier](formate.md)

Jede Zeile enthält eine Messung einer senseBox mit dem ausgewählten Phänomen.
Der Messwert (`value`), Standort des Sensors (`lat`, `lng`, Referenzsystem WGS84) und ein Zeitstempel (`createdAt`) sind in je einer Spalte angegeben:

```csv
createdAt;value;lat;lng
2016-09-20T10:05:49.581Z;18.70;7.64568;51.962372
2016-09-20T10:00:52.689Z;18.62;7.64568;51.962372
2016-09-20T09:55:54.282Z;18.47;7.64568;51.962372
....
```

## API-Download
Falls die beiden genannten Möglichkeiten nicht flexibel genug sind, können über die [REST API unter `/boxes/data`](osem_api.md#get-latest-measurements-for-a-phenomenon-as-csv-) auch komplexe Anfragen gestellt werden.

Für solche anfragen bietet sich das Kommandozeilenwerkzeug `curl` an.
Unter Linux ein Terminal öffnen und beispielsweise folgenden Befehl eingeben, um sämtliche Temperatur-Messungen im geographischen Bereich 51°N - 52°N, 7°E - 8°E in die Datei `measurements.csv` herunterzuladen:

```
curl "https://api.opensensemap.org/boxes/data?phenomenon=Temperatur&bbox=7,51,8,52" > measurements.csv
```

Andere geeignete Parameter (Zeitraum, Box-IDs, ...) lassen sich der verlinkten API-Dokumentation entnehmen.

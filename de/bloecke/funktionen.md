# Funktionen {#head}

<div class="description"></div>
<div class="line">
    <br>
    <br>
</div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/functions/functions-0.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Setup() und Endlosschleife()</h4>
            Dieser Block wird direkt beim starten der Oberfläche geladen und sollte immer verwendet werden. Die zwei Basisfunktionen Setup() und Endlosschleife() werden immer benötigt um ein Funtkionsfähiges Programm zu schreiben. 
            <h6>Setup()</h6>
            Alle Blöcke, die innerhalb der Setup() Funktion stehen werden nur zu begin des Programmes <b>einmal</b> ausgeführt. In dieser Funktion werden zum Beispiel das Display initialsiert oder die Wlan Verbindung hergestellt.
            <h6>Endlosschleife()</h6>
            Alle Blöcke, die innerhalb der Endlosschleife() stehen werden durchgehend ausgeführt. Der Mikrokontroller führt hierbei alle Blöcke immer wieder von oben nach unten hin aus. In der Endlosschleife() werden zum Beispiel die Sensoren ausgelesen oder auch die Messwerte auf SD-Karte gespeichert oder übertragen. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/functions/functions-1.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Eigene Funktion erstellen (ohne Rückgabewert)</h4>
            Neben den beiden Funktionen Setup() und Endlosschleife () lassen sich auch eigene Funtkionen erstellen. Mit eigenen Funtkionen wird dein Programmcode strukturierter. Wenn du eine neue Funtkion erstellst taucht diese in Kategorie Funktionen auf und du kannst diese in der Setup() oder Endlosschleife() verwenden. Der Programmcode ruft dann an dieser Stelle deine eigene Funktion auf und führt die Aktionen in dieser aus. Standardmäßig hat diese Funktion keinen Rückgabewert.
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/functions/functions-2.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Eigene Funktion erstellen (mit Rückgabewert)</h4>
            Es lassen sich aber auch Funktionen mit Rückgabewert erstellen. Diese Funktion gibt dann einen Wert zurück, der in laufe deines Programmcodes weiterverwendet werden kann. 
        </div>
    </div>
</div>

<div class="line"></div>




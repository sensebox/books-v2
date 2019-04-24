# Analoge Signale {#head}

<div class="description">Im Gegensatz zu digitalen Signalen können analoge Signale sehr viele Werte zwischen hohem und niedrigen Pegel annehmen. Die genaue Anzahl der Werte - die Auflösung des digitalen Eingangs - liegt bei der senseBoxMCU bei 1024 Werten (10 bit). Beim senseBoxMCU entspricht der maximale Pegel 3,3 V und der niedrige 0 V. Diese individuellen Spannungswerte können mit den sechs analogen Pins (A0 - A5) der senseBoxMCU gemessen werden.</div>
<div class="line">
    <br>
    <br>
</div>

## Analoge Akteure ansteuern

Der Befehl analogWrite() gibt eine Spannung auf einen angegeben Pin aus. Er kann benutzt werden um beispielsweise einen Motor in verschiedenen Geschwindigkeiten laufen zu lassen.

Es ist auch möglich an auf digitalen Pins mehrere Spannungswerte auszugeben. Hierzu generiert die senseBoxMCU eine stetige Rechteckwelle mit der gewünschten Einschaltdauer und simuliert so ein analoges Signal (Pulsweitenmodulation oder PWM). An der senseBoxMCU kann jeder PIN diese Funktion übernehmen. Die Syntax für den Befehl lautet ähnlich wie beim digitalen Gegenstück analogWrite(pin, <Wert>). Der Wert kann zwischen 0 (immer aus) und 255 (immer an) liegen.

Ein Beispielhaftes Programm könnte so aussehen:
```arduino
void setup(){

}
void loop(){
    analogWrite(A1,60) // Ansteuern der LED
}
```


## Analoge Sensoren auslesen

Der Befehl analogRead() liest den Wert von einem analogen Pin. Die so gemessenen Werte zwischen 0 V und 3,3 V werden vom eingebauten 10-bit analog zu digital Konverter (ADC) in integer Werte zwischen 0 und 1023 umgewandelt, d.h. das Signal verfügt über eine Auflösung von 0.003 Volt (= 3 mV) pro Wert.

Das auslesen eines Eingangs dauert etwa 0,0001 Sekunden, es können also etwa 10.000 Messungen pro Sekunde aufgenommen werden. Es bietet sich an die gemessenen Daten im [seriellen Monitor](der_serielle_monitor.md) anzuzeigen.

Ein beispielhaftes Programm könnte so aussehen:

```arduino
int val = 0;
string analogPin = 'A1';

void setup(){
    Serial.begin(9600);
}

void loop(){
    val = analogRead(analogPin); // Auslesen des Sensors
    Serial.println(val) // Messwert im Monitor ausgeben 
}
```
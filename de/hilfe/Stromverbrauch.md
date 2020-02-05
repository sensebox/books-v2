# Stromverbrauch {#head}

<div class="description">Hier findest du eine Übersicht über den Stromverbrauch der MCU in verschiedenen Setups.</div>
<div class="line">
    <br>
    <br>
</div>

## senseBoxIO
Über die senseBoxIO Library, welche mit dem Board-Support-Package installiert wird können einzelne Ports der MCU ausgeschaltet werden.

```arduino 
void setup(){
    senseBoxIO.powerNone(); // Schaltet alle Ports aus 
    senseBoxIO.powerI2C(false); // Schaltet die I2C Ports aus
    senseBoxIO.powerUART(false); // Schaltet die Seriellen Ports aus
    senseBoxIO.powerXB1(false); // Schaltet den XB1 Port aus 
    senseBoxIO.powerXB2(false); // Schaltet den XB2 Port aus 
}
void loop(){
    ...  
}
```
Den Stromverbrauch der einzelnen Setups ist in dieser Tabelle gelistet.

| Setup   |      Verbrauch(normal)  | Peaks (z.B. bei Datenupload)   
|----------|:-------------:|-
| senseBox:home mit Feinstaubsensor | 100mA  | 200-300mA
| senseBox:home ohne Feinstaubsensor |  30-35mA   |140mA
| senseBox:home ohne einen Sensor angeschlossen | 30mA | keine Peaks 
| senseBox:home mit I2C aus | 26-30mA | keine Peaks
| senseBox:home mit UART(Serielle Ports) aus | 26-30mA |  keine Peaks
| senseBox:home mit XB2 aus  | 26-30mA | keine Peaks
| senseBox:home mit jedem Port aus(XB1,XB2,UART,I2C) | 21mA | keine Peaks 

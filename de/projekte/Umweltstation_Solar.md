# Umweltstation betrieben von einer Solarzelle {#head}

<div class="description">
Wenn du deine senseBox ohne Steckdose oder Powerbank betreiben möchtest kannst du hierfür auch eine Solarzelle verwenden. Zusätzlich zeigen wir dir wie die LoRa Datenübertragung funktioniert. Somit kannst du auch an entlegenen Orten deine senseBox betreiben ohne auf Strom oder Internet angewiesen zu sein! Am Ende wird dir zudem gezeigt wie du einen Schalter zum Ein- und Ausschalten mit der senseBox verbinden kannst.
</div>
<div class="line">
    <br>
    <br>
</div>

## Materialien 
- Sensoren
  - Luftdruck(BMP280)
  - Temperatur und Luftfeuchte (HDC1080)
  - UV-Intensität und Beleuchtungsstärke(TSL & VML)
  - Feinstaub (SDS) 
- [Solarzelle](https://www.amazon.de/Watt-Solarpanel-Volt-Powerbanks-Solarleuchten/dp/B014HWT520/ref=sr_1_1?ie=UTF8&qid=1532255953&sr=8-1&keywords=villageboom)
- 3.7V LiPo Akku 
- Adafruit Powerboost 1000C
- LoRa Bee
- Power Switch (An/Aus)


## Aufbau 

<div class="box_warning">
    <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>
    Achtung: Aufgrund der erhöhten Komplexität der Installation empfehlen wir dieses Projekt außschließlich fortgeschrittenen Nutzern von Open-Hardware. 
</div>
<br>
Um die senseBox per USB mit Strom zu versorgen und zur gleichen Zeit einen Akku zu benutzen, der von der Solarzelle aufgeladen wird benötigen wir den [Adafruit Powerboost 1000C](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/overview). Um den Stromfluss vom Akku über den Powerboost zur MCU zu regulieren benötigen wir zudem einen [Power Switch](https://www.adafruit.com/product/805). 
Nun muss der Switch mit dem Powerboost verbunden werden. Hierfür benötigst du Werkzeug zum Löten. Wie das funktioniert wird dir [hier](https://learn.adafruit.com/adafruit-powerboost-1000c-load-share-usb-charge-boost/assembly#on-slash-off-switch-3-5) erklärt. 
Nun können wir den USB-Eingang am Powerboost verwenden um den Stromfluss zur MCU zu regulieren.

Um den Akku, den Powerboost und die Sensoren in einem Gehäuse unterzubringen benötigen wir ein großes Gehäuse.
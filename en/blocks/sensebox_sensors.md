# senseBox Sensoren {#head}

<div class="description">
    This site gives you an overview about the all blocks.
</div>
<div class="line">
    <br>
    <br>
</div>



<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-0.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Temperature and humidity sensor</h4>
            <h6>Connection: I2C/Wire</h6>

            This block returns the measurements of the
            <a href="../komponenten/sensoren/hdc1080.html">temperature and humidity sensor</a>. Simply choose temperature or humidity in the dropdown-menu. Dropdown:
            <ul>
                <li> temperature </li>
                <li> humidity </li>
            </ul>
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-1.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>UV and visible light sensor</h4>
            <h6>Connection: I2C/Wire</h6>
            This block returns the measurements of the
            <a href="../komponenten/sensoren/belichtung-und-uv.html">UV and visible light sensor</a>. Simply choose UV-light or visible in the dropdown-menu. Dropdown:
            <ul>
                <li> UV-light </li>
                <li> visible light </li>
            </ul>
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-2.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>dust sensor</h4>
            <h6>Connection: UART/Serial</h6>
            This block returns the measurements of the
            <a href="../komponenten/sensoren/feinstaub.html">dust sensor</a>. Simply choose the value you want to measure in the dropdown-menu. Dropdown:
            <ul>
                <li> PM10 </li>
                <li> PM2.5 </li>
            </ul>
            Dropdown:
            <ul>
                <li> Serial1 </li>
                <li> Serial2 </li>
            </ul>
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-3.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>air pressure sensor</h4>
            <h6>Connection: I2C/Wire</h6>
            This block returns the measurements of the <a href="../komponenten/sensoren/luftdruck-temperatur.html">air pressure sensor</a>. Air pressure is measured in Pascal (Pa).
        </div>
    </div>
</div>

<div class="line"></div>



<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-4.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>ultrasonic distance sensor</h4>
            <h6>Connection: Digital</h6>
            This block returns a distance in centimeters. 
            When wiring pay attention to choose the connected pins in the dropdown menu.  <br>
            <!-- Button trigger modal -->
            <button type="button" class="btn-modal" data-toggle="modal" data-target="#Modal-Ultrasonic">
                Wiring: ultrasonic distance sensor
            </button>

            <!-- Modal begin -->
            <div class="modal fade" id="Modal-Ultrasonic" tabindex="-1" role="dialog" aria-labelledby="ModalLabelUltrasonic" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLabelUltrasonic">Wiring: ultrasonic distance sensor</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <img src="../pictures/projekte/Verkehrszaehler_v2.png" alt="block" align="left">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-modal" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div> <!--Modal end-->
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-5.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>sound sensor</h4>
            <h6>Connection: Digital</h6>
            This block returns a sound value. The value is a level between 0 an 1023.
            When wiring pay attention to choose the connected pins in the dropdown menu.
            <!-- Button trigger modal -->
            <button type="button" class="btn-modal" data-toggle="modal" data-target="#Modal-Sound">
                Wiring: sound sensor.
            </button>

            <!-- Modal begin -->
            <div class="modal fade" id="Modal-Sound" tabindex="-1" role="dialog" aria-labelledby="ModalLabelSound" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLabelSound">Wiring: sound sensor</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <img src="../pictures/projekte/Verkehrszaehler_v2.png" alt="block" align="left">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-modal" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div> <!--Modal end-->
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-6.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>light dependant resistor</h4>
            <h6>Connection: Digital</h6>
            This block returns the measurements of the light dependant resistor (LDR). The value is a level between 0 an 1023.  When wiring pay attention to choose the connected pins in the dropdown menu.<!-- Button trigger modal -->
            <button type="button" class="btn-modal" data-toggle="modal" data-target="#Modal-LDR">
                Wiring: LDR
            </button>

            <!-- Modal begin -->
            <div class="modal fade" id="Modal-LDR" tabindex="-1" role="dialog" aria-labelledby="ModalLabelLDR" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLabelLDR">Wiring: LDR</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <img src="../pictures/projekte/Verkehrszaehler_v2.png" alt="block" align="left">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-modal" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div> <!--Modal end-->
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-7.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Button</h4>
            <h6>Connection: Digital</h6>
            This block returns the state of the wired button. The state of the button is returned as boolean and equals 1/HIGH (pressed).
            When wiring pay attention to choose the connected pins in the dropdown menu (for the build-in button choose pin number 0)
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-8.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Potentiometer</h4>
            <h6>Conntection: Digital</h6>
            This block returns the measured values of the potentiometer. The value is a level between 0 an 1023.  When wiring pay attention to choose the connected pins in the dropdown menu
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/sensors/sensors-9.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>GPS sensor</h4>
            <h6>Connection: I2C/Wire</h6>
            This block returns the different measurement of the
            <a href="../komponenten/zubehoer/gps.html">GPS sensors</a>. 
            
            Longitude and latitude are displayss along with altitude and current speed (in km/h). Select the value you want to measure in the dropdown menu.
            Dropdown:
            <ul>
                <li> latitude </li>
                <li> longitude </li>
                <li> altitude </li>
                <li> speed </li>
            </ul>
        </div>
    </div>
</div>

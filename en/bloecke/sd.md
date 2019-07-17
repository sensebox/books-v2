# senseBox SD Card {#head}

<div class="description">To save data to SD card you need a micro SD card and the mSD-Bee. 
</div>
<p>To use these blocks, plug the mSD-Bee into XBEE2</p> slot
<div class="container">
    <div class="row">
        <div class="col-md-12" id="mSD-Bee">
            <img src="../pictures/components/mSD-bee.png" alt="block" align="center">
        </div>
    </div>


<div class="container">
    <div class="row">
        <div class="col-md-6" id="createSD">
            <img src="../pictures/blocks/sd/sd1.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Create file on SD card </h4>
            Various blocks are required to store data on the SD card. The first step is to create a new file in Setup(). You can also create several different files with this block. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="openSD">
            <img src="../pictures/blocks/sd/sd2.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Open a file on the SD card </h4>
           The respective file is opened in an endless loop. When the file is open you can write to it. 
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-md-6" id="saveSD">
            <img src="../pictures/blocks/sd/sd3.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
        <h4>Write data to SD card </h4>
            With this block you write measured values or texts into the opened file. 
        </div>
    </div>
</div>


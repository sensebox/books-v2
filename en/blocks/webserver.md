# senseBox Web {#head}

<div class="description">Here you can find all the blocks you need to build a webserver using senseBox. For the webserver you need the WiFi-Bee.
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="http_initialize">
            <img src="../pictures/blocks/webserver/webserver1.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Initialize HTTP server </h4>
            Use this block in Setup() to initialize the HTTP server. The Port field allows you to specify the port the server should be accessible from in the browser. By default, port 80 is entered here.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="client_connected">
            <img src="../pictures/blocks/webserver/webserver2.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>When client is connected</h4>
            This block is connected in an endless loop. In the free block section, insert the blocks to be executed when a client (e.g. a user via the browser) accesses the server.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="ipadresse">
            <img src="../pictures/blocks/webserver/webserver3.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>IP address</h4>
            This block returns the IP address of your senseBox in the network.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="method">
            <img src="../pictures/blocks/webserver/webserver4.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Method</h4>
            This block gives you the method back.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="uri">
            <img src="../pictures/blocks/webserver/webserver5.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>URI</h4>
            This block gives you the URI back.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="user-agent">
            <img src="../pictures/blocks/webserver/webserver6.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>User agent</h4>
            This block returns the user agent of the client accessing the HTTP server.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="http-response">
            <img src="../pictures/blocks/webserver/webserver7.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Successful HTTP Response</h4>
            With this block you can send an HTTP response to the client when it accesses the server. The answer is the HTML code that can be assembled from different blocks. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="404">
            <img src="../pictures/blocks/webserver/webserver8.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>404 error</h4>
            This block can be sent as a possible HTTP response when a faulty page is called. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="html_head_body">
            <img src="../pictures/blocks/webserver/webserver9.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>HTML</h4>
            This is the basic building block for the HTML code. On the body you attach your HTML code, which describes the structure of the website.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="tag">
            <img src="../pictures/blocks/webserver/webserver10.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Day</h4>
            With the tags you can build your HTML page directly with Blockly. 
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6" id="html_sd">
            <img src="../pictures/blocks/webserver/webserver11.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Read HTML from SD card</h4>
            You can append this block to the basic HTML code block and load a .html file from the SD card. 
        </div>
    </div>
</div>

<div class="line"></div>

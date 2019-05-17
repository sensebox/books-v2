# senseBox Display {#head}

<div class="description"> This page gives you an overview about the different possibilities of displaying the senseBox</div>
<div class="line">
    <br>
    <br>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/display/display1.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>The OLED display </h4>
            <h6>Connection: I2C/Wire</h6>
            The OLED-DISPLAY has a resolution of 128x64 pixels and is connected via the I2C connector. The display 
            must be initialized in Setup().
        </div>
    </div>
    <div class="line"></div>
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/display/display2.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Show on Display </h4>
            
        </div>
    </div>
    <div class="line"></div>
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/display/display3.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Delete display </h4>
            Use this block to delete the contents of the display. At the beginning or end of the infinite loop it is recommended to use the
            display to ensure correct display of e.g. measured values.
        </div>
    </div>
    <div class="line"></div>
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/display/display4.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Display text </h4>
            With this block you can display text and measured values on the display. By default, the font color is set to
            White, because the display has a black background. You can set the font size as well as the font color.
            Change In font size 1, a letter or a number is 8 pixels in size and you can change the total size in 8 lines
            to show various texts on the display. In font size 2, the letters or numbers are 16 pixels
            high. With the X and Y values you indicate where something is shown on the display.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/display/display5.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Draw point</h4>
        With this block a dot can be shown on the display. You can use the coordinates to place the point on the display and the radius to determine the size.     
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/display/display6.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Draw rectangle</h4>
            This block draws a rectangle on the display. The X and Y coordinates determine the position of the upper left corner of the rectangle on the display. The height and width are given in pixels and with the checkbox "Fill" you can select whether the rectangle is filled or only displayed as a frame.
        </div>
    </div>
</div> 

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/display/display7.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Display diagrams</h4>
            This block can be used to automatically create diagrams on the display. 
        </div>
    </div>
</div>

# senseBox Display {#head}

<div class="description"> This Site give you an overview about the different possibilities with the senseBox Display.</div>
<div class="line">
    <br>
    <br>
</div>



<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-0.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>The OLED-Display</h4>
            <h6>Connection: I2C/Wire</h6>
            The
            <a href="../uebersicht/sensebox_components.html#temp_humi">OLED-DISPLAY</a> has a Resolution of 128 by 64 and will be connected via the I2C/Wire connectors. The Display need to be initialise first in the setup().
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-1.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Show on  display</h4>
            Use this Block to show content on the display. In this loop you can either use the Block to plot a diagram or the Block to print text or values.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-2.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Clear Display</h4>
            Use this Block to clear to complete display content. Verwende diesen Block um den Inhalt des Displays zu löschen. It is recommended to clear the display at the bevor or after the "Show on Display" loop to ensure measured values being displayed correctly.
        </div>
    </div>
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-4.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Print Text</h4>
            With this block you can display text and measured values on the display. The font color is set to "white" by default as the display has a black background. You can also change the font size in addition to the font color. In font size 1 a letter or number is 8 pixel tall and you can display 8 lines in total on the display. In font size 2 the letters and numbers are 16 pixels tall. With the X and Y values you can indicante where on the display something it is displayed.

            <button type="button" class="btn-modal" data-toggle="modal" data-target="#Modal-Display-Example">
                Display Examples
            </button>

            <!-- Modal begin -->
            <div class="modal fade" id="Modal-Display-Example" tabindex="-1" role="dialog" aria-labelledby="ModalLabelDisplayExample"
                aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="ModalLabelDisplayExample">Display Examples</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class "col-md">
                                    <h6 align="center">Block</h6>
                                    <img src="../pictures/blocks/display/display-example-1.png" alt="block" align="left">
                                </div>
                                <div class="col-md">
                                    <h6 align="center">Display Anzeige</h6>
                                    <img src="../pictures/blocks/display/display-example-orig.jpg" alt="block" align="left">
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-modal" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md">
            <img src="../pictures/blocks/display/display-3.png" alt="block" align="left">
        </div>
        <div class="col-md">
            <h4>Plot Diagrams</h4>
            With this block you can create diagrams out of measured values on the display.
        </div>
    </div>

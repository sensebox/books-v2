# Mathematics {#head}

<div class="description">With the "Math" blocks you can set values and perform various calculations.</div>
<div class="line">
    <br>
    <br>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-0.png" alt="block" align="left"></div>
        <div class="col-md-6">
        <h4>number</h4>
            With the value block you can transfer numbers to another block. In this block you can only enter numbers, letters or special characters are not accepted.
         </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-1.png" alt="block" align="left"></div>
        <div class="col-md-6">
            <h4>Calculation</h4>
            With this block you can add, subtract, multiply, divide or potentiate numbers. This block can only be used with other blocks whose input values are numbers (e.g. the value block).
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-2.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Mathematical functions </h4>
            With this block you can calculate some mathematical functions. This block also only works with another block whose input value is a number.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-3.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>constants</h4>
            With this block you can add some mathematical constants.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-4.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Rise "Element" by </h4>
            With this block you can increase the value of a numeric variable by a certain amount.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-5.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>laps</h4>
            With this block you can round values. During rounding, the decimal places are set to 0. Depending on the size of the decimal places, the values are automatically rounded up or down. However, you can also set that the decimal places are always rounded up or down.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-6.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Limit</h4>
            This block ensures that certain limit values are not exceeded. Three values must be entered:
            <ul>
                <li>The value to be checked</li>
                <li>The lower limit</li>
                <li>The upper limit</li>
            </ul>

        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-7.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>rest of</h4>
            This block does a division and spends the rest on you.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-8.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Number properties</h4>
            You can use this block to check whether a entered number has a certain property.
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-9.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Trigonometric functions </h4>
            With this block you can calculate sine, cosine and tangent as well as the corresponding subfunctions. Note that the input values are in radians and not in degrees.
        </div>
    </div>
</div>
<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-10.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
                <h4>Distributed value (mapping)</h4>
                With this block you can transfer values from one value range to another. To do this, you must enter a value to be distributed and a new value range. 
                
                <button type="button" class="btn-modal" data-toggle="modal" data-target="#Modal-Display-Example">
                    Distributed Value Example
                </button>
    
                <!-- Modal begin -->
                <div class="modal fade" id="Modal-Display-Example" tabindex="-1" role="dialog" aria-labelledby="ModalLabelDisplayExample"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="ModalLabelDisplayExample">Verteile-Value Example</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row well">
                                   In this example, the analog noise sensor is read out. First, the measured analog values (value range from 0 to 1023) are displayed directly.
                                   <div class="col-xs-9">
                                        <h6 align="center">blocks without distribution</h6>
                                        <img src="../pictures/blocks/maths/sound-example.png" alt="block" align="left">
                                    </div>
                                    <div class="col-xs-3">
                                        <h6 align="center">Display Display without distribution</h6>
                                        <img src="../pictures/blocks/maths/sound-exampe-orig.png" alt="block" align="left">
                                    </div>
                                </div>
                                <div class="row well">
                                    Here, the measured values are additionally transferred by the distribution value block into a new value range from 0 to 10.
                                    <div class="col-xs-9">
                                        <h6 align="center">Blocks with distribution</h6>
                                        <img src="../pictures/blocks/maths/sound-example-mapped.png" alt="block" align="left">
                                    </div>
                                    <div class="col-xs-3">
                                        <h6 align="center">Display Display with distribution</h6>
                                        <img src="../pictures/blocks/maths/sound-exampe-mapped-orig.png" alt="block" align="left">
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
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-11.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Random number</h4>
            This block determines a random number between 0.0 and 1.0.
        </div>
    </div>
        </div>
    </div>
</div>

<div class="line"></div>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../pictures/blocks/maths/maths-12.png" alt="block" align="left">
        </div>
        <div class="col-md-6">
            <h4>Integer random number </h4>
            This block can be used to generate integer random values within self-defined limits.
        </div>
    </div>
</div>

<div class="line"></div>

# Arduino IDE and Sketches {#head}

<div class="description">
  Before you can start writing your first program, you have to look at the Arduino program - the so-called development environment (IDE).
</div>
<div class="line">
    <br>
    <br>
</div>

## Basics

When you open the IDE, you will see a large white area directly in which you will write your program. The black area below shows status and error messages. It is always worthwhile to take a look at the news.

Lastly, you should look at the small buttons above the white area.

![check for spelling errors - transfer program to senseBox MCU](../pictures/grundlagen/arduino-ide_schaltflaechen1.png)

The tick and the arrow are the two most important symbols for you: With the check mark you can have your program checked for spelling errors, and with the arrow you transfer your program to the senseBox MCU.

![create new program - open saved program - save program](../pictures/grundlagen/arduino-ide_schaltflaechen2.png)

The other three icons - starting with the small leftmost leaf - are for creating a new program, opening a saved one and saving your written program.

## The Arduino Sketch

An Arduino program (also called "Sketch") has a very simple structure that consists of two main components. These two required functions contain blocks of instructions that describe the program flow:

```arduino
void setup(){
    // instruction
}
void loop(){
    // instruction
}
```

The `setup`-function is only executed once when the program is started. In the `loop`-function, however, all instructions are repeated in an endless loop. Both functions are mandatory to successfully compile and run the program. "Compile" means the translation of the program into machine code which can be understood by the Arduino processor; this is what the Arduino IDE does for us.

With a double slash (`//`) you can add comments to the program code. It is always important to comment on your program code so that others can understand what is happening in a certain place.

# Loops {#head}

<div class="description">If you want to flash an LED 50 times, that's a lot of paperwork.
<br>
Since computer scientists are lazy, they have come up with a simple solution:  <b> loops </b>. <br>
A loop executes a statement several times until a certain condition is met.
 </div>
<div class="line">
    <br>
    <br>
</div>

## Construction of loops
Loops consist of two parts, a **loop head** and a **loop body**. Instructions to be repeated are written in curly braces in the loop body. But now we have to decide how often these instructions should be repeated. This happens in the loop head.

There are different types of loops that can be used as needed. Here are the two most important types of loops to be presented.

## The for-loop
`for` loops are used if you know exactly how many instructions should be repeated. In our example, we know that the LED should flash 50 times. The head of a `for` loop consists of three parts separated by a semicolon (`;`):

1. A count variable is generated, which indicates how often the loop has already been executed
2. A condition indicates when to count. What a condition looks like you have already seen in  [if-Anweisungen](if_else_bedingung.md)!
3. A definition of how to count. Usually, the count variable is increased by `1`.

```arduino
for (int counter = 1; counter < 50; counter = counter + 1) {
    // let the LED blink
}
```

In this example, our counter variable is called `counter`. The condition is: "As long as `counter` is less than 50". The `counter` is incremented by one after each loop. Therefore, the loop body is executed 50 times.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i><ul>
        <li> For the command counter = counter + 1 you will often find the shorthand counter number ++. This one does the same.</li>
        <li>Of course, you can give any name to the count variable. Often the name `i` is used for ‚index'.</li>
    </ul>
</div>

### Task 1

Now write a statement in the loop body that will give you the value of the count variable via the serial monitor.

> ***Tipp:*** *[The Serial Monitor](der_serielle_monitor.md) explains how to do it!*

- **a)** Examine what happens if you replace  `counter = counter + 1` durch `counter = counter*2` or `counter--`.
- **b)** Examine what happens if you replace `int counter = 1` with `int counter = 25`.

---

## The while-loop

In many cases, you do not know at the beginning how many times a statement should be repeated. Then you can use the `while` loop. The `while` loop has a less strict structure: The loop header consists of the identifier `while` followed by parentheses. In these brackets, an operator is written, which is checked before each loop pass. As long as this condition returns `true`, the loop body will be executed

```arduino
while (condition) {
    // let the LED blink

}
```
You can, for example, connect a button to the Arduino and loop through it only when the button is pressed.

<div class="box_warning">
     <i class="fa fa-exclamation-circle fa-fw" aria-hidden="true" style="color: #f0ad4e"></i>

 Attention: A common mistake is that a condition is always true (For example, if you write as condition: 1 > 0). In this case, your loop will go through again and again. One speaks of an endless loop. In this case, your Arduino stops responding and it's relatively hard to figure out why.
</div>

### exercise 2
- **a)** Program a  `while`-loop that says "The statement is true!" via the serial monitor if a variable `a` is greater than 0.

- **b)** Program a `while` loop that will make an LED blink when a button is pressed.
- **c)**  Each `for` loop can also be described by a `while` loop. Put the following `for` loop in a `while` loop:
    ```arduino
    for (int i = 10; i > 0; i--) {
        Serial.print("Countdown: ");
        Serial.println(i);
    }
    ```

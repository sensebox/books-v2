# Variables and Data Types {#head}

<div class="description">To hold data in programs, you use variables. A variable is a storage container that can be addressed by its name and in which data can be stored. You can access both read and write variables, so the value is variable..</div>
<div class="line">
    <br>
    <br>
</div>

## Data Types
A variable always has an associated data type, and the following types are important to Arduino programming:

| Datatype | Meaning     | Description  |
| ------------- |-------------  | ----- |
| boolean | right or wrong      | Can only accept two values, 1 or 0. |
| char  | character             | Alphanumeric characters (letters, numbers, special characters) |
| byte  | whole number          | integers from 0 to 255    |
| int   | whole number          | integers from -32758 to 32767 |
| long  | whole number          | whole numbers from - 2 billion to 2 billion |
| float | floating point number     | fractions |
| String| string            |  Text consisting of ASCII characters|
| array | variable field        | A list of variables with identical datatypes |


<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
There are some conventions in programming, some rules that have been agreed upon to improve the readability of code. One of these is that variable names always start with a lowercase.
</div>

## Use of Data Types


### boolean
A boolean can only take two values, true or false.
 (`true` or `false`).

```arduino
boolean testValue = false;
```
The assignment `= false` stands for the start value of the variable in this case.

### char
For example, to save a letter, you need the data type `char`. The value is passed in single quotes(`'`).

```arduino
char testValue = 'a';
```

### byte
One byte stores an 8-bit, unsigned number from 0 to 255.

```arduino
byte testValue1  = 18;
byte testValue2 = B10010;
```

The `B` indicates that the following sequence of numbers is written in binary code.
`B10010` corresponds to 18 in the decimal system, so both variables contain the same value with different spelling.
.

### int
The `int` data type stores integers in a range of -32768 to 32767.


```arduino
int testValue = 99;
```

### long
The `long` data type is required if the value range of an integer is no longer sufficient. It can store integers from -2 billion to 2 billion.
```arduino
long testValue = 9999999;
```

### float
To save broken numbers you need the data type  `float`.

```arduino
float testValue = 2.4476;
```

### String
A String is defined as follows:

```arduino
String testValue = "Hello World";
```

Unlike the data types you've known before, the identifier `String` is capitalized. You have to pay attention to this, otherwise the program will not recognize the data type. Most programming languages have primitive data types and higher data types. You can tell if your identifiers are small (primitive data type) or large (higher data type). For our applications in the senseBox: edu it is not necessary to differentiate between primitive and higher data types. If you later program more complex applications, you will learn more about it. If you would like to know more about it now, then look [here](https://en.wikipedia.org/wiki/Data_type#Composite_types).

### array
An array is not an actual data type, but rather a collection of multiple variables of the same type.

```arduino
int testArray[5] = {5, 10, 15, 20, 15};
```

In the example, an array of type `int` is created, since integers should be stored. The 5 in square brackets after the name of the variable determines the number of memory locations. Arrays on the Arduino have a fixed size, and can not be subsequently enlarged.

The memory locations of an array are numbered beginning at 0. In a program, you can access the various memory locations of the array by placing the index of the memory space in square brackets after the variable name:

```arduino
Serial.print(testarray[0]); // is 5
Serial.print(testarray[4]); // is 5
Serial.print(testarray[5]); // enerates an error!

```

# Lifetime of Variables
A variable is always visible in the block (within the curly brackets) for the program in which the variable was declared. One distinguishes between global and local variables. Local variables are all those that have been declared within curly braces (usually within a function). Global variables are usually defined before the `setup` function and are visible to the entire program.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  Since global variables are always visible, they also consume memory for the entire program runtime. Want to save space, define variables only where you need them. If you want to know more about the lifetime of variables, look at <a <a href="https://en.wikipedia.org/wiki/Variable_(computer_science)#Memory_allocation">Wikipedia</a>
</div>

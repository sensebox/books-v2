# Comments in the Source Code {#head}

<div class="description"> The commenting of source code is unfortunately a topic that is neglected. The benefit of good comments is often only recognized when one tries to muddle through foreign source code or when one 'digs out' one's own program after a long time. Comments are not evaluated by the compiler and therefore do not affect the program. Text and program parts that are commented out can be recognized by the fact that they are colored gray.
</div>
<div class="line">
    <br>
    <br>
</div>



## One-line Comments

One-line comments are often found in the source code. They serve to explain certain commands or constructs. A one-line comment is indicated by two `//`.

```arduino
// I am a comment
int led = 1;  // variable 'led' gets the value 1

```

## Multi-line Comments

Multi-line comments are often at the beginning of a program or a method. They begin with `/*` and end with `*/`. You can also use them to comment out parts of a program. For example, if you have an error and want to check in which part of the program it is.

```arduino
/*
 *
 * I am a multi-line comment.
 * For instance I can declare the use of the whole program or 
 * of a single method.
 *
 * By the way:
 * <- these stars are automatically created when writing a multi-line comment,
 * but they are no necessesity
 *
 */
```

## How Many Comments Does a Source Code Need?
That is a question for which there is no clear answer. There are programmers who expect every line of code to be commented on. This is not necessary with our simple programs. Basically, at least the following program parts should be commented on:

- A comment at the beginning, which describes the purpose of the program.
- Each method must be commented on, and in particular the input parameters and possible returns.
- Mathematically or logically demanding commands or special 'gimmicks' that the programmer has considered.

<div class="box_info">
    <i class="fa fa-info fa-fw" aria-hidden="true" style="color: #42acf3;"></i>
  If you want to continue to deal with the topic, then look at <a href="https://en.wikipedia.org/wiki/Javadoc">Wikipedia</a>
</div>

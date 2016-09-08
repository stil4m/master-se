# Lecture 4 - Functional Programming and Imperative Programming  
<small>2015-09-21 - Jan van Eijck</small>

#### Question Session

**How do we know that we have tested enough?**

_We can never verify our program, we can only falsify it. When we are not able to falsify is, it does not mean we have verified it._

#### 4 Ingredients of imperative programming

1.  Variable Assignment: `<var> := <expr>`
2.  Conditional Execution: `if <bexpr> then <statement1> else <statement2>`
3.  Sequential Composition: `<statement1> ; <statement2>`
4.  Iteration: `while <expr> do <statement>`

#### Recursion

Read: Recursion on the second argument is easier for the compiler

#### Fixed Point

Fixed point removed the recursion from a procedure.

#### History of programming

```
           Turing                           Church
              |                                 |
Von Neumann  Turing Machine                   Lambda Calculus     Milner
        \     |                                 |                 /
          ---Imperative Programming           Functional Languages
              |
             Stored Program Computation
```

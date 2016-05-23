# Lecture 5 - Sudoku Problem Solving and Problem Generation  
<small>2015-09-28 - Jan van Eijck</small>

#### Relations as Functions

A relation is implemented as a function (a property).

```
Rel a => a -> a -> Bool
```

#### P vs. NP

*   Polynomial time
*   Nondeterministic Polynomial time

##### SAT solving for propositional logic

*   Given $\varphi$ is there a $V$ that makes $\varphi$ true? (NP)
*   Given $\varphi$ and $V$, does make $V$ $\varphi$ true? (P)

#### Sudoku Problem Solving

Use an injective function to check the solution. When all map to 1, the solution is unique.

#### Partial Application (Techday)

```
Rel a => a -> a -> Bool

> r :: Rel Int
> r 5 :: Int -> Bool
```

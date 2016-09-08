# Lecture 2 - Specification and Testing<br><small>2015-09-07 - Jan van Eijck</small>

#### Questions Session

**How to create a formula to show that there are indefinitely many primes?**

First we write down the properties:

*   $n$ is a natural number ($n \in \mathbb{N}$)
*   $n$ is at least 2 ($2 $geq 2$)
*   For no natural number $m$ with $m$ between $1$ and $n$, it is the case that $m$ divides $n$ ($\neg \exists m \in \mathbb{N} D m n$)

Then we can state the property of being a prime as:

$P_n := n \in \mathbb{N} \land n \leq 2 \land \neg \exists m \in \mathbb{N} (1 < m < n \land D m n)$

With this definition we can state that:

Theorem *:  
$\forall n \in \mathbb{N} (P_n \rightarrow \exists m \in \mathbb{N} (P_m \land n \lt m))$

**Proof (Euclid)**

<div class="proof">

Thm (\*)

*   Suppose not *
*   Then there is a finite set $\{ P_1,P_2,...,P_n \}$ of all the primes.
*   Now consider the number $N = P_1 \cdot P_2 \cdot ... \cdot P_n + 1$.
*   Take an arbitrary $Q \in \{ P_1,P_2,...,P_n \}$, then not $D Q N$.
*   Then there are two cases possible:
    *   $N$ is prime, then we have shown the contradiction for \*.
    *   $N$ is not prime, thus $N$ is of the form $K \cdot L$ (composite),  
        which recursively factorises to a new prime that is not in $\{ P_1,P_2,...,P_n \}$, which shows the contradiction.
*   Thus the assumption contradicts, thus the theorem holds.

</div>

#### Preconditions and Postconditions

The most general form of an <span style="text-decoration: underline;">operation</span>: `f :: a -> a`

Operation is a function that maps from domain a to domain a. Can be seen imperative programming where you map from environment to environment.

$\{p\} f \{q\}$

*   p is the precondition
*   f is the operation
*   q is the postcondition

The precondition should be as week as possible. This way we accept the greatest domain. Example: $a$ should be a list.

```
isTrue :: a -> Bool
isTrue = True
```

All cases are relevant. This is the weakest property for a precondition.

JvE: To be sure if the wrong code is in your test or in your code, testing involves cleverness

```
isOrdered :: Ord a => [a] -> Bool
isOrdered [] = True
isOrdered (x:xs) = all (>=) xs && isOrdered xs
```

Could be optimized just by checking if `x < y` in `(x:y:ys)`

#### Random

Random is not functional. In functional programming a function always has the same outcome. This is not what random produces. If it is not functional, it is IO. `f :: a -> IO ()`

Random implementations are using monadic functions

#### Quicksort and Test Generation

Automated test generation can be implemented using a relation function that validates the mapped data to a boolean.

```
f :: a -> ... -> b
r :: a -> ... -> b -> Bool
```

Shorthand notations:

```
f _ x = succ x
f = \ _x -> succ x
f = \ _ x -> succ
f _ = succ
```

**Testing focus:**

Test each property in the post conditions.

Input will be generated based on the preconditions.

If p' is stronger than p and $\{p\} f \{q\}$, then $\{ p' \} f \{ q \}$, because more properties ruling out elements in the domain.

If q' gets weaker than $q$ and $\{p\} f \{q\}$, then $\{p\} f \{q'\}$, because a greater set is allowed as image for the same domain on $f$.

The goal is to have weak $p$ and strong $q$, this way we allow the greatest domain as possible on a certain image.

Read about 'Karl Popper'.

```
(#) :: (a -> a) -> (a -> a) -> a -> a
(#) = flip (.)
```

When we have `f :: a -> a` and `g :: a -> a`,  
Then $\\{p\\} f \\{q\\} \land \\{q\\} g \\{r\\} \rightarrow \\{p\\} f \cdot g \\{r\\}$.

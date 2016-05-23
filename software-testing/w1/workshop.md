# Workshop Testing and Formal Methods, Week 1

<div class="panel panel-default">

<div class="panel-heading">
Prove by induction that it holds for all natural numbers $n$ that:
$1 + 2 + \cdots + n = \frac{n(n+1)}{2}$
</div>

<div class="panel-body">

To be proved: $1 + 2 + \cdots + n = \frac{n(n+1)}{2}$.

**Base case:**

For $n = 0$ then $\frac{0(0+1)}{2} = 0$ which is clearly the sum of all natural numbers up to 0\. Thus the base case holds.

**Induction step:**

Assume $1 + 2 + \cdots + n = \frac{n(n+1)}{2}$. We have to prove that $1 + 2 + \cdots + k + (k+1) = \frac{(k+1)(k+2)}{2}$

$\frac{(k+1)(k+2)}{2} = 1 + 2 + \cdots + k + (k+1)$

$\frac{(k+1)(k+2)}{2} \stackrel{ih}{=} \frac{k(k+1)}{2} + (k+1)$

$\frac{(k+1)(k+2)}{2} = \frac{k(k+1)}{2} + \frac{2(k+1)}{2}$

$\frac{(k+1)(k+2)}{2} = \frac{k(k+1) + 2(k+1)}{2}$

$\frac{(k+1)(k+2)}{2} = \frac{(k+1)(k+2)}{2}$

Thus the equation holds.

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">Prove by induction that it holds for all natural numbers $n$ that:
$1^2 + 2^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$</div>

<div class="panel-body">

To be proved: $1^2 + 2^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$.

**Base case:** 0

For $n = 1$ then $\frac{1(1+1)(21+1)}{6} = 1 = 1^2$. Thus the base case holds.

**Induction step:**

Assume $1^2 + 2^2 + \cdots + n^2 = \frac{n(n+1)(2n+1)}{6}$. We have to prove that $1^2 + 2^2 + \cdots + k^2 + (k+1)^2 = \frac{(k+1)(k+2)(2(k+1)+1)}{6}$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} = 1^2 + 2^2 + \cdots + k^2 + (k+1)^2$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} \stackrel{ih}{=} \frac{k(k+1)(2k+1)}{6} + (k+1)^2$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} = \frac{k(k+1)(2k+1)}{6} + \frac{6(k+1)^2}{6}$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} = \frac{k(k+1)(2k+1) + 6(k+1)^2}{6}$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} = \frac{(k+1)(k(2k+1) + 6(k+1))}{6}$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} = \frac{(k+1)(2k^2 + 7k + 6)}{6}$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} = \frac{(k+1)(k+2)(2k + 3)}{6}$

$\frac{(k+1)(k+2)(2(k+1)+1)}{6} = \frac{(k+1)(k+2)(2(k+1) + 1)}{6}$

Thus the equation holds.

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">Prove by induction that it holds for all natural numbers $n$ that:
$1^3 + 2^3 + \cdots + n^3 = \left(\frac{n(n+1)}{2}\right)^2$</div>

<div class="panel-body">

To be proved: $1^3 + 2^3 + \cdots + n^3 = \left(\frac{n(n+1)}{2}\right)^2$.

**Base case:** 0

For $n = 1$ then $\left(\frac{1(1+1)}{2}\right)^2 = 1 = 1^3$. Thus the base case holds.

**Induction step:**

Assume $1^3 + 2^3 + \cdots + n^3 = \left(\frac{n(n+1)}{2}\right)^2$. We have to prove that $1^3 + 2^3 + \cdots + k^3 + (k+1)^3 = \left(\frac{(k+1)(k+2)}{2}\right)^2$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 = 1^3 + 2^3 + \cdots + k^3 + (k+1)^3$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 \stackrel{ih}{=} \left(\frac{k(k+1)}{2}\right)^2 + (k+1)^3$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 = \left(\frac{k^2(k+1)^2}{4}\right) + (k+1)^3$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 = \left(\frac{k^2(k+1)^2}{4}\right) + \frac{4 (k+1)^3}{4}$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 = \frac{k^2(k+1)^2 + 4 (k+1)^3}{4}$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 = \frac{(k+1)^2(k^2 + 4k + 4)}{4}$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 = \frac{(k+1)^2(k+2)^2}{4}$

$\left(\frac{(k+1)(k+2)}{2}\right)^2 = \left(\frac{(k+1)(k+2)}{2}\right)^2$

Thus the equation holds.

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">
Prove by induction that if A is a finite set with $|A| = n$, then $|\varphi(A)| = 2^n$</div>

<div class="panel-body">

**Power set implementation**

```
pow :: [a] -> [[]]
pow []     = []
pow (x:xs) = map (x:) (pow xs) ++ (pow xs)
```

**Base case:** $|\emptyset| = 0$ and $2^0 = 1$ which holds because $\varphi(\emptyset) = \{\emptyset\}$

**Induction step:**

Assume that if $|A| = k$, then $|\varphi(B)| = 2^k$

We have to show that if $|B| = k + 1$, then $|\varphi(B) = 2^{k+1}$

Assume we have an arbitrary $B$ (which is a non empty set).

There is some $A \subseteq B$ for which $|A| = k$.

There is a $x \in B$ for which $B = A \cup \{x\}$.

$\varphi(B) = \varphi(A \cup \{x\}) \land x \not\in A$

$\varphi(B) = \varphi(A) \cup \{ \{x\} \cup c\ |\ c \in \varphi(A) \}$

$|\varphi(B)| = |\varphi(A)| + |\{ \{x\} \cup c\ |\ c \in \varphi(A) \}|$ <small>-- Only for disjoints! ($x \not \in A$)</small>

$|\varphi(B)| = 2^k + 2^k$

$|\varphi(B)| = 2^{k+1}$

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">

A permutation of a list is a reordering of the members of a list. Here is a Haskell implementation:

```
perms :: [a] ->[[a]]
perms [] = [[]]
perms (x:xs) = concat (map (insrt x) (perms xs)) where
  insrt x [] = [[x]]
  insrt x (y:ys) = (x:y:ys) : map (y:) (insrt x ys)
```

Find a formula (closed form) for the number of permutations of a list of n distinct objects, and prove your guess by induction.</div>

<div class="panel-body">

When executing the code:

```
lenght $ perms [] = -- 1
lenght $ perms [1] = -- 1
lenght $ perms [1..2] = -- 2
lenght $ perms [1..3] = -- 6
lenght $ perms [1..4] = -- 24
lenght $ perms [1..5] = -- 120
```

My guess would be $\pi(n) = n!$. Now we have to prove this.

**Base case:**$\pi(0) = 0! = 1 = |{[]}|$, which holds to the given implementation.

**Induction step:**

Assume $n!$ is the number of permutations for $A$ when $|A| = n$. Suppose we would add an element $x$ to $A$, we can add it before each element in $A$ or at the end, thus we have $|A| + 1 = n + 1$ positions to place $x$. The number of permutation for $A \cup \{x\}$ would then be $n! + (n+1)$, which is $(n+1)!$.

Thus the equation $\pi(n) = n!$ holds.

**Interesting note from Malvin:** Proving can be more helpful than testing

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">Prove by induction that it holds for all natural numbers $n$ that:
$3^{2n+3} + 2^n$ is divisible by $7$.</div>

<div class="panel-body">

**Base case:**

For $n = 0$ then $3^{2 \cdot 0+3} + 2^0 = 28$. Which is clearly divisible by 7\. Thus the base case holds

**Induction step:**

Assume 3^{2n+3} + 2^n is divisible by 7 and thus is equal to $7a$.

$3^{2(n+1)+3} + 2^{n+1}$

$\rightarrow 3^{2n + 2 + 3} + 2 \cdot 2^{n}$

$\rightarrow 3^2 + 3^{2n + 3} + 3^2 * 2^n - (3^2 - 2) 2^{n}$

$\rightarrow 3^2(3^{2n + 3} + 2^n) - 7 \cdot 2^{n}$

$\stackrel{ih}{\rightarrow} 3^2\cdot 7a - 7 \cdot 2^{n}$

$\rightarrow 7(3^2 a - 2^{n})$

Which is clearly divisible by 7.

Thus the assertion holds.

</div>

</div>

#### Base case not equal to 0

<div class="panel panel-default">

<div class="panel-heading">Show by induction that for all natural numbers $n$ with $n \ge 3$ it holds that $n^2 \gt 2n$.</div>

<div class="panel-body">

To be proved: $n^2 \gt 2n$ for $n \ge 3$.

**Base case:** Let $n = 3$, then $3^2 = 9 \gt \gt 2 \cdot 3 = 6$. Thus the base case holds.

**Induction step:**

Assume $n^2 \gt 2n$ holds for $n \ge 3$.

We have to prove $(n+1)^2 \gt 2(n+1)$

$(n+1)^2 \gt 2(n+1) \rightarrow n^2 + 2n + 1 \gt 2n + 2$

$(n+1)^2 \gt 2(n+1) \rightarrow n^2 + 1 \gt 2$

Since $n \ge 3$, $n^2 + 1$ will always be greater than $2$ and thus $(n+1)^2 \gt 2(n+1)$ will hold.

Thus the equation holds.

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">Show by induction that for all natural numbers $n$ with $n \ge 5$ it holds that $2^n \gt n^2$.</div>

<div class="panel-body">

To be proved: $2^n \gt n^2$ for $n \ge 5$.

**Base case:** Let $n = 5$, then $2^5 = 32 \gt 5^2 = 25$. Thus the base case holds.

**Induction step:**

Assume $2^n \gt n^2$ holds for $n \ge 5$.

We have to prove $2^{n+1} \gt (n+1)^2$.

$2^{n+1} \gt (n+1)^2 \rightarrow 2^n \cdot 2 = 2^n + 2^n \gt n^2 + 2n + 1$

From the previous exercise $n^2 \gt 2n$ and since $ n \ge 5$, it will hold that $n^2 \ge 2n +1$. Then:

$2^{n+1} \gt (n+1)^2 \rightarrow 2^n \cdot 2 = 2^n + 2^n \stackrel{ih}{\gt} n^2 + n^2 \ge n^2 + 2n + 1$

Thus the equation holds.

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">Consider the following game for two players. Starting situation: a number of matches is on a stack. The players take turns. A move consists in removing 1, 2 or 3 matches from the stack. The player who can make the last move (the move that leaves the stack empty) has won the game. Suppose there are 4N matches on the stack, and the other player moves. How should you respond? Prove by induction that your strategy assures that you will win the game.</div>

<div class="panel-body">

To be proved: When there is a stack of $4n$ matches and player $A$ moves, then player $B$ will win.

**Base case:**

Let $n = 1$ and let the stack of matches be $4$. When player $A$ takes 1, 2 or 3 match(es) than player $B$ will respectively take 3, 2 or 1 match(es) and player $B$ will win the game. Thus the base case holds.

**Induction step:**

Assume that player $B$ will win the game when there are $4n$ matches on the stack and player $A$ has to move.

To be proved: player $B$ will win the game when there are $4(n+1)$ matches on the stack.

From $4(n+1)$, conclude the stack of matches is $4n + 4$. From this and the base proof conclude that player $B$ can always make sure that 4 matches are removed after his turn leaving the stack of size $4n$. With the induction hypothesis we can conclude that player $B$ will win.

</div>

</div>

#### Structural Induction

<div class="panel panel-default">

<div class="panel-heading">Recall the definition of formulas of propositional logic:
$\phi ::= p \mid (\neg \phi) \mid (\phi \land \phi) \mid (\phi \lor \phi) \mid (\phi \rightarrow \phi) \mid (\phi \leftrightarrow \phi)$
Give a recursive definition of the number of occurrences of connectives in a propositional formula.</div>

<div class="panel-body">

The definition would be:

*   $C(p) = 0$
*   $C(\neg \phi) = C(\phi) + 1$
*   $C(\phi \land \psi) = C(\phi \lor \psi) = C(\phi \rightarrow \psi) = C(\phi \leftrightarrow \psi) = C(\phi) + C(\psi) + 1$

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">Give a recursive definition of the number of occurrences of atoms (atomic subformulas) in a formula of propositional logic.</div>

<div class="panel-body">

The definition would be:

*   $A(p) = 1$
*   $A(\neg \phi) = A(\phi)$
*   $A(\phi \land \psi) = A(\phi \lor \psi) = A(\phi \rightarrow \psi) = A(\phi \leftrightarrow \psi) = A(\phi) + A(\psi)$

</div>

</div>

<div class="panel panel-default">

<div class="panel-heading">Let $S(\phi)$ be the number of occurrences of subformulas of a propositional formula $\phi$, let $A(\phi)$ be the number of atoms of $\phi$, and let $C(\phi)$ be the number of connectives of $\phi$. Prove by structural induction:
$S(\phi) = A(\phi) + C(\phi)$, for all propositional formulas $\phi$.</div>

<div class="panel-body">

**Base case:** Let $\phi = p$, then $S(\phi) = 1 = 1 + 0 + A(\phi) + C(\phi)$

**Induction step:**

Assume $S(\phi) = A(\phi) + C(\phi)$ holds for $\phi_1$ and $\phi_2$.

We have to prove for all connectives that the they hold.

*   $S(\neg \phi) = S(\phi) + 1 \stackrel{ih}{=} A(\phi) + 1 + C(\phi) = A(\neg \phi) + C(\neg \phi)$
*   $S(\phi_1 \land \phi_2) = S(\phi_1) + S(\phi_2) + 1 \stackrel{ih}{=} A(\phi_1) + A(\phi_2) + C(\phi_1) + C(\phi_2) + 1 = A(\phi_1 \land \phi_2) + C(\phi_1 \land \phi_2) $

The rest of the cases like $\lor$ $\leftrightarrow$ and $\rightarrow$ are the same as $\land$.

Thus the assertion holds.

</div>

</div>

#### Structural Induction (Trees)

Consider the following definition of binary trees:

```
data Btree a = Leaf a | Node (Btree a) (Btree a) deriving (Eq,Show)
```

The depth of a binary tree is given by:

```
depth :: Btree a -> Int
depth (Leaf _) = 0
depth (Node t1 t2) = max (depth t1) (depth t2) + 1
```

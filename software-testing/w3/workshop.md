# Workshop Testing and Formal Methods, Week 3

#### Question 1 and 2

##### Draw trees for the equations

1) $\neg (\neg ( \neg p ) )$

```
¬(¬(¬p))
     |
  ¬(¬p)
     |
    ¬p
     |
     p
```

```

  ¬
  |
  ¬
  |
  ¬
  |
  p

```

2) $\neg (p \lor (\neg q))$

```
¬(p | (¬q) )
    |
  p | (¬q)
  |     |
  p    ¬q
        |
        q

```

```
    ¬
    |
   (|)
  |   |
  p   ¬
      |
      q

```

3) $\neg((\neg p) \land (\neg q))$

```
¬((¬p) ^ (¬q))
       |
  (¬p) ^ (¬q)
    |      |
   ¬p     ¬q
    |      |
    p      q
```

```
    ¬
    |
    ^
  |   |
  ¬   ¬
  |   |
  p   q
```

4) $(p \rightarrow q) \leftrightarrow ((\neg q) \rightarrow (\neg p))$

```
(p → q) ↔ ((¬q) → (¬p))
   |            |
(p → q)    (¬q) → (¬p)
 |   |       |      |
 p   q      ¬q     ¬p
             |      |
             q      p
```

```
      ↔
     / \
    /   \
    →     →
  /  \   / \
 p   q  ¬   ¬
        |   |
        q   p
```

#### Question 3<
Give a definition of the set of subformulas of a formula $\varphi$.

$sf(\varphi) = \{\varphi\}$  
$sf(\neg\varphi) = \{\neg\varphi\} \cup sf(\varphi)$  
$sf(\varphi_1 \land \varphi_2) = \{\varphi_1 \land \varphi_2\} \cup sf(\varphi_1) \cup sf(\varphi_2)$  
ect... (for the other binary operators)


#### Question 4

```
subfs :: Form -> [Form]
subfs (Prop x) = [Prop x]
subfs (Neg f) = Neg f : subfs f
etcetera for the other binary operators

subfsize = length.num.subfs
```

#### Question 5

**1)**

```
¬(¬(¬ p))
0 1 0 1
1 0 1 0
*
```

**2)**

```
¬(p | (¬ q) )
0 1 1  0 1
0 1 1  1 0
1 0 0  0 1
0 0 1  1 0
*

```

**3)**

```

¬((¬ p) ^ (¬ q))
1  0 1  0  0 1
1  0 1  0  1 0
1  1 0  0  0 1
0  1 0  1  1 0
*
```

**4)**

```
(p → q) ↔ ((¬ q) → (¬ p))
 1 1 1  1   0 1  1  0 1
 1 0 0  1   1 0  0  0 1
 0 1 1  1   0 1  1  1 0
 0 1 0  1   1 0  1  1 0
        *
```

#### Question 6

CNF:

```
L ::= P | ¬p
D ::= L | L or D
C ::= D | D ^ C
```

1. `¬(¬(¬ p))` as `¬p`
1. `¬(p | (¬ q) )` as `¬p ^ q`
1. `¬((¬ p) ^ (¬ q))` as `p | q`
1. `(p → q) ↔ ((¬ q) → (¬ p))` as `p | ¬p`

#### Question 7

DNF:

```
L ::= P | ¬p
C ::= L | L ^ C
C ::= C | C or D
```

#### Question 8

* Tautology: 3
* Contradiction: 2, 4
* Satisfiable: 1, 2, 4, 5


#### Question 9

Simplify

```
if not (guess != secret1 &amp;&amp; guess != secret2)
  print "You win."
else
  print "You lose."
end
```

as

```
if (guess == secret1 &amp;&amp; guess == secret2)
  print "You win."
else
  print "You lose."
end
```

#### Question 10

Simplify

```
if guess != secret1
  if guess != secret2 print "You lose." else print "You win."
else
  print "You win."
end
```

as

```
if guess != secret1 &amp;&amp; guess != secret2
  print "You lose."
else
  print "You win."
end
```

#### Question 11

```
quess1 != secret1 &amp;&amp; quess2 != secret2 &amp;&amp; quess3 == secret3

```

#### Question 12
<small>All truths in the truth table with a disjunction.</small>

$
(\neg p \land q \land r) \lor
(p \land \neg q \land r) \lor
(\neg p \land q \land \neg r) \lor
(p \land \neg q \land \neg r) \lor
(\neg p \land \neg q \land \neg r)
$


#### Question 13
<small>All falses with a negation in front of them.</small>

$
(\neg p \lor \neg q \lor \neg r) \land
(p \lor q \lor \neg r) \land
(\neg p \lor \neg q \lor r)
$

# Lecture 1 - Functional Programming and Logic
<small>2015-08-31 - Jan van Eijck</small>

#### Lazy Lists

**What is a lazy list?**

A list that is possibly infinite and evaluates lazy

Example:

<pre>take 10 [0..]</pre>

#### List Processing

With list processing you always have at least two cases. The empty case and the non-empty.

```
mytake :: Int -> [a] -> [a]
mytake _ []     = []
mytake n (x:xs) = if n <= 0 then [] else x : mytake (n-1) xs
```

```
sentence = "sentences can go on " ++ andOn
andOn    = "and on" ++ andOn
```

Definition by recursion: `mytake`

Definition by co-recursion: `sentence`

[Co-recursion:](https://en.wikipedia.org/wiki/Corecursion) There is no base case. Can only produce infinite lists.

```
sentences = "sentences can go on " : andSoOn
andSoOn = map (++ "and so on") sentences
```

```
mymap :: (a -> b) -> [a] -> [b]
mymap _ [] = []
mymap f (x:xs) = f x : mymap f xs
```

#### Properties

All of the form `(a -> Bool)`.

Suppose the domain $\mathbb{N}$ `{1, 2, 3, ...}`  
Properties of $\mathbb{N}$ are `odd`, `even`, `prime`.  
Relations are: $\lt$, $\leq$, `d x y`.

From these definitions (domain, properties and relations) we can talk about $\mathbb{N}$ with logical formulas.

```
nats :: [Integer]
nats = [0..]
```

*   ##### _"There is no largest natural number"_

    $\forall n \in \mathbb{N} \exists m \in \mathbb{N} n \lt m$

*   ##### _"There is a smallest natural number"_

    $\exists n \in \mathbb{N} \forall m \in \mathbb{N} n \leq m$

We can say these two formulas, we reason about them that they are correct, but we cannot prove them. The reason why these properties are hard to check is because of the universal quantifier.

<table class="table">
<tbody>
<tr>
<td>Existential</td>
<td>Universal</td>
</tr>
<tr>
<td>$\exists n \in \mathbb{N} Odd(n)$ `any odd nats`</td>
<td>$\forall n \in \mathbb{N} Even(n)$  `all odd nats`</td>
</tr>
<tr>
<td>We can verify this, but not falsify it.</td>
<td>We can falsify this, but not verify it.</td>
</tr>
</tbody>
</table>

#### Implementation of some functions

```
myall :: (a -> Bool) -> [a] -> Bool
myall p []     = True
myall p (x:xs) = p x && myall p xs
```

```
myany p :: (a -> Bool) -> [a] -> Bool
myany p []     = False
myany p (x:xs) = p x || myany p xs
```

We can see duplications in the code. **A (good) functional programmer abstracts patterns**.

**Official implementations**

```
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f z []     = z
foldr f z (x:xs) = f x (foldr f z xs)

all :: (a -> Bool) -> [a] -> Bool
all = foldr (&&) True

any :: (a -> Bool) -> [a] -> Bool
any = foldr (||) False
```

#### Sieve of Eratosthenes

```
sieve :: [Integer] -> [Integer]
sieve (n:ns) = n : sieve ( filter (\m -> rem m n /= 0) ns)

eprimes = sieve [2..]
```

This only works because of lazy list processing. (Due to the co-recursion and infinite list)

#### Induction

**Proof with domino's as metaphor:**

If we can prove we can drop the first domino and we can prove that a domino will be dropped by the preceding domino then we can prove that all domino's can be dropped.

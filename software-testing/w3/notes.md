# Lecture 3 - More on Hoare Logic and Propositional Logic  
<small>2015-09-14 - Jan van Eijck</small>

#### Questions Session

**How to implement a stop command?**

```
iterate :: (a -> a) -> a -> [a]
iterate = ...

iterate succ 0

iterateWithStop :: (a -> a) -> (a -> Bool) -> a -> [a]
iterateWithStop f p a =  testIt (iterate f x) where
  testIt (x:xs) = if p x then [] else x : testIt
  -- alternative implementation
  testIt = takeWhile (not.p)
```

#### Imperative programming in an functional language

`x:= x + 1` needs an environment (and memory allocation).

```
until :: (a -> Bool) -> (a -> a) -> a -> a
until p f x  = if p x then x else until p f (f x)

until clean (lather # rinse)
-- needs env as param (x)
```

#### How not to write fibonacci

```
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 2) + fib (n - 1)
```

This requires re-computation. Better preserve state with an $n$.

Exponential blow up can be identified with a recursive definition that calls itself at least twice.

#### Testing

Relevant tests are tests that satisfy the preconditions.

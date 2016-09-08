# Workshop Testing and Formal Methods, Week 5

#### Information

##### Natural Induction

Given $\varphi$ (property about $\mathbb(N)$)

To prove for all $n$ $\varphi(n)$ where $n \ge 0$:

*   Prove $\varphi(0)$
*   Suppose $\varphi(n)$, prove $\varphi(n+1)$

##### Tree induction

Given $\varphi$ (property about $T$)

To prove for all $t$ $\varphi(t)$

*   Suppose $\varphi(c_1(t)) \land \varphi(c_2(t)) \land ... \land \varphi(c_n(t))$. Prove $\varphi(t)$

_This only holds for labeled trees (with both children and values)_

#### Questions

----
##### 1) Define a function `leafCount :: Blt a -> Int` that counts the number of leaf nodes in a binary tree.

```
leafCount :: Blt a -> Int
leafCount (Leaf _) = 1
leafCount (Node x y) = leafCount x  + leafCount y
```

----
##### 2) Define a function mapB that does for binary trees what map does for lists. The type is: `mapB :: (a -> b) -> Blt a -> Blt b`


```
mapB :: (a -> b) -> Blt a -> Blt b
mapB f (Leaf x) = Leaf (f x)
mapB f (Node x y) = Node (leafCount f x) (leafCount f y)
```

----
##### 3) Define a function `count :: Tree a -> Int` that counts the number of nodes of a tree.

```
count :: Tree a -> Int
count (T _ xs) = 1 + sum (map count xs)
```

----
##### 4) How can you test depth for correctness? Or can you perhaps prove that it is correct?

The function gives the correct result on the example trees above. But again we can do better than test. The function is correct for trees without subtrees, for these have depth 0\. If the function is correct for all trees in `ts`, then it is correct of trees of the form `T _ ts`, for these have depth equal to the maximum of the depth of the subtrees, plus one.

----
##### 5) Define a function mapT that does for trees what map does for lists. The type is: `mapT :: (a -> b) -> Tree a -> Tree b`


```
mapT :: (a -> b) -> Tree a -> Tree b
mapT f (T v ts) = T (f v) (map (mapT f) ts)
```

----
##### 6) How can you test mapT from the previous question for correctness? Or can you perhaps prove that it is correct?

The base case is the case of a tree of the form T x []. Here the result should be T (f x) [], and that is what the function gives us. For the recursive case, assume mapT f yields the correct result of all trees in ts. Then map collects these results, and finally (f x) is put at the top node. This is also correct.

----
##### 7) Write a function collect that collects the information in a tree of type Tree a in a list of type [a]. The type specification is `collect :: Tree a -> [a]`

```
collect :: Tree a -> [a]
collect T x ts = x : (concatMap collect ts)
```

----
##### 8) Redefine count, depth, collect and mapT f in terms of foldT.

```
foldT :: (a -> [b] -> b) -> Tree a -> b
foldT f (T x ts) = f x (map (foldT f) ts)
```

```
count :: Tree a -> Int
count = foldT (\ _ xs -> 1 + length xs)
```

```
depth :: Tree a -> Int
depth = foldT (\ _ xs -> if null xs then 0 else 1 + maximum xs)
```

```
collect :: Tree a -> [a]
collect = foldT (\ x xs -> x : concat xs)
```

```
mapT :: (a -> b) -> Tree a -> Tree b
mapT f = foldT (\ x xs -> T (f x) xs)
```

----
##### 9) Can you predict the value of the following:

```
count (grow (\x -> if x < 6 then [x+1, x+1] else []) 0)
```

Trees produced by grow are fully balanced. The count will give the size. The formula $2^{n+1}-1$ will give the number of nodes. For $n = 6$ this will result in $127$.

----
##### 10) Consider the following tree:

```
tree n = grow (f n) (1,1)

f n = \ (x,y) -> if x+y <= n then [(x,x+y),(x+y,y)] else []
```

Can you show that the number pairs (x, y) that occur in tree n are precisely the pairs in the set:

$\{(x, y)\ |\ 1 \le x \le n, 1 \le y \le n\ with\ x,\ y\ co-prime\}$

TODO

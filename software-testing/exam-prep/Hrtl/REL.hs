module Hrlt.REL

where

import Data.List
import Hrlt.SetOrd

-- Section 5.3 Implementing relations as sets of pairs
type Rel a = Set(a, a)

domR :: Ord a => Rel a -> Set a
domR (Set r) = list2set [x | (x, _) <- r]

ranR :: Ord a => Rel a -> Set a
ranR (Set r) = list2set [y | (_, y) <- r]

idR :: Ord a => Set a -> Rel a
idR (Set xs) = Set [(x, x) | x <- xs]

totalR :: Set a -> Rel a
totalR (Set xs) = Set [(x, y) | x <- xs, y <- xs]

invR :: Ord a => Rel a -> Rel a
invR (Set []) = Set []
invR (Set ((x, y):r)) = insertSet (y, x) (invR (Set r))

inR :: Ord a => Rel a -> (a, a) -> Bool
inR r (x, y) = inSet (x, y) r

complR :: Ord a => Set a -> Rel a -> Rel a
complR (Set xs) r = Set [(x, y) | x <- xs, y <- xs, not (inR r (x, y))]

reflR :: Ord a => Set a -> Rel a -> Bool
reflR set = subSet (idR set)

irreflR :: Ord a => Set a -> Rel a -> Bool
irreflR (Set xs) r = all (not . inR r) [(x, x) | x <- xs]

symR :: Ord a => Rel a -> Bool
symR (Set []) = True
symR (Set ((x, y):pairs)) | x == y    = symR (Set pairs)
                          | otherwise = inSet (y, x) (Set pairs) && symR (deleteSet (y, x) (Set pairs))

transR :: Ord a => Rel a -> Bool
transR (Set []) = True
transR (Set s) = and [trans pair (Set s) | pair <-s] where
    trans (x, y) (Set r) = and [inSet (x, v) (Set r) | (u, v) <- r, u == y]


infixr 5 @@

(@@) :: Eq a => Rel a -> Rel a -> Rel a
(Set r) @@ (Set s) = Set (nub [(x, z) | (x, y) <- r, (w, z) <- s, y == w])

repeatR :: Ord a => Rel a -> Int -> Rel a
repeatR r n | n < 1     = error "argument < 1"
            | n == 1    = r
            | otherwise = r @@ repeatR r (n - 1)

-- Exercise 5.52
restrictR :: Ord a => Set a -> Rel a -> Rel a
restrictR (Set xs) (Set r) = Set [(x, y) | (x, y) <- r, inSet x (Set xs)]

-- Exercise 5.53
closBackground :: Ord a => Rel a -> Set a
closBackground r = unionSet (domR r) (ranR r)

rclosR :: Ord a => Rel a -> Rel a
rclosR r = unionSet r (idR (closBackground r))

sclosR :: Ord a => Rel a -> Rel a
sclosR r = unionSet r (invR r)

--Exercise 5.54
tclosR :: Ord a => Rel a -> Rel a
tclosR r = tclos r r 1 where
   tclos r s x | transR s  = s
               | otherwise = tclos r (unionSet s (repeatR r x)) (x + 1)

--Exercise 5.55
inDegree :: (Eq a) => Rel a -> a -> Int
inDegree (Set s) e = length [ y | (_,y) <-s, y == e]

outDegree :: (Eq a) => Rel a -> a -> Int
outDegree (Set s) e = length [ x | (x,_) <-s, x == e]

--Exercise 5.56
sources :: (Eq a) => Rel a -> Set a
sources (Set r) = Set (nub [ x | (x,_) <- r, inDegree (Set r) x == 0])

--Exercise 5.56
sinks :: (Eq a) => Rel a -> Set a
sinks (Set r) = Set (nub [ y | (_,y) <- r, outDegree (Set r) y == 0])

-- Section 5.4 Implementing relations as functions

type Rel' a = a -> a -> Bool

emptyR' :: Rel' a
emptyR' _ _ = False

list2rel' :: Eq a => [(a, a)] -> Rel' a
list2rel' = curry elem

idR' :: Eq a => [a] -> Rel' a
idR' xs x y = x == y && elem x xs

invR' :: Rel' a -> Rel' a
invR' = flip

inR' :: Rel' a -> (a, a) -> Bool
inR' = uncurry

reflR' :: [a] -> Rel' a -> Bool
reflR' xs r = and [r x x | x <- xs]

irreflR' :: [a] -> Rel' a -> Bool
irreflR' xs r = and [ not (r x x) | x <- xs]

symR' :: [a] -> Rel' a -> Bool
symR' xs r = and [not (r x y && not (r y x)) | x <- xs, y <- xs]

transR' :: [a] -> Rel' a -> Bool
transR' xs r = and [not (r x y && r y z && not(r x z)) | x <- xs, y <- xs, z <- xs]

unionR' :: Rel' a -> Rel' a -> Rel' a
unionR' r s x y = r x y || s x y

intersR' :: Rel' a  -> Rel' a -> Rel' a
intersR' r s x y = r x y && s x y

reflClosure' :: Eq a => Rel' a -> Rel' a
reflClosure' r = unionR' r (==)

symClosure' :: Rel' a -> Rel' a
symClosure' r = unionR' r (invR' r)

compR' :: [a] -> Rel' a -> Rel' a -> Rel' a
compR' xs r s x y = or [r x y && s z y | z <- xs]

repeatR' :: [a] -> Rel' a -> Int -> Rel' a
repeatR' xs r n | n < 1     = error "argument < 1"
                | n == 1    = r
                | otherwise = compR' xs r (repeatR' xs r (n-1))

--Exercise 5.58

transClosure' :: [a] -> Rel' a -> Rel' a
transClosure' xs r | transR' xs r = r
                   | otherwise   = transClosure' xs (unionR' r (compR' xs r r))

-- Section 5.6 Equivalence Classes and Partitions

--Exercise 5.84
rclass :: Rel' a -> a -> [a] -> [a]
rclass r x = filter (r x)

--Exercise 5.106
stirling :: Int -> Int -> Int
stirling _ 1 = 1
stirling n k | n == k    = 1
             | otherwise = k * stirling (n - 1) k + stirling (n - 1) (k - 1)

bell :: Int -> Int
bell n = sum $ map (stirling n) [1..n]

--Exercise 5.111
listPartition :: Eq a => [a] -> [[a]] -> Bool
listPartition xs xss = all (`elem` xs) $ concat xss &&
                       all (flip elem $ concat xss) xs &&
                       isPartition xss [] where
    isPartition :: Eq a => [[a]] -> [a] -> Bool
    isPartition [] _ = True
    isPartition ([]:xs) _ = False
    isPartition (x:xs) ys | any (`elem` ys) x = False
                          | otherwise = isPartition xs (x ++ ys)

--Exercise 5.112
listpart2equiv :: Ord a => [a] -> [[a]] -> Rel a
listpart2equiv xs xss | not (listPartition xs xss) = error "partition is not a valid partition of list"
                      | otherwise = doFold $ map (totalR . list2set) xss where
    doFold :: Ord a => [Rel a] -> Rel a
    doFold [x] = x
    doFold (Set x:xs) = unionSet (Set x) (doFold xs)

--Exercise 5.114
equiv2listpart :: Ord a => Set a -> Rel a -> [[a]]
equiv2listpart (Set s) (Set r) | not $ reflR (Set s) (Set r) && symR (Set r) && transR (Set r) = error "Input releation is not an equivalence"
                              | otherwise  = createParts s r where
    createParts s r = nub $ map (\q -> [ x | (x,y) <-r, y == q] ) s

--Exercise 5.115
equiv2part :: Ord a => Set a -> Rel a -> Set (Set a)
equiv2part s r = Set (map Set $ equiv2listpart s r)

-- Section 5.7 Integer Partitions
type Part = [Int]

type CmprPart = (Int,Part)

expand :: CmprPart -> Part
expand (0,p) = p
expand (n,p) = 1 : expand (n-1, p)

nextpartition :: CmprPart -> CmprPart
nextpartition (k,x:xs) = pack (x - 1) (k+x, xs)

pack :: Int -> CmprPart -> CmprPart
pack 1 (m,xs) = (m,xs)
pack k (m,xs) = if k > m then pack (k-1) (m,xs)
                else          pack k     (m-k,k:xs)

generatePs :: CmprPart -> [Part]
generatePs p@(n,[])     = [expand p]
generatePs p@(n,x:xs) = expand p : generatePs(nextpartition p)

part :: Int -> [Part]
part n | n < 1     = error "part: argument <= 0"
       | n == 1    = [[1]]
       | otherwise = generatePs (0,[n])

--Exercise 5.125
coins :: [Int]
coins = [200, 100, 50, 20, 10, 5, 2, 1]

change :: Int -> [Int]
change n | n < 0     = error "Input must be a positive number"
         | otherwise = buildChange n coins [] where
    buildChange 0 _ o      = o
    buildChange n (x:xs) o | x > n     = buildChange n       xs     o
                           | otherwise = buildChange (n - x) (x:xs) (x:o)

--Exercise 5.126
nextCoinPartition :: CmprPart -> CmprPart
nextCoinPartition (k,x:xs) = packCoins (x - 1) (k+x,xs)

packCoins :: Int -> CmprPart -> CmprPart
packCoins 1 (m,xs) = (m,xs)
packCoins k (m,xs) = if k <= m && elem k coins then packCoins k (m-k,k:xs)
                     else packCoins (k - 1) (m, xs)


generateCoinPs :: CmprPart -> [Part]
generateCoinPs p@(n,[]) = [expand p]
generateCoinPs p@(n,x:xs) = expand p : generateCoinPs (nextCoinPartition p)

partCoins :: Int -> [Part]
partCoins n | n < 1 = error "partCoins: argument <= 0"
       | n == 1 = [[]]
       | otherwise = generateCoinPs (packCoins m (n-m, [m]))
    where
    m = maximum $ filter (<=n) coins


-- Exercise 6.39
bijectionIdentityUpperBound :: Int -> Int
bijectionIdentityUpperBound n = maximum $ map product $ part n

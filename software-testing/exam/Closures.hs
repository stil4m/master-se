module Closures

where
import Data.List

type Rel a = [(a,a)]

uniqueRelOp :: Eq b => ((a,a) -> b) -> Rel a -> [b]
uniqueRelOp f xs = nub (map f xs)

relDomain :: Eq a => Rel a -> [a]
relDomain = uniqueRelOp fst

relRange :: Eq a => Rel a -> [a]
relRange = uniqueRelOp snd

composite :: Eq a => Rel a -> Rel a
composite r = nub [(x,z) | (x,y) <- r, (y',z) <- r, y == y']

-- unionR :: Eq a => Rel a -> Rel a -> Rel a
-- unionR [] ys = ys
-- unionR (x:xs) ys = if x `elem` ys then xs `unionR` ys else xs `unionR` (x:ys)

reflR :: Eq a => [a] -> Rel a
reflR = map (\x -> (x,x))

reflClosure :: Eq a => Rel a -> Rel a
reflClosure xs = xs `union` reflR (relDomain xs `union` relRange xs)

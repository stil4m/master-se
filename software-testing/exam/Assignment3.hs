module Assignment3

where
import Data.List
import Test.QuickCheck

type FrequencyList = [(Char,Int)]

freqList :: String -> FrequencyList
freqList s = foldr mergeC [] (sort s) where
  mergeC a [] = [(a,1)]
  mergeC a (b@(c,n):bs) = if a == c then (c, n+1) : bs else (a,1) : b :bs

-- Test Helper Functions
countChar :: Char -> String -> Int
countChar c s = length (filter (==c) s)

-- Test Execution
testSumIsEqualToLength :: IO ()
testSumIsEqualToLength = quickCheck (\s -> sum (map snd (freqList s)) == length s)

testOccurenceEachChar :: IO ()
testOccurenceEachChar = quickCheck (\s -> all (\(c,n) -> countChar c s == n) (freqList s))

propUniqueCharEnty :: String -> Bool
propUniqueCharEnty s = all (\(c,_) -> length (filter ((==c).fst) r) == 1 ) r
  where r = freqList s

testUniqueCharEnty :: IO ()
testUniqueCharEnty = quickCheck propUniqueCharEnty

module PreCond


where
import Test.QuickCheck


numToOdd :: Integer -> Integer
numToOdd 0 = 0
numToOdd n = if odd n then n else numToOdd (div n 2)

prop_num_to_odd_with_odd :: Integer -> Property
prop_num_to_odd_with_odd n = odd n ==> numToOdd n == n

prop_num_to_odd_zero :: Bool
prop_num_to_odd_zero = numToOdd 0 == 0

prop_num_to_odd_with_even :: Integer -> Property
prop_num_to_odd_with_even n = n > 0 && even n ==> numToOdd n /= n

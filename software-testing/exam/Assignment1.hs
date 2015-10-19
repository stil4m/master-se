module Assignment1

where
import Test.QuickCheck

-- Assignment 1
type Code = [Int]

-- Translate bit lists to the corresponding (non-negative) integers.

bits2integer :: Code -> Integer
bits2integer [] = 0
bits2integer (x:xs) = toInteger x + 2 * bits2integer xs

-- Translate non-negative integers to bit lists
-- I'll only do the <= 0 check once, otherwise I would perform the check in every recursive cycle.
integer2bits :: Integer -> [Int]
integer2bits n = if n < 0 then error "Not a negative number" else integer2bits' n
  where
  integer2bits' 0 = []
  integer2bits' n = if odd n then 1 : integer2bits (div (n-1) 2) else 0 : integer2bits (div n 2)


-- Test properies

-- Due to the fact that [1,0,0] is equal to [1] we need a function to verify that these two are equal
equalCode :: Code -> Code -> Bool
equalCode [] ys = all (==0) ys
equalCode xs [] = all (==0) xs
equalCode (x:xs) (y:ys) = x == y && equalCode xs ys

-- Instead of using an precondition I'll use abs to only generate numbers where `n' >= 0`
propInverseFromInteger :: Integer -> Bool
propInverseFromInteger n = bits2integer (integer2bits n') == n'
  where n' = abs n

propInverseFromCode :: Code -> Bool
propInverseFromCode n = equalCode n' (integer2bits (bits2integer n'))
  where n' = map (\x -> if odd x then 1 else 0) n

propFailOnNegative :: Integer -> Bool
propFailOnNegative n = null (integer2bits n')
  where n' = negate (abs n)


-- Test execution
testInverseFromInteger :: IO ()
testInverseFromInteger = quickCheck propInverseFromInteger

testInverseFromCode :: IO ()
testInverseFromCode = quickCheck propInverseFromCode

testFailOnNegative :: IO()
testFailOnNegative = quickCheck (expectFailure propFailOnNegative)

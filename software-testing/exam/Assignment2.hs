module Assignment2

where

-- Generating a infinite list of floats using the square root function
listOfFloats :: [Float]
listOfFloats = map sqrt [1..]

-- Checking a function to have the property even for 1000 floats
maybeEven :: (Float -> Float) -> Bool
maybeEven f = all (\n -> f n == f (negate n)) (take 1000 listOfFloats)

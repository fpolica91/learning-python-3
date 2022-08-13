module Lib
  ( someFunc,
    compoundInterest,
    velocity,
  )
where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- mult
compoundInterest :: Int -> Double -> Double
compoundInterest 0 x = x
compoundInterest n x = 1.05 * (compoundInterest (n - 1) x)

velocity s t = s / t
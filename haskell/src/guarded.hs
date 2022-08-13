module Lib () where

fizzbuzz :: Int -> String
fizzbuzz n
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 3 == 0 = "Fizz"
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = show n

isPalindrome :: String -> Bool
isPalindrome s
  | s == reverse s = True
  | otherwise = False

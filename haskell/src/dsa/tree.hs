module Lib () where

data Tree a = Leaf a | Node (Tree a) (Tree a) deriving (Show)

a tree = Node (Leaf 1) (Node (Leaf 2) (Leaf 3))

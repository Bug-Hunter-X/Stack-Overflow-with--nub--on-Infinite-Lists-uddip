# Haskell Nub Function and Infinite Lists

This example demonstrates a potential issue with Haskell's `nub` function from `Data.List` when applied to infinite lists. The `nub` function aims to remove duplicate elements from a list, but this process requires traversing the entire list.  When presented with an infinite list, this traversal leads to a stack overflow error.

The provided code showcases this problem and offers a solution using more efficient techniques for dealing with potentially infinite sequences.

## How to reproduce the issue:

1. Save the code in `bug.hs`.
2. Compile and run the code using `ghc bug.hs && ./bug`.
3. Observe the stack overflow error during the execution of `print infiniteNub`.

## Solution:

The solution file (`bugSolution.hs`) demonstrates a way to handle this situation more gracefully.
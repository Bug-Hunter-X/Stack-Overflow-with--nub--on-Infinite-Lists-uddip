```haskell
import Data.List (nub)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = nub xs
  print ys -- prints [1,2,3,4,5]

  let zs = [1,1,2,2,3,3]
  let ws = nub zs
  print ws --prints [1,2,3]

  let emptyList = []
  let emptyNub = nub emptyList
  print emptyNub -- prints []

  let infiniteList = [1..] -- An infinite list
  let infiniteNub = nub infiniteList

  print infiniteNub -- This will cause a stack overflow!
```
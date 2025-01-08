```haskell
import Data.List (nub)
import qualified Data.Set as Set

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
  -- Avoid using nub directly with infiniteList
  let finiteList = take 1000 infiniteList  --take a finite subset of the list
  let finiteNub = nub finiteList
  print finiteNub

  -- Using Data.Set for efficient duplicate removal from potentially large lists
  let infiniteSet = Set.fromList infiniteList
  print (Set.toList infiniteSet) --This will not cause a stack overflow, but it will only print the first few elements
  -- because `print` can not handle infinite lists

  let finiteSet = Set.fromList $ take 10000 infiniteList
  print (Set.toList finiteSet) -- prints a list with no duplicates
```
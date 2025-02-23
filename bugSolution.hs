The solution uses a more efficient approach by building the map using a fold, which avoids creating intermediate maps.  This prevents the space leak.

```haskell
import qualified Data.Map as Map

main :: IO ()
main = do
  let finalMap = loop 1000000
  print $ Map.size finalMap

loop :: Int -> Map.Map Int Int
loop n = Map.fromList $ [(i, i) | i <- [1..n]]
```
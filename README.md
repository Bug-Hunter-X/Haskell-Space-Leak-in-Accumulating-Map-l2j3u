# Haskell Space Leak Example

This repository demonstrates a common space leak in Haskell that can occur when repeatedly updating a persistent data structure like `Data.Map` within a loop without proper garbage collection mechanisms. The `bug.hs` file shows the problematic code. The `bugSolution.hs` demonstrates a solution that uses an accumulating function to mitigate the space leak.
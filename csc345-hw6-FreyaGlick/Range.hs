{- ##################################
   David G. Cooper
   Driver Program for range function

   Depends on : Prog6.hs - for range function
   Usage: ghc Range.hs; ./Range

   ################################## -}

import Text.Show
import Prog6

main = result
    where 
        result = do 
            v <- range
            putStrLn (show v)
                    
{- ##################################
   David G. Cooper
   Driver Program for countLetters function

   Depends on : Prog6.hs - for countLetters function
   Usage: ghc CountLetters.hs; ./CountLetters

   ################################## -}

import Text.Show
import Prog6

main = result
    where 
        result = do 
            v <- countLetters
            putStrLn (show v)
                    
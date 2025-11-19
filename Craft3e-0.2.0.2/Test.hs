module Test where  

import PicturesSVG
    
ex :: Integer
ex = 3+4

double :: Integer -> Integer
double x = 2*x

trip :: Integer -> Integer
trip y = 3*y

pic1 :: Picture
pic1 = horse `beside` flipV (invert horse)

pic2 :: Picture
pic2 = pic1 `above` invert pic1
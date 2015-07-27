NB. rational numbers +. -------------------------------------------------

gcd=: 4 : 0 " 0
 x=. |x
 y=. |y
 while. r=. y|x do.
  x=. y
  y=. r
 end.
)

X=: %/ 0 1x + ?2 100$2e9
Y=: %/ 0 1x + ?2 100$2e9

X (+. -: gcd) Y
0 (+. -: gcd) Y
X (+. -: gcd) 0
X (+. -: gcd) X

X=: (+%)/\90$1x
(i{X) (+. -: gcd) j{X [ i=: ?10$#X [ j=: ?10$#X


4!:55 ;:'gcd i j X Y'



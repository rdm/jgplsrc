NB. *. ------------------------------------------------------------------

f =. 10 12&o."0"_

(f -: *.) r.?10 20$1000
(f -: *.) 0.1*_500+?200$1000

(f -: *.) 271j1 391j1 513j1

a -: [&.*. a=.0.1*_50j_50+j.&?~100$100

(3,o.1) -: *. _3

10 = # ((10$39)$&.>1) *./&.> (10$25)$&.>1

'domain error' -: *. etx <'abc'
'domain error' -: *. etx 'abc'

X=: j./ _50   + 2 10000 ?@$ 100
Y=: j./ _50   + 2 10000 ?@$ 100
(X*.Y) -: Y*.X
X=: j./ _5000 + 2 10000 ?@$ 10000
Y=: j./ _5000 + 2 10000 ?@$ 10000
(X*.Y) -: Y*.X

'domain error' -: 'abc' *. etx 4
'domain error' -: 'abc' *.~etx 4
'domain error' -: 4     *. etx <'abc'
'domain error' -: 4     *.~etx <'abc'

'length error' -: 3 4   *. etx 5 6 7
'length error' -: 3 4   *.~etx 5 6 7
'length error' -: 3 4   *. etx i.5 6
'length error' -: 3 4   *.~etx i.5 6

4!:55 ;:'a f X Y'



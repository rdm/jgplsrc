NB. x: and infinity -----------------------------------------------------

match=: -:&(3!:1)
xi   =: x:^:_1

( 64=type X), 5 _ -: X=: 5x  _
( 64=type X), 5 _ -: X=: 5r1 _

(128 -: type X), _  1r2 match X=:x:  _ 0.5
(128 -: type X), __ 1r2 match X=:x: __ 0.5

(8 -: type X), _ __ 225 match X=:xi _ __ 225x
(8 -: type X), _ __ 2   match X=:xi _ __ 2x
(8 -: type X), _ __ 0.5 match X=:xi _ __ 1r2

0r1 -:  5r_
0r1 -: _5r_

'ill-formed number' -: ex ' _r_ '
'ill-formed number' -: ex ' _r__'
'ill-formed number' -: ex '__r_ '
'ill-formed number' -: ex '__r__'


NB. infinite integers and rationals and comparatives --------------------

_  5x  = _  5x
__ 5x  = __ 5x
_  5r1 = _  5r1
__ 5r1 = __ 5r1
_  5x  = _  5r1
__ 5x  = __ 5r1

0 0 -: _  2x =  99999x
0 0 -: _  2x = _99999x
0 0 -: __ 2x =  99999x
0 0 -: __ 2x = _99999x

pinf=: {. _  5x
ninf=: {. __ 5x

pinf > ninf
pinf > _99999x
pinf > - 10^100x
pinf > 0x
pinf > 99999x
pinf > 10^100x

(  10^100x) > ninf
99999x      > ninf
0x          > ninf
_99999x     > ninf
(- 10^100x) > ninf

-. pinf > pinf
-. ( 10^100x) > pinf
-. (-10^100x) > pinf
-. ninf > pinf
-. ninf > 0x
-. ninf > ninf

pinf >: ninf
pinf >: _99999x
pinf >: - 10^100x
pinf >: 0x
pinf >: 99999x
pinf >: 10^100x
pinf >: pinf

(  10^100x) >: ninf
99999x      >: ninf
0x          >: ninf
_99999x     >: ninf
(- 10^100x) >: ninf
ninf        >: ninf

-. ( 10^100x) >: pinf
-. (-10^100x) >: pinf
-. ninf >: pinf
-. ninf >: 0x


NB. infinite integers and rationals and primitives ----------------------

_  5x match _  2x +  _ 3x
_  5x match _  2x +  5 3x
_  5x match _  2x + _5 3x
__ 5x match __ 2x + __ 3x
__ 5x match __ 2x +  5 3x
__ 5x match __ 2x + _5 3x

_  5r2 match _  2r2 +  _ 3r2
_  5r2 match _  2r2 +  5 3r2
_  5r2 match _  2r2 + _5 3r2
__ 5r2 match __ 2r2 + __ 3r2
__ 5r2 match __ 2r2 +  5 3r2
__ 5r2 match __ 2r2 + _5 3r2

'NaN error' -: _  2x  + etx __ 5x
'NaN error' -: _  2r1 + etx __ 5r4
'NaN error' -: __ 2x  + etx _  5x
'NaN error' -: __ 2r1 + etx _  5r4


Y=: }. 5x _ __
'NaN error' -: Y    +. etx  12x
'NaN error' -: Y    +. etx _12x
'NaN error' -:  12x +. etx Y
'NaN error' -: _12x +. etx Y
'NaN error' -: Y +. etx  Y
'NaN error' -: Y +.  etx |.Y

Y=: }. 5r1 _ __
'NaN error' -: Y    +. etx  12x
'NaN error' -: Y    +. etx _12x
'NaN error' -:  12x +. etx Y
'NaN error' -: _12x +. etx Y
'NaN error' -: Y +. etx  Y
'NaN error' -: Y +.  etx |.Y

_  5x match _  8x - __ 3x
_  5x match _  8x -  5 3x
_  5x match _  8x - _5 3x
__ 5x match __ 8x -  _ 3x
__ 5x match __ 8x -  5 3x
__ 5x match __ 8x - _5 3x

__ _5x match _  8x -~__ 3x
__ _5x match _  8x -~ 5 3x
__ _5x match _  8x -~_5 3x
_  _5x match __ 8x -~ _ 3x
_  _5x match __ 8x -~ 5 3x
_  _5x match __ 8x -~_5 3x

_  5r2 match _  8r2 - __ 3r2
_  5r2 match _  8r2 -  5 3r2
_  5r2 match _  8r2 - _5 3r2
__ 5r2 match __ 8r2 -  _ 3r2
__ 5r2 match __ 8r2 -  5 3r2
__ 5r2 match __ 8r2 - _5 3r2

__ _5r2 match _  8r2 -~__ 3r2
__ _5r2 match _  8r2 -~ 5 3r2
__ _5r2 match _  8r2 -~_5 3r2
_  _5r2 match __ 8r2 -~ _ 3r2
_  _5r2 match __ 8r2 -~ 5 3r2
_  _5r2 match __ 8r2 -~_5 3r2

'NaN error' -: _  2x  - etx _  5x
'NaN error' -: _  2r1 - etx _  5r4
'NaN error' -: __ 2x  - etx __ 5x
'NaN error' -: __ 2r1 - etx __ 5r4


_1 = * {. __ 2x
_1 = * {. __ 2r3
1  = * {. _  2x
1  = * {. _  2r3

0 0 -: 0 * _  2x
0 0 -: 0 * __ 2x
0 0 -: 0 * _  2r5
0 0 -: 0 * __ 2r5


Y=: }. 5x _ __
'NaN error' -: Y    *. etx  12x
'NaN error' -: Y    *. etx _12x
'NaN error' -:  12x *. etx Y
'NaN error' -: _12x *. etx Y

X=: {. _  5x
Y=: {. __ 5x

'NaN error' -: X *. etx X
'NaN error' -: X *. etx Y
'NaN error' -: Y *. etx X
'NaN error' -: Y *. etx Y

Y=: }. 5r1 _ __
'NaN error' -: Y    *. etx  1r2
'NaN error' -: Y    *. etx _1r2
'NaN error' -:  1r2 *. etx Y
'NaN error' -: _1r2 *. etx Y

X=: {. _  5r2
Y=: {. __ 5r2

'NaN error' -: X *. etx X
'NaN error' -: X *. etx Y
'NaN error' -: Y *. etx X
'NaN error' -: Y *. etx Y

 5r0 -:  %0x
_5r0 -: -%0x
 5r0 -:  %0r1
_5r0 -: -%0r1

X=: {. _ 5x
(64=type Y),  X  = Y=:  5x % 0x
(64=type Y),(-X) = Y=: _5x % 0x
(64=type Y), 0x  = Y=:  5x % X
(64=type Y), 0x  = Y=: _5x % X

X=: {. _  5x
Y=: {. __ 5x
'NaN error' -: X % etx X
'NaN error' -: X % etx Y
'NaN error' -: Y % etx X
'NaN error' -: Y % etx Y

X=: {. _  5r2
Y=: {. __ 5r2
'NaN error' -: X % etx X
'NaN error' -: X % etx Y
'NaN error' -: Y % etx X
'NaN error' -: Y % etx Y


pinf = | pinf,ninf

Y=: }. 2x _ __
(<'NaN error') = 5 _5x | etx&.>/ Y
(2 2$5 _ __ _5x) -: Y |/ 5 _5x
Y -: 0x | Y

Y=: }. 2r3 _ __
(<'NaN error') = 5 _5r1 |etx&.>/ Y
(2 2$5 _ __ _5r1) -: Y |/ 5 _5r1
Y -: 0r1 | Y

_ 2x match !  _ 2x
_ 2x match !  _ 2r1
_ 2x match ! __ 2x
_ 2x match ! __ 2r1

( 64 -: type X), '_ __ 5'   -: ": X=:_ __ 5x
(128 -: type X), '_ __ 5r3' -: ": X=:_ __ 5r3

'domain error' -: p: etx {. _  12x
'domain error' -: p: etx {. __ 12x
'domain error' -: p: etx {. _  12r7
'domain error' -: p: etx {. __ 12r7

'domain error' -: q: etx {. _  12x
'domain error' -: q: etx {. __ 12x
'domain error' -: q: etx {. _  12r7
'domain error' -: q: etx {. __ 12r7


4!:55 ;:'match ninf pinf X xi Y'



NB. f/@:g for atomic verbs ----------------------------------------------

f=: ;: '! % * + - < = > ^ | <. <: >. >: +. +: *. *: ~: o.'

testsub=: 2 : 0
 xx=: y{~101 23 ?@$ #y
 yy=: y{~101 23 ?@$ #y
 assert. (u/ xx v yy) -: xx u/@:v yy
 assert. (u/ xx v&(0&{.) yy) -: xx u/@:v&(0&{.) yy
 assert. (u/ xx v&(1&{.) yy) -: xx u/@:v&(1&{.) yy
 assert. (u/ xx v&(2&{.) yy) -: xx u/@:v&(2&{.) yy
 x0=: (?#y){y
 y0=: (?#y){y
 assert. (u/ x0 v yy) -: x0 u/@:v yy
 assert. (u/ xx v y0) -: xx u/@:v y0
 1
)

test=: 2 : 0
 if. 'b' e. y do. u testsub v 0 1                          end.
 if. 'c' e. y do. u testsub v a.                           end.
 if. 'i' e. y do. u testsub v        _1000+  1000 ?@$ 2000 end.
 if. 'd' e. y do. u testsub v 4096%~*_1000+  1000 ?@$ 2000 end.
 if. 'z' e. y do. u testsub v j./    _1000+2 1000 ?@$ 2000 end.
)

+  test *  'bidz'
+  test *. 'bidz'
+  test +. 'bidz'
+  test <  'bid'
+  test <: 'bid'
+  test =  'bidz'
+  test ~: 'bidz'
+  test >  'bid'
+  test >: 'bid'

>. test *  'bid'
>. test +  'bid'

*. test +. 'b'
+. test *. 'b'
=  test *. 'b'
~: test *. 'b'

space=: 7!:2
X=: 53 7 ?@$ 1e6
Y=: 53 7 ?@$ 1e6
p=: 13#X
q=: 13#Y
300 > | -/ space 'p +/@:*     q',:'X +/@:*     Y'
300 > | -/ space 'p ([: +/ *) q',:'X ([: +/ *) Y'

space=: 7!:2
X=: 53 7 ?@$ 0
Y=: 53 7 ?@$ 0
p=: 13#X
q=: 13#Y
300 > | -/ space 'p +/@:*     q',:'X +/@:*     Y'
300 > | -/ space 'p ([: +/ *) q',:'X ([: +/ *) Y'

246  -: 2  +/@:* 123
_111 -: 12 */@:- 123


NB. integer overflow handling -------------------------------------------

X=: 23 7 ?@$ 1e4
Y=: 23 7 ?@$ 1e5
(+/X*Y) -: X +/@:* Y

X=: 31 7 ?@$ >.imax%16
Y=: 31 7 ?@$ >.imax%16
(+/X+Y) -: X +/@:+ Y

X=: (31$1 _1) * 31 7 ?@$ >.imax%16
Y=: (31$1 _1) * 31 7 ?@$ >.imax%16
(-/X+Y) -: X -/@:+ Y

X=: 31 7 ?@$ 1e4
Y=: 31 7 ?@$ 1e4
(+/X+ Y) -: X +/@:+  Y
(+/X>.Y) -: X +/@:>. Y

X=: 30 7 ?@$ 1e4
Y=: 30 7 ?@$ 1e4
(+/X+ Y) -: X +/@:+  Y
(+/X>.Y) -: X +/@:>. Y

X=: 31 7 ?@$ >.imax%8
Y=: 31 7 ?@$ >.imax%8
(+/X+ Y) -: X +/@:+  Y
(+/X>.Y) -: X +/@:>. Y

X=: 30 7 ?@$ >.imax%8
Y=: 30 7 ?@$ >.imax%8
(+/X+ Y) -: X +/@:+  Y
(+/X>.Y) -: X +/@:>. Y

(4=3!:0 X) *. (imax-1) = X=: (2-1 1) +/@:* 1, imax-2
(4=3!:0 X) *. (imax-2) = X=: _1 2    +/@:* 1, x:^:_1 <.imax%2x


4!:55 ;:'f p q space test testsub X xx Y yy'



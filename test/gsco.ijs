NB. s: ------------------------------------------------------------------

x0=: ' Cogito , ergo sum.'
y0=: s: x0
y0 -: s: x0
y0 -: _1 s: x0
y0 -: _2 s: 1|.x0
y0 -: _4 s: >;:x0

z0=: ;:x0
(s:^:_1 y0) -: z0
(1 s: y0) -: ;'`',&.>z0
(2 s: y0) -: ;z0,&.>{.a.
(3 s: y0) -: z0,&>((>./ - ]) #&>z0)$&.>{.a.
(4 s: y0) -: >z0
(5 s: y0) -: z0
(, -: _1&s:@(1&s:)) y0
(, -: _2&s:@(2&s:)) y0
(] -: _3&s:@(3&s:)) y0
(] -: _4&s:@(4&s:)) y0
(] -: _5&s:@(5&s:)) y0
(] -: _6&s:@(6&s:)) y0

x1=: ":"0 ?133$12000
y1=: s: x1
y0 -: s: x0
y1 -: s: x1

z1=: (<"1 x1)-.&.>' '
(s:^:_1 y1) -: z1
(1 s: y1) -: ;'`',&.>z1
(2 s: y1) -: ;z1,&.>{.a.
(3 s: y1) -: z1,&>((>./ - ]) #&>z1)$&.>{.a.
(4 s: y1) -: x1
(5 s: y1) -: z1
(, -: _1&s:@(1&s:)) y1
(, -: _2&s:@(2&s:)) y1
(] -: _3&s:@(3&s:)) y1
(] -: _4&s:@(4&s:)) y1
(] -: _5&s:@(5&s:)) y1
(] -: _6&s:@(6&s:)) y1

X=: ;:'anaphoric boustrophedonic chthonic epigrammatic metonymic oxymoronic'
x2=: X,&.>/":&.>?100$150
y2=: s: x2
y0 -: s: x0
y1 -: s: x1
y2 -: s: x2

(s:^:_1 y2) -: x2
(1 s: y2) -: ;,'`',&.>x2
(2 s: y2) -: ;,x2,&.>{.a.
(3 s: y2) -: x2,&>((>./@, - ]) #&>x2)$&.>{.a.
(4 s: y2) -: >x2
(5 s: y2) -: x2
(, -: _1&s:@(1&s:)) y2
(, -: _2&s:@(2&s:)) y2
(] -: _3&s:@(3&s:)) y2
(] -: _4&s:@(4&s:)) y2
(] -: _5&s:@(5&s:)) y2
(] -: _6&s:@(6&s:)) y2

(,1) -: $ s: ' singleton'

(s: '') -: 0$ s: ' ab c'


NB. s: fill -------------------------------------------------------------

(,1) -: $ s: ' '
({.s: ' ') -: {: 5{.s: ' ab c'
0 = 6 s: s: ' '

(2 4$s: ' 0 1 2 3 4 5  ') -: > (s: ' 0 1 2 3'); s: ' 4 5'
(2 4$s: ' 0 1 2 3 4 5  ') -: s:"1 (<;._1 ' 0 1 2 3'),:<;._1 ' 4 5'


NB. 0 s: Y --------------------------------------------------------------

0 s: 11

t=: 0 s: 0
4 -: type t
0 = #$t
1 <: t

t=: 0 s: 1
4 -: type t
0 = #$t
1 <: t

t=: 0 s: 2
4 -: type t
2 = #$t
(0 s: 0) <: #t
*./ (0<:i) *. i<: 0 s: 1 [ i=: (0 s: 0){.+/"1 (0 1){"1 t

t=: 0 s: 3
2 -: type t
1 = #$t
(0 s: 1) <: #t

t=: 0 s: 4
4 -: type t
1 = #$t
(0 s: 0) <: #t
*./ (_1=t) +. (0<:t)*.t<0 s: 0

t=: 0 s: 5
4 -: type t
0 = #$t
(0 <: t) *. (t < 0 s: 0)

t=: 0 s: 6
4 -: type t
0 = #$t
0 <: t

t=: 0 s: 7
4 -: type t
0 = #$t
0 <: t

t=: 0 s: 10
32 -: type t
1 = #$t
(,8) -: $t
t -: 0 s:&.>i.8

0 s: 11

t=: 0 s: 12
4 -: type t
1 = #$t
(,0 s: 0) -: $t
*./ 1 <: t
(0 s: 0) >: >./t


NB. 1 s: Y --------------------------------------------------------------

X=: (;:'now is the time') ,&.>/ ":&.>?100$1e4
Y=: s: X
(;,'`',&.>X) -: 1 s: Y
(,Y) -: _1 s: ;,'*',&.>X

t=: 1 s: Y
2 -: type t
1 = #$t
'`' -: {.t

X=: <"1 ] 97+?31 13 4$26
X=: (?($X)$4){.&.>X
(, X{&.><a.) -: 5 s: _1 s: (; 32,&.>X){a.

(0$s: ' a') -: _1 s: ''


NB. 2 s: Y --------------------------------------------------------------

X=: (;:'bou stro phe don ic') ,&.>/ ":&.>?2 25$1e4
Y=: s: X
(;,X,&.>{.a.) -: 2 s: Y
(,Y) -: _2 s: ;,X,&.>'*'

t=: 2 s: Y
2 -: type t
1 = #$t
({.a.) -: {:t

X=: <"1 ] 97+?31 13 4$26
X=: (?($X)$4){.&.>X
(, X{&.><a.) -: 5 s: _2 s: (; X,&.>0){a.

(0$s: ' a') -: _2 s: ''


NB. 3 s: Y --------------------------------------------------------------

X=: (;:'el eem o syn ary') ,&.>/ ":&.>?2 3 4$1e4
Y=: s: X
m=: >./,i=: #&>X
(>X,&.>(m-i)$&.>{.a.) -: 3 s: Y
Y -: _3 s: >X,&.>(m-i)$&.>{.a.

t=: 3 s: Y
2 -: type t
(($X),m) = $t
(>X,&.>(m-i)$&.>{.a.) -: t

X=: <"1 ] 97+?31 13 4$26
X=: (?($X)$4){.&.>X
(X{&.><a.) -: 5 s: _3 s: (>X){a.


NB. 4 s: Y --------------------------------------------------------------

X=: (;:'el eem o syn ary') ,&.>/ ":&.>?2 3 4$1e4
Y=: s: X
(>X) -: 4 s: Y
Y -: _4 s: >X

t=: 4 s: Y
2 -: type t
(($X),>./,#&>X) = $t
(>X) -: t

X=: <"1 ] 97+?31 13 4$26
X=: (?($X)$4){.&.>X
(X{&.><a.) -: 5 s: _4 s: >X{&.><a.


NB. 5 s: Y --------------------------------------------------------------

X=: (;:'el eem o syn ary') ,&.>/ ":&.>?2 3 4$1e4
Y=: s: X
X -: 5 s: Y
Y -: _5 s: X

t=: 5 s: Y
32 -: type t
($Y) = $t
X -: t


NB. 6 s: Y --------------------------------------------------------------

X=: (;:'el eem o syn ary') ,&.>/ ":&.>?2 3 4$1e4
Y=: s: X

t =: 6 s: Y
4 -: type t
($Y) = $t
Y -: _6 s: t
*./ (0<:t) *.t< 0 s: 0


NB. 7 s: Y --------------------------------------------------------------

X=: (;:'el eem o syn ary') ,&.>/ ":&.>?2 3 4$1e4
Y=: s: X

t =: 7 s: Y
4 -: type t
($Y) = $t


NB. 10 s: Y -------------------------------------------------------------

0 s: 11

X=: 0 s: 10

'domain error' -: 10 s: etx ($X)$0 1
'domain error' -: 10 s: etx ($X)$1 2 3 4
'domain error' -: 10 s: etx ($X)$1 2 3.4
'domain error' -: 10 s: etx ($X)$1 2 3j4
'domain error' -: 10 s: etx ($X)$1 2 3r4
'domain error' -: 10 s: etx ($X)$1 2 3 4x
'domain error' -: 10 s: etx ($X)$' 2 3 4'

'domain error' -: 10 s: etx }.X
'domain error' -: 10 s: etx }:X
'domain error' -: 10 s: etx ,:X
'domain error' -: 10 s: etx {.X

'domain error' -: 10 s: etx X 0}~< 'a'         
'domain error' -: 10 s: etx X 0}~< 100002.4 
'domain error' -: 10 s: etx X 0}~< 100002j4
'domain error' -: 10 s: etx X 0}~< 100002r4
'domain error' -: 10 s: etx X 0}~< ({.X),&.>0
'domain error' -: 10 s: etx X 0}~< 1+#>2{X
'domain error' -: 10 s: etx X 0}~< 1+#>4{X
'domain error' -: 10 s: etx X 0}~< _1e6

'domain error' -: 10 s: etx X 1}~< 'a'         
'domain error' -: 10 s: etx X 1}~< 100002.4    
'domain error' -: 10 s: etx X 1}~< 100002j4    
'domain error' -: 10 s: etx X 1}~< 100002r4    
'domain error' -: 10 s: etx X 1}~< (1{X),&.>0
'domain error' -: 10 s: etx X 1}~< 1+#>3{X   

'domain error' -: 10 s: etx X 3}~< 1234
'domain error' -: 10 s: etx X 3}~< ,:>2{X
'domain error' -: 10 s: etx X 3}~< ($>2{X)$'2'
'domain error' -: 10 s: etx X 3}~< ($>2{X)$2.3
'domain error' -: 10 s: etx X 3}~< ($>2{X)$2j3
'domain error' -: 10 s: etx X 3}~< ($>2{X)$2r3
'domain error' -: 10 s: etx X 3}~< }:"1 >2{X
'domain error' -: 10 s: etx X 3}~< (>2{X),.0


NB. s: errors -----------------------------------------------------------

'domain error' -: s: etx 0 1
'domain error' -: s: etx 0 1 2 3
'domain error' -: s: etx 0 1 2.3
'domain error' -: s: etx 0 1 2j3
'domain error' -: s: etx 0 1 2 3x
'domain error' -: s: etx 0 1 2r3

'domain error' -: s: etx 'abc';0 1
'domain error' -: s: etx 'abc';0 1 2 3
'domain error' -: s: etx 'abc';0 1 2.3
'domain error' -: s: etx 'abc';0 1 2j3
'domain error' -: s: etx 'abc';0 1 2 3x
'domain error' -: s: etx 'abc';0 1 2r3

'domain error' -: 77  s: etx s: ' a b c'
'domain error' -: _39 s: etx s: ' a b c'
'domain error' -: 'a' s: etx s: ' a b c'
'domain error' -: 2.3 s: etx s: ' a b c'
'domain error' -: 2j3 s: etx s: ' a b c'
'domain error' -: 2r3 s: etx s: ' a b c'
'domain error' -: (<2)s: etx s: ' a b c'

'domain error' -: 1   s: etx ' a bc d'
'domain error' -: 2   s: etx ' a bc d'
'domain error' -: 3   s: etx ' a bc d'
'domain error' -: 4   s: etx ' a bc d'
'domain error' -: 5   s: etx ' a bc d'

'domain error' -:  0  s: etx 413
'domain error' -:  0  s: etx 4.3
'domain error' -:  0  s: etx 4j3
'domain error' -:  0  s: etx 4r3
'domain error' -:  0  s: etx 'abc'
'domain error' -: _9  s: etx 0

'domain error' -: ex ' 0&s: b. _1'
'domain error' -: ex ' 7&s: b. _1'
'domain error' -: ex '_7&s: b. _1'

'rank error'   -:     s: etx 'abc';2 3$'foobar'
'rank error'   -: 1 2 s: etx s: ' a bc'


4!:55 ;:'i m t X x0 x1 x2 Y y0 y1 y2 z0 z1'



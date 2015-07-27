NB. ":!.n ---------------------------------------------------------------

'1.23457'       -: ":X=:1.23456789012345
'1.23457'       -: ":!.6 X
'1.23456789012' -: ":!.12 X
'123456789'     -: ":Y=:123456789
'123456789'     -: ":!.4 Y

'domain error' -: ex '":!.''8'''
'domain error' -: ex '":!.0    '
'domain error' -: ex '":!.0.7  '
'domain error' -: ex '":!.(<5) '
'rank error'   -: ex '":!.12 13'
'limit error'  -: ex '":!.67   '


NB. ^!.n ----------------------------------------------------------------

k=:0.25*_50+?100
X=:0.25*_50+?100
f =: 4 : '*/x+(i.y)*k' " 0

X (^!.k -: f) 0
X (^!.k -: f) 1
X (^!.k -: f) 2
X (^!.k -: f) 3

k=:0.25*_50+?   100
X=:0.25*_50+?13$100 
X (^!.k/ -: f/) n=:?7$20

'domain error' -: ex '^!.''8'''
'domain error' -: ex '^!.(<8) '


NB. p.^!.n --------------------------------------------------------------

k =:0.01*_100+?200
f =: 4 : '+/x*y^!.k i.#x' " 1 0
p =: _10+?5$20
p (p.!.k -: f) X=:?3 5$10

'domain error' -: ex 'p.!.''8'''
'domain error' -: ex 'p.!.(<8) '

(4 5$!.''   X) -: 4 5$X,(20-#X)$0   [ X=:?7$1000
(4 5$!.9    X) -: 4 5$X,(20-#X)$9
(4 5$!.9.5  X) -: 4 5$X,(20-#X)$9.5
(4 5$!.9    X) -: 4 5$X,(20-#X)$9   [ X=:r.?12$111
(4 5$!.9    X) -: 4 5$X=:?22$1000
(4 5$!.''   X) -: 4 5$X,(20-#X)$' ' [ X=:'kakistocracy'
(4 5$!.'q'  X) -: 4 5$X,(20-#X)$'q'
(4 5$!.(<3) X) -: 4 5$X,(20-#X)$<3  [ X=:;:'anti dis establish ment arian ism'

'domain error' -: 3 4 $!.'a' etx 4 5 6
'domain error' -: 3 4 $!.'a' etx 4;5;6
'domain error' -: 3 4 $!.4   etx 'abc'
'domain error' -: 3 4 $!.4   etx <"0 i.4
'domain error' -: 3 4 $!.(<4)etx 'abc'
'domain error' -: 3 4 $!.(<4)etx 4 5 6

'rank error'   -: ex '$!.(i.2 3) '
'length error' -: ex '$!.1 2     '
'length error' -: ex '$!.(,''a'')'


NB. #!.n ----------------------------------------------------------------

f =: 4 : '(+.x) #&, y,.k'

(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:?10$1000  [ k=:123
(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:?10$1000  [ k=:0
(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:?10$1000  [ k=:2.3
(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:?10$1000  [ k=:2j3
(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:o.?10$100 [ k=:0

(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:a.{~?10$#a. [ k=:'X' 
(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:a.{~?10$#a. [ k=:' ' 

(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:10$;:'on a clear day' [ k=:<'see forever'
(X f Y) -: X #!.k Y [ X=:j./?2 10$20 [ Y=:10$;:'on a clear day' [ k=:<$0

'domain error' -: 3j4 5 #!.'a' etx 4 5
'domain error' -: 3j4 5 #!.'a' etx 4;5
'domain error' -: 3j4 5 #!.4   etx 'ab'
'domain error' -: 3j4 5 #!.4   etx 4;5
'domain error' -: 3j4 5 #!.(<4)etx 'ab'
'domain error' -: 3j4 5 #!.(<4)etx 4 5

'rank error'   -: ex '#!.(i.2 3) '
'rank error'   -: ex '#!.($0)    '
'rank error' -: ex '#!.1 2     '
'rank error' -: ex '#!.(,''a'')'


NB. {.!.n ---------------------------------------------------------------

(20{.!.0    X) -: X,(20-#X)$0   [ X=:?7$1000
(20{.!.19   X) -: X,(20-#X)$19  [ X=:?7$1000
(20{.!.1.9  X) -: X,(20-#X)$1.9 [ X=:?7$1000
(20{.!.1j9  X) -: X,(20-#X)$1j9 [ X=:?7$1000
(20{.!.9    X) -: 20$X=:?25$1000
(20{.!.'X'  X) -: X,(20-#X)$'X' [ X=:'chthonic'
(20{.!.' '  X) -: X,(20-#X)$' ' 
(20{.!.'X'  X) -: 20$X          [ X=:27$'rapport'
(20{.!.(<12)X) -: X,(20-#X)$<12 [ X=:;:'Cogito, ergo sum.'
(20{.!.a:   X) -: X,(20-#X)$<$0 
(20{.!.(<12)X) -: 20$X          [ X=:27$;:'Cogito, ergo sum.'

'domain error' -: 34 {.!.'a' etx 4 5 6
'domain error' -: 34 {.!.'a' etx 4;5;6
'domain error' -: 34 {.!.4   etx 'abc'
'domain error' -: 34 {.!.4   etx <"0 i.4
'domain error' -: 34 {.!.(<4)etx 'abc'
'domain error' -: 34 {.!.(<4)etx 4 5 6

'rank error'   -: ex '{.!.(i.2 3) '
'rank error'   -: ex '{.!.1 2     '
'rank error'   -: ex '{.!.(,''a'')'


NB. |.!.n ---------------------------------------------------------------

(2|.!.''   X) -: 2}.X,2$0   [ X=:?7$1000
(2|.!.19   X) -: 2}.X,2$19  [ X=:?7$1000
(2|.!.1.9  X) -: 2}.X,2$1.9 [ X=:?7$1000
(2|.!.1j9  X) -: 2}.X,2$1j9 [ X=:?7$1000
(0|.!.9    X) -: X=:?25$1000
(2|.!.'X'  X) -: 2}.X,2$'X' [ X=:'chthonic'
(2|.!.''   X) -: 2}.X,2$' ' 
(0|.!.'X'  X) -: X=:27$'chthonic'
(2|.!.(<12)X) -: 2}.X,2$<12 [ X=:;:'Cogito, ergo sum.'
(2|.!.''   X) -: 2}.X,2$<$0 
(0|.!.(<12)X) -: X=:27$;:'Cogito, ergo sum.'

'domain error' -: 34 |.!.'a' etx 4 5 6
'domain error' -: 34 |.!.'a' etx 4;5;6
'domain error' -: 34 |.!.4   etx 'abc'
'domain error' -: 34 |.!.4   etx <"0 i.4
'domain error' -: 34 |.!.(<4)etx 'abc'
'domain error' -: 34 |.!.(<4)etx 4 5 6

'rank error'   -: ex '|.!.(i.2 3) '

'length error' -: ex '|.!.1 2     '
'length error' -: ex '|.!.(,''a'')'


NB. ,!.n ----------------------------------------------------------------

'domain error' -: 2 4 ,!.'a' etx 2 5$4 5 6
'domain error' -: 2 4 ,!.'a' etx 2 5$4;5;6
'domain error' -: 2 4 ,!.4   etx 2 5$'abc'
'domain error' -: 2 4 ,!.4   etx 2 5$<"0 i.4
'domain error' -: 2 4 ,!.(<4)etx 2 5$'abc'
'domain error' -: 2 4 ,!.(<4)etx 2 5$4 5 6

'rank error'   -: ex ',!.(i.2 3) '
'rank error'   -: ex ',!.1 2     '
'rank error'   -: ex ',!.(,''a'')'


NB. ,.!.n ---------------------------------------------------------------

'domain error' -: (i.2 4) ,.!.'a' etx 2 1 5$4 5 6
'domain error' -: (i.2 4) ,.!.'a' etx 2 1 5$4;5;6
'domain error' -: (i.2 4) ,.!.4   etx 2 1 5$'abc'
'domain error' -: (i.2 4) ,.!.4   etx 2 1 5$<"0 i.4
'domain error' -: (i.2 4) ,.!.(<4)etx 2 1 5$'abc'
'domain error' -: (i.2 4) ,.!.(<4)etx 2 1 5$4 5 6

'rank error'   -: ex ',.!.(i.2 3) '
'rank error'   -: ex ',.!.1 2     '
'rank error'   -: ex ',.!.(,''a'')'


NB. ,:!.n ---------------------------------------------------------------

'domain error' -: 3 4 ,:!.'a' etx 4 5 6
'domain error' -: 3 4 ,:!.'a' etx 4;5;6
'domain error' -: 3 4 ,:!.4   etx 'abc'
'domain error' -: 3 4 ,:!.4   etx <"0 i.4
'domain error' -: 3 4 ,:!.(<4)etx 'abc'
'domain error' -: 3 4 ,:!.(<4)etx 4 5 6

'rank error'   -: ex ',:!.(i.2 3) '
'rank error'   -: ex ',:!.1 2     '
'rank error'   -: ex ',:!.(,''a'')'


NB. !. comparison tolerance ---------------------------------------------

i=:i.22
v=:1+10^-i
(1=v) -: 1 =!.(2^_44) v
(1=v) -: 14 8#0 1
(1=!.0 v) *./ .<: 16 6#0 1

0 0 0 0 1 -: _  =    ] __ 1 2 3 _
0 0 0 0 1 -: _  =!.0 ] __ 1 2 3 _
1 0 0 0 0 -: __ =    ] __ 1 2 3 _
1 0 0 0 0 -: __ =!.0 ] __ 1 2 3 _

'domain error' -: ex '= !.''a''  '
'domain error' -: ex '~:!.1      '
'domain error' -: ex '> !.3j4    '
'domain error' -: ex '<:!.(<3 4) '
'domain error' -: ex '= !.1e_7   '

'rank error'   -: ex '>:!.1e_14 0'


NB. X v!.f Y where X is extended and v requires fill --------------------

(8x         {.!.17 Y) -: 8 {.!.17 Y=: 1 2
((17r2-1r2) {.!.17 Y) -: 8 {.!.17 Y
(8x         $ !.17 Y) -: 8 $ !.17 Y=: 1 2
((17r2-1r2) $ !.17 Y) -: 8 $ !.17 Y
(8x         |.!.17 Y) -: 8 |.!.17 Y=: i.20
((17r2-1r2) |.!.17 Y) -: 8 |.!.17 Y


4!:55 ;:'f i k n p v X Y'



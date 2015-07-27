NB. +Y ------------------------------------------------------------------

t -: +t=.1=?100$2
t -: +t=.  _1e9+?100$2e9
t -: +t=.o.1e_9+?100$2e9

f    =. |@*~ % ]
test =. f -: +
test j./_1e9+?2 100$2e9
test r./_1e7+?2 100$2e7
test 0 3j4

3j_4 -: +3j4

'domain error' -: + etx  'abc'
'domain error' -: + etx <'abc'
'domain error' -: + etx <3 4 5


NB. X+Y -----------------------------------------------------------------

4 = type 1234+5678
4 = type _1234+_5678
4 = type 2e9
4 = type _2e9
4 = type 2147483647

(IF64{8 4) = type 2e9 +3e8
(IF64{8 4) = type 2e15+3e15
(IF64{8 4) = type _2e9 +_3e8
(IF64{8 4) = type _2e15+_3e15
(IF64{8 4) = type 2147483647+1

X=: - Y=: 1+i.100
(X + <._1+2^IF64{31 63x) -: X + <._1+2^IF64{31 63
(Y + <.  -2^IF64{31 63x) -: Y + <.  -2^IF64{31 63

( 2e8*>:i.20) -: +/\20$ 2e8
(_2e8*>:i.20) -: +/\20$_2e8

4 -: 2 + 2
3 -: 7 + _4

2147483648  -:  1+ 2147483647
_2147483649 -: _1+_2147483648

t -: 3+t=.i.?27$2
t -: (t=.i.?27$2)+4
t -: (i.3 4)+t=.i.3 4,?27$2
t -: (t=.i.3 4,?27$2)+i.3 4


NB. complex numbers -----------------------------------------------------

16 -: type 3j4 5j6

(2 3$1 0) -: =3j4 5j6 3j4
1 0 1 -: 3j4 = 3j4 3j_4 3j4
a=.3j4
3j4 -: a
b=:3j4
3j4 -: b

(3j4;5j6;7j8) -: (<3j4),(<5j6),<7j8
0 0j1 1 1 -: <. 0.2j0.2 0.2j0.8 0.8j0.2 0.8j0.8
2j4 -: <:3j4

3j4 -: ><3j4
(<.&.-t) -: >.t=.0.2j0.2 0.2j0.8 0.8j0.2 0.8j0.8
4j4 -: >:3j4

3j_4 -: +3j4
8j10 -: 3j4+5j6
3 4 -: +.3j4
1j1 -: 5j11 +. 3j7

'domain error' -: 'abc' + etx 4
'domain error' -: 'abc' +~etx 4
'domain error' -: 4     + etx <'abc'
'domain error' -: 4     +~etx <'abc'
'domain error' -: 'j'   + etx <'abc'
'domain error' -: 'j'   +~etx <'abc'

'length error' -: 3 4   + etx 5 6 7
'length error' -: 3 4   +~etx 5 6 7
'length error' -: 3 4   + etx i.5 6
'length error' -: 3 4   +~etx i.5 6
'length error' -: 3 4 5 + etx i.4 3
'length error' -: 3 4 5 +~etx i.4 3


NB. X+Y integer overflow handling ---------------------------------------

test  =. + 0&=@:- +&((o.0)&+)
testa =. (+/   0&=@:- +/  @((o.0)&+))@,"0
testb =. (+/\  0&=@:- +/\ @((o.0)&+))@,"0
testc =. (+/\. 0&=@:- +/\.@((o.0)&+))@,"0
X     =: <._1+2^IF64{31 62
Y     =: <.  -2^IF64{31 62

4 = type&> _1 0 +&.> X
4 = type&> _1 0 +&.>~X
4 = type&>  1 0 +&.> Y
4 = type&>  1 0 +&.>~Y

4 = type&> _1 0 +/@,&.> X
4 = type&> _1 0 +/@,&.>~X
4 = type&>  1 0 +/@,&.> Y
4 = type&>  1 0 +/@,&.>~Y

4 = type&> _1 0 +/\@,&.> X
4 = type&> _1 0 +/\@,&.>~X
4 = type&>  1 0 +/\@,&.> Y
4 = type&>  1 0 +/\@,&.>~Y

4 = type&> _1 0 +/\.@,&.> X
4 = type&> _1 0 +/\.@,&.>~X
4 = type&>  1 0 +/\.@,&.> Y
4 = type&>  1 0 +/\.@,&.>~Y

,(2e9 2e9 _2e9 _2e9) test &>/ 1e9 _1e9 1e9 _1e9
,(2e9 2e9 _2e9 _2e9) test &>/~1e9 _1e9 1e9 _1e9
,(2e9 2e9 _2e9 _2e9) testa&>/ 1e9 _1e9 1e9 _1e9
,(2e9 2e9 _2e9 _2e9) testa&>/~1e9 _1e9 1e9 _1e9
,(2e9 2e9 _2e9 _2e9) testb&>/ 1e9 _1e9 1e9 _1e9
,(2e9 2e9 _2e9 _2e9) testb&>/~1e9 _1e9 1e9 _1e9
,(2e9 2e9 _2e9 _2e9) testc&>/ 1e9 _1e9 1e9 _1e9
,(2e9 2e9 _2e9 _2e9) testc&>/~1e9 _1e9 1e9 _1e9

,_2 _1 0 1 2 test &>/ X,Y
,_2 _1 0 1 2 test &>/~X,Y
,_2 _1 0 1 2 testa&>/ X,Y
,_2 _1 0 1 2 testa&>/~X,Y
,_2 _1 0 1 2 testb&>/ X,Y
,_2 _1 0 1 2 testb&>/ X,Y
,_2 _1 0 1 2 testc&>/~X,Y
,_2 _1 0 1 2 testc&>/~X,Y

4!:55 ;:'a b f t test testa testb testc X Y'



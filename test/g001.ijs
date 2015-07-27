NB. =. and =: -----------------------------------------------------------

erase  =: 4!:55
local  =: 4 : '(x)=.y'
global =: 4 : '(x)=:y'

a  =: 1 2 3
aa =: 'foo upon thee'
a  -: 1 2 3
aa -: 'foo upon thee'
erase <'a'
aa -: 'foo upon thee'
aa =: i.4 3
aa -: i.4 3

a =: 3.14
alta =: b =: 'first and last letter'
erase <'a'
alta -: b

Ich_liebe_dich =: 'Je t''aime.'
(#Ich_liebe_dich) -: 0{$Ich_liebe_dich

('first';'second';'third') =: 'Cogito'; 'ergo'; i.12
first  -: 'Cogito'
second -: 'ergo'
third  -: i.12

('a_man';'j_k') =: 123 456
a_man -: 123
j_k  -: 456

names =: ' abc def ghi'
0 0$ (names)   =: i. 3 3
(".;.1 names) -: i. 3 3
4!:55 ;: names

'p q r' =: <"_1 i.3 4
p -: 0 + i.4
q -: 4 + i.4
r -: 8 + i.4

'abc' -: 'p q r' local 'abc'
p -: 0 + i.4
q -: 4 + i.4
r -: 8 + i.4

'abc' -: 'p q r' global 'abc'
p -: 'a'
q -: 'b'
r -: 'c'

'p' =: i.12
p -: i.12
(<'abc') =: X=: ?4 5$100
abc -: X

0 0$ ('p';'q';'r') =: o.4 5 6
p -: o.4
q -: o.5
r -: o.6

'p q r' =: <'Ich liebe dich'
p -: 'Ich liebe dich'
p -: q
p -: r

'Cogito ergo sum'=:i.3 4
Cogito -:   i.4
ergo   -: 4+i.4
sum    -: 8+i.4

'abc'=: i.7
abc -: i.7

NB.  The following lines generate no display

a=:12
'a'=:12

'domain error'      -: ". etx '2 3         =. 9'
'domain error'      -: ". etx '3.5         =. 9'
'domain error'      -: ". etx '3j4         =. 9'

'ill-formed number' -: ". etx '_abc =. 9'

'ill-formed name'   -: ". etx '''p+9'' =. 9'
'ill-formed name'   -: ". etx '''3ab'' =. 9'

'domain error'      -: ". etx '(''p'';2 3  ) =. 9'
'domain error'      -: ". etx '(''p'';3.5  ) =. 9'
'domain error'      -: ". etx '(''p'';3j4  ) =. 9'

'ill-formed name'   -: ". etx '(''p'';''p+9'') =. 9'
'ill-formed name'   -: ". etx '(''p'';''3ab'') =. 9'  
'ill-formed name'   -: ". etx '(''p'';''_ab'') =. 9' 
'ill-formed name'   -: ". etx '''   '' =. 9'
'ill-formed name'      -: ". etx '(''p'';'''') =. 9'

'rank error'        -: ". etx '(<3 4$''a'') =. i.3 4'
'rank error'        -: ". etx '(''p'';3 4$''a'') =. 9'

'length error'      -: ". etx '''pqr s'' =. 4 5 6'
'length error'      -: ". etx '(''p'';''q'';''r'') =. 4 5'
'length error'      -: ". etx '(,<''abc'') =. i.5'

4!:55 ;:'Cogito a abc ergo p q r sum X'
4!:55 ;:'Cogito a abc ergo p q r sum X'


NB. naming side effects -------------------------------------------------

fa =: 3 : 0
 fa=:+/
 2*fa y
)

(2*+/X) -: fa X=:?30$1000
(  +/X) -: fa X

fb =: 3 : ('abc=:25'; 'y+abc')
abc =: 12
37 -: fb abc
50 -: fb abc

abc =: 12
37 -: (3 : ('abc=:25'; 'y+abc')) abc
50 -: (3 : ('abc=:25'; 'y+abc')) abc

37      -: (3&* + 4!:55@((   <'abc')"_)) abc=:12
_1 -: 4!:0 <'abc'
(30$37) -: (3&* + 4!:55@((30$<'abc')"_)) abc=:12
_1 -: 4!:0 <'abc'
37      -: (4!:55@((   <'abc')"_) + 3&*) abc=:12
_1 -: 4!:0 <'abc'
(30$37) -: (4!:55@((30$<'abc')"_) + 3&*) abc=:12
_1 -: 4!:0 <'abc'

lf      =: 10{a.
write   =: 1!:2
sscript =: 0!:0

t=:'X=:'&,@":@i.&.>10-i.10
X=:<'foo.X'
(;t,&.>lf) write X
sscript (20)$X
0 -: X
0!:0 X=:20$<'foo.X'
0 -: X
1!:55 <'foo.X'

X=:>|.t
(".X) -: i."0>:i.10
X -: i.10


NB. reassignment on the same line ---------------------------------------

t=:123456
X=:17
t=:7!:0 ''
X=:i.1e5
(17,i.1e5) -: (X=:17),X
1200 > Y=:t -~ 7!:0 ''

X=:i.1e3
(17,i.1e3) -: (17 [ 4!:55 <'X'),X

4!:55 ;:'b t X Y'
4!:55 ;:'b t X Y'

fa =: 3 : 0
 if. y do.
  x=:i.1e3
  b,(17,i.1e3) -: (x=:17 [ b=.fa y-1),x
 else.
  i.0
 end.
)

fa 1
fa 2
fa 3
fa 4
fa 5  

4!:55 ;:'b X'

fb =: 3 : 0
 if. y do.
  x=:i.1e3
  b, (17,i.1e3) -: (17 [ b=.fb y-1 [ 4!:55 <'x'),x
 else.
  i.0
 end.
)

fb 1
fb 2
fb 3
fb 4
fb 5  

4!:55 ;:'Cogito Ich_liebe_dich a a_man aa abc alta b def erase ergo'
4!:55 ;:'fa fb first'
4!:55 ;:'ghi global j_k lf local names p pqr q r second sscript'
4!:55 ;:'sum t third write X Y'



NB. special code for [: ; <@(f/\);.n and [: ; <@(f/\.);.n ---------------

test=: 1 : 0
 :
 f=: u
 if. *./0=#;.1~x do.
  assert. (0#y)                    -: x ([: ; <@(u/\ );. 1) etx y
  assert. (0#y)                    -: x ([: ; <@(u/\.);. 1) etx y
 else.
  assert. (; x <@(u/\ );. 1 etx y) -: x ([: ; <@(u/\ );. 1) etx y
  assert. (; x <@(u/\.);. 1 etx y) -: x ([: ; <@(u/\.);. 1) etx y
 end.
 if. *./0=#;.2~x do.
  assert. (0#y)                    -: x ([: ; <@(u/\ );. 2) etx y
  assert. (0#y)                    -: x ([: ; <@(u/\.);. 2) etx y
 else.
  assert. (; x <@(u/\ );. 2 etx y) -: x ([: ; <@(u/\ );. 2) etx y
  assert. (; x <@(u/\.);. 2 etx y) -: x ([: ; <@(u/\.);. 2) etx y
 end.
 if. *./0=#;._1~x do.
  assert. (0#y)                    -: x ([: ; <@(u/\ );._1) etx y
  assert. (0#y)                    -: x ([: ; <@(u/\.);._1) etx y
 else.
  assert. (; x <@(u/\ );._1 etx y) -: x ([: ; <@(u/\ );._1) etx y
  assert. (; x <@(u/\.);._1 etx y) -: x ([: ; <@(u/\.);._1) etx y
 end.
 if. *./0=#;._2~x do.
  assert. (0#y)                    -: x ([: ; <@(u/\ );._2) etx y
  assert. (0#y)                    -: x ([: ; <@(u/\.);._2) etx y
 else.
  assert. (; x <@(u/\ );._2 etx y) -: x ([: ; <@(u/\ );._2) etx y
  assert. (; x <@(u/\.);._2 etx y) -: x ([: ; <@(u/\.);._2) etx y
 end.
 1
)

testb=: 4 : 0
 x <  test y
 x <. test y
 x <: test y
 x >  test y
 x >. test y
 x >: test y
 x =  test y
 x +  test y
 x -  test y
 x +. test y
 x +: test y
 x *  test y
 x *. test y
 x *: test y
 x ~: test y
)

n=: 547

X testb Y [ X=:  n$0 [ Y=: ? n   $2
X testb Y [ X=:  n$0 [ Y=: ?(n,7)$2
X testb Y [ X=:  n$1 [ Y=: ? n   $2
X testb Y [ X=:  n$1 [ Y=: ?(n,7)$2
X testb Y [ X=: ?n$2 [ Y=: ? n   $2
X testb Y [ X=: ?n$2 [ Y=: ?(n,7)$2

testn=: 4 : 0
 x =  test y
 x <  test y
 x <. test y
 x >. test y
 x +  test y
 x +. test y
 x -  test y
 x *  test y
)

X testn Y [ X=:  n$0 [ Y=:     _5e3+? n   $1e4
X testn Y [ X=:  n$0 [ Y=: 0.1*_5e3+? n   $1e4
X testn Y [ X=:  n$0 [ Y=:     _5e3+?(n,3)$1e4
X testn Y [ X=:  n$0 [ Y=: 0.1*_5e3+?(n,3)$1e4
X testn Y [ X=:  n$1 [ Y=:     _5e3+? n   $1e4
X testn Y [ X=:  n$1 [ Y=: 0.1*_5e3+? n   $1e4
X testn Y [ X=:  n$1 [ Y=:     _5e3+?(n,3)$1e4
X testn Y [ X=:  n$1 [ Y=: 0.1*_5e3+?(n,3)$1e4
X testn Y [ X=: ?n$2 [ Y=:     _5e3+? n   $1e4
X testn Y [ X=: ?n$2 [ Y=: 0.1*_5e3+? n   $1e4
X testn Y [ X=: ?n$2 [ Y=:     _5e3+?(n,3)$1e4
X testn Y [ X=: ?n$2 [ Y=: 0.1*_5e3+?(n,3)$1e4

testbw=: 4 : 0
 for_i. 16+i.16 do.
  x i b. test y
 end.
)

X testbw Y [ X=:  n$0 [ Y=: _5e8+?n$1e9
X testbw Y [ X=:  n$1 [ Y=: _5e8+?n$1e9
X testbw Y [ X=: ?n$2 [ Y=: _5e8+?n$1e9

testov=: 4 : 0
 x +  test y
 x -  test y
 x >. test y
 x <. test y
)

X testov Y [ X=:  n$0 [ Y=: (?n$#Y){Y=: _1 1 , <.(_1+2^31),-2^31
X testov Y [ X=:  n$1
X testov Y [ X=: ?n$2


NB. special code for [: ; <@f;.n ----------------------------------------

(X ([: ; <@|.;.1) etx Y) -: ; X <@|.;.1 etx Y=: $. (#X)$100

P=: 1 : '[: ; <@:u;.1'
X=: 1 (0)}0=1019 ?@$ 4

(X  +/;.1 Y) -: X  +/P Y=: (#X) ?@$ 100
(X >./;.1 Y) -: X >./P Y
(X  +/;.1 Y) -: X  +/P Y=: (#X) ?@$ 0
(X >./;.1 Y) -: X >./P Y

(X  ([: ,  +/;.1) Y) -: X  +/P Y=: ((#X),3) ?@$ 100
(X  ([: , >./;.1) Y) -: X >./P Y
(X  ([: ,  +/;.1) Y) -: X  +/P Y=: ((#X),3) ?@$ 0
(X  ([: , >./;.1) Y) -: X >./P Y


4!:55 ;:'f n P test testb testbw testi testn testov X Y'



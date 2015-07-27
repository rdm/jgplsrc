NB. integer operations --------------------------------------------------

B =: IF64{31 63

V =: 1 : 'x ;  x& x:'
E =: 1 : 'x -: x&.x:'
EI=: 1 : 'x E *. 4&=@type@:x'
C =: 1 : 'x E *. x E~'
CI=: 1 : 'x C *. 4&=@type@:x'
xi=: x:^:_1

permute=: ?~@# { ]


NB. integers remain as integers  ----------------------------------------

<:   EI imax
>:   EI imin

f=: 3 : 0
 xx=: y $ xi imax <.@% x: y
 assert. +/   EI  xx
 assert. +/\  EI  xx
 assert. +/\. EI  xx
 assert. +/   EI -xx
 assert. +/\  EI -xx
 assert. +/\. EI -xx
 assert. +/   EI yy=: permute ,   xx  ,. -     (#xx) ?@$ 100
 assert. +/\  EI yy
 assert. +/\. EI yy
 assert. +/   EI yy=: permute , (-xx) ,.       (#xx) ?@$ 100
 assert. +/\  EI yy
 assert. +/\. EI yy
 assert. +/   EI yy=: permute ,   xx  (- ,. ]) (#xx) ?@$ 100
 assert. +/\  EI yy
 assert. +/\. EI yy
 assert. +/   EI yy=: permute , (-xx) (+ ,. ]) (#xx) ?@$ 100
 assert. +/\  EI yy
 assert. +/\. EI yy
 1
)

f 3
f 4
f"0 >: 5 ?@$ 100

+: EI X=: xi imax <.@% 2x
+: EI X=: xi imin >.@% 2x

f=: 3 : 0
 n=: <. (0=(2^.yy)|B) -~ yy ^. imax [ yy=: y
 assert. */   EI xx=: n $ yy
 assert. */\  EI xx
 assert. */\. EI xx
 assert. */   EI xx=: permute yy * n$1 _1
 assert. */\  EI xx
 assert. */\. EI xx
 assert. */   EI xx=: permute n # q: yy
 assert. */\  EI xx
 assert. */\. EI xx
 assert. */   EI xx=: (1,0=(<:#xx) ?@$ 10) */;.1 xx
 assert. */\  EI xx
 assert. */\. EI xx
 1
)

f"0 <. (2+10 ?@$ 20) %: imax
f"0 <. 2^1+i.20
f"0 ] 2 + 10 ?@$ 100
f"0 ] 2 + 10 ?@$ 1000

*/    EI X=: B$_2
*/    EI X=: (1,0=(B-1) ?@$ 4) */;.1 B$_2
*/\   EI X=: B$_2
*/\   EI X=: (1,0=(B-1) ?@$ 4) */;.1 B$_2
*/\.  EI X=: B$_2
*/\.  EI X=: (1,0=(B-1) ?@$ 4) */;.1 B$_2

*:    EI X=: <.   (%:2) * 2^IF64{15 31
*:    EI X=: >. - (%:2) * 2^IF64{15 31

-     EI imin+1 2 3
-     EI imax-1 2 3

-.    EI imin + 2

|     EI X=: imin + 1+10 ?@$ 100

+/ .* EI X=: (n,n)   $ <. n %: imax % !n=: 3
+/ .* EI X=: (n,n) ?@$ <. n %: imax % !n=: 5

-/ .* EI X=: 10 2 2 ?@$ <. 2 %: imax

#.    EI X=: (      IF64{31 63)   $ 1
#.    EI X=: (2 3 4,IF64{31 63) ?@$ 2

0 _1   +  CI imax
1      +  CI imax-1
X      +  CI imax - X=: 10 ?@$ 10
X      +  CI imax - X=: 10 ?@$ 1e6
0      +  CI imax,imin
0 1    +  CI imin
1      +  CI imin+1
(-X)   +  CI imin + X=: 10 ?@$ 10
(-X)   +  CI imin + X=: 10 ?@$ 1e6
imin   +  CI imax

imax   +. CI X=: imin
imax   +. CI X=: 0 1,imax
imax   +. CI X=: q: imax 
imax   +. CI X=: q: imax
imin   +. CI X=: 1 _1
imin   +. CI X=: 1 2 4 8 16
imin   +. CI X=: <. 2^i.IF64{30 62

0      -  EI X=: imax
imax   -  EI X=: 10 ?@$ 100
imax   -  EI X=: 10 ?@$ 1e6
X      -  EI imax [ X=: 10 ?@$ 5
X      -  EI imax [ X=: 10 ?@$ 100
X      -  EI imax [ X=: 10 ?@$ 1e6
imin   -  EI 0
imin   -  EI X=: - 10 ?@$ 5
imin   -  EI X=: - 10 ?@$ 100
imin   -  EI X=: - 10 ?@$ 1e6
imin   -  EI X=: - imax
X      -  EI imin [ X=: - 1 + 10 ?@$ 5 
X      -  EI imin [ X=: - 1 + 10 ?@$ 100 
X      -  EI imin [ X=: - 1 + 10 ?@$ 1e6 

0 1 _1 *  CI imax
0 1    *  CI imin
2      *  CI xi imax <.@% 2x
X      *  CI xi imax <.@% x: X=: 1+20 ?@$ 10
X      *  CI xi imax <.@% x: X=: 1+100 ?@$ 100
2      *  CI xi imin >.@% 2x
X      *  CI xi imin >.@% x: X=: 1+20 ?@$ 10
X      *  CI xi imin >.@% x: X=: 1+100 ?@$ 100

imax   *. CI 1,q: imax 
imin   *. CI <. 2^ 10 ?@$ IF64{30 62

imax   |  EI imin
imin   |  EI imax

n      #. EI 1 $~ <. n ^. 1 + imax * _1 + n=: 2 
n      #. EI 1 $~ <. n ^. 1 + imax * _1 + n=: 3
n      #. EI 1 $~ <. n ^. 1 + imax * _1 + n=: 4
n      #. EI 1 $~ <. n ^. 1 + imax * _1 + n=: 5
n (#. $&1:)"0 EI X=: <.n^.1+imax*_1+n=: 2+10 ?@$ 100

X   +/ .* CI Y  [ X=: 2$1 [ Y=: 2$xi imax <.@% 2x
X   +/ .* CI Y  [ X=: 3$1 [ Y=: 3$xi imax <.@% 3x
1 1 +/ .* CI Y=: 1,imax-1
1 1 +/ .* CI Y=: 1,imax-2
1 1 +/ .* CI Y=: 1,imax-3

(2 - 1 1) +/@:* CI 1,imax-1
(2 - 1 1) +/@:* CI 1,imax-2
_1 2      +/@:* CI 1,x:^:_1 <.imax%2x


NB. integers overflowing into doubles -----------------------------------

- E imin

imax   +  C X=:   10 ?@$ 100
imin   +  C X=: - 10 ?@$ 100
(-X)   +  C imin + X=: 10 ?@$ 100

imin   +. C imin
imin   +. C 0

imax   -  E _1
imax   -  E X=: - 10 ?@$ 100
imin   -  E X=:   10 ?@$ 100

_1     *  C imin
imax   *  C X=: _50 + 10 ?@$ 100
imin   *  C X=: _50 + 10 ?@$ 100

| E imin

-/ .* E X=: (=i.2) * >. 2 %: imax
-/ .* E X=: 10 2 2 ?@$ <. 2^IF64{17 33

X   +/ .* C Y  [ X=: 4 1 1 1  1 [ Y=: 0 _1 0  1,imax
X   +/ .* C Y  [ X=: 4 1 1 1  2 [ Y=: 0  0 0  0,imax
X   +/ .* C Y  [ X=: 4 1 1 1  1 [ Y=: 0 _1 0 _1,imin
X   +/ .* C Y  [ X=: 4 1 1 1 _1 [ Y=: 0  0 0  0,imin
X   +/ .* E Y  [ X=: 4 1 1 1  1 (?7)}7 5 ?@$ 100 [ Y=: (0 _1 0  1,imax) (<a:;?11)}5 11 ?@$ 100
X   +/ .* E Y  [ X=: 4 1 1 1  2 (?7)}7 5 ?@$ 100 [ Y=: (0  0 0  0,imax) (<a:;?11)}5 11 ?@$ 100
X   +/ .* E Y  [ X=: 4 1 1 1  1 (?7)}7 5 ?@$ 100 [ Y=: (0 _1 0 _1,imin) (<a:;?11)}5 11 ?@$ 100
X   +/ .* E Y  [ X=: 4 1 1 1 _1 (?7)}7 5 ?@$ 100 [ Y=: (0  0 0  0,imin) (<a:;?11)}5 11 ?@$ 100


NB. integers overflowing into doubles, asm routines ---------------------

f=: 1 : 0
:
 'A bg'=. x [ nn=.y
 assert. u   f. E"1 data=: A i} bg {~(       nn,nn) ?@$ #bg [ i=. ,&.>~ i.nn
 assert. u   f. E"2 data=: A i} bg {~((*:nn),nn,nn) ?@$ #bg [ i=. (i.*:nn),&.>,{i.&.>nn,nn
 assert. u"1 f. E"2 data
 1
)

(imax; 1000 ?@$ 1e4) +/   f"1 0 >: i.7
(imax; 1000 ?@$ 1e4) +/\  f"1 0 >: i.7
(imax; 1000 ?@$ 1e4) +/\. f"1 0 >: i.7
(imin;-1000 ?@$ 1e4) +/   f"1 0 >: i.7
(imin;-1000 ?@$ 1e4) +/\  f"1 0 >: i.7
(imin;-1000 ?@$ 1e4) +/\. f"1 0 >: i.7

(imax; 1 2)          */   f"1 0 >: i.7
(imax; 1 2)          */\  f"1 0 >: i.7
(imax; 1 2)          */\. f"1 0 >: i.7
(imin; 1 2)          */   f"1 0 >: i.7
(imin; 1 2)          */\  f"1 0 >: i.7
(imin; 1 2)          */\. f"1 0 >: i.7

(imax; 1000 ?@$ 1e4) -/   f"1 0 >: i.7
(imax; 1000 ?@$ 1e4) -/\  f"1 0 >: i.7
(imax; 1000 ?@$ 1e4) -/\. f"1 0 >: i.7
(imax;-1000 ?@$ 1e4) -/   f"1 0 >: i.7
(imax;-1000 ?@$ 1e4) -/\  f"1 0 >: i.7
(imax;-1000 ?@$ 1e4) -/\. f"1 0 >: i.7
(imin; 1000 ?@$ 1e4) -/   f"1 0 >: i.7
(imin; 1000 ?@$ 1e4) -/\  f"1 0 >: i.7
(imin; 1000 ?@$ 1e4) -/\. f"1 0 >: i.7
(imin;-1000 ?@$ 1e4) -/   f"1 0 >: i.7
(imin;-1000 ?@$ 1e4) -/\  f"1 0 >: i.7
(imin;-1000 ?@$ 1e4) -/\. f"1 0 >: i.7


4!:55 ;:'B C CI data E EI f n nn permute V X xi xx Y yy'



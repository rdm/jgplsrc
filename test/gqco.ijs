NB. q: ------------------------------------------------------------------

f =: = */
g =: (,. -: q:)@~.@]

'' -: q: 1   NB. Jeffrey Shallit
(i.($X),0) -: q: X=:$0
(i.($X),0) -: q: X=:i.?~5

X (f *. g) q: X=:2
X (f *. g) q: X=:*/2#2 3 5 7 11 13
X (f *. g) q: X=:2^30

*./ X (f *. g)&> q:&.> X=:2+i.1000
*./ X (f *. g)&> q:&.> X=:2+?40$<._1+2^31
*./ X (f *. g)&> q:&.> X=:Y^<.2.147e9^.~ Y=:p:i.15
*./ X (f *. g)&> q:&.> X=:*/\p: i.9
*./ X (f *. g)&> q:&.> X=:(<._1+2^31)-i.40
*./ X (f *. g)&> q:&.> X=:p: 1e6*>:i.105

X -: */"1 [ 1>.q: X=:1+?4 5$1e7
X -: */"1 [ 1>.q:"0 X
(q: X) -: >q:&.> X

n = */ q: n=: */ 3,29$2

'domain error' -: q: etx 0
'domain error' -: q: etx '1234'
'domain error' -: q: etx _19
'domain error' -: q: etx 3.4
'domain error' -: q: etx 3j4
'domain error' -: q: etx <12345


NB. q: model ------------------------------------------------------------

max   =: 1&>. @ (>./) @ ,
pn    =: <. @ (1.3&*) @ (% 1&>.@^.)
primes=: p: @ i. @ pn @ %: @ max
pa    =: [ #~ 0: = |

qa    =: 4 : 0
 z=.p=.x pa r=.y
 while. #p do. z=.z,p=.p pa r=.<.r%*/p end.
 /:~z,r-.1
)

qco   =: primes qa"1 0 ]

(q: -: qco) 1
(q: -: qco) >:i.10 5
(q: -: qco) X=:1+?20$2e9


NB. q: dyad -------------------------------------------------------------

2 0 2 1    -: _ q: 700
2 0 2 1 0  -: 5 q: 700

''   -: _ q: 1
''   -: 0 q: 1
(,0) -: 1 q: 1
0 0  -: 2 q: 1

(-: [&.(40&q:))"0 X=:1+?2 10$100

X -: (p:i.{:$Y) */ .^"1 Y=:_  q: X=:>:i.10 10
X -: (p:i.{:$Y) */ .^"1 Y=:50 q: X
X -: (p:i.{:$Y) */ .^"1 Y=:_  q: X=:>:?10 2 7$10000
X -: (p:i.{:$Y) */ .^"1 Y=:(1+p:^:_1 >./X) q: X=:>:?200$10000

(_ q: X) (<\@[ -: >:@i.@#@[ q:&.> ]) X=:*/>:?4$215
(_ q: X) (<\@[ -: >:@i.@#@[ q:&.> ]) X=:*/>:?4$215

64 -: 3!:0 q: !100x
64 -: 3!:0 ] _ q: !100x

300 3 -: 2 q: 27*2^300x
(i.0) -: 0 q: 1+2^1000x


NB. q: ------------------------------------------------------------------

phi =: * -.@%@~.&.q:    NB. Euler's totient function

1 = phi 1
(p-1) -: phi"0 p=:p: i.20
X=:b#X [ Y=:b#Y [ b=:1=X+.Y=:?100$2e4 [ X=:>:?100$1e5 
(phi"0 X*Y) -: X *&phi"0 Y

f =: 1: #. 1: = (+.i.)
*./ (f -: phi)"0 X=:>:i.200
*./ (f -: phi)"0 X=:>:?10$1e4

odometer =: #: i.@(*/)
divisors =: /:~ @ (~. */ .^"1 odometer@:>:@(#/.~)) @ q:

t2 =: [ -: +/@phi@divisors
*./ t2"0 X=:>:i.200
*./ t2"0 X=:>:?10$2e9

d0=: [: +/ 0: = >:@i. | ]   NB. number of divisors of n
d1=: >:@#/.~ &. q: 
d2=: >:@#;.1 @ ~: &. q:  
d3=: */ @: >: @: (_&q:)

(d0 -: d1)"0 >:i.10 20
(d0 -: d1)"0 X=:>:?10 10$1e4
(d1 -: d2)"0 >:i.10 20
(d1 -: d2)"0 X=:>:?10 10$1e6
(d2 -: d3)"0 >:i.10 20
(d2 -: d3)"0 X=:>:?10 10$1e6

39001250856960000x -: d3 !100x

'domain error' -: 'a' q: etx 123
'domain error' -: 3j5 q: etx 123
'domain error' -: (<3)q: etx 123

'domain error' -: 1   q: etx 'a'
'domain error' -: 1   q: etx 0
'domain error' -: 1   q: etx _35
'domain error' -: 1   q: etx 3.5
'domain error' -: 1   q: etx 3j5
'domain error' -: 1   q: etx <35


NB. q: on large integers ------------------------------------------------

f=: 3 : 0
 v=: q: y
 assert. y=*/v
 assert. v -: /:~ v
 assert. (, -: q:)"0 v
 1
)

f X=: */ x: p: 10^i.5
f X=: */ x: p: 10^i.6
f X=: */ x: p: 10^i.7
f X=: */ x: p: 10^i.8
f X=: */ x: p: 1e7,10 ?@$ 1228
f X=: */ x: p: 2 ?@$ 1e8
f X=: 10 #. 18 ?@$ 10x
f X=: */ p: 1e8+0 1 2x

f X=: 1.3e13
f X=: 252097800629


4!:55 ;:'b d0 d1 d2 d3 divisors f g max odometer p pa phi pn primes'
4!:55 ;:'qa qco t2 X Y '



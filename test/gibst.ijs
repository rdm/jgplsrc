NB. i.!.0 and associates timing tests -----------------------------------

L=: 1 : 0
:
 f=: x&u
 assert. (threshold*{.t) <: -/}.t=: 10 timer 'f y','x u y',:'/:x'
 1
)

R=: 1 : 0
:
 f=: u&y
 assert. (threshold*{.t) <: -/}.t=: 10 timer 'f x','x u y',:'/:y'
 1
)

X=: <"1 ] 23 2 ?@$ 100
Y=: <"1 ] 3581 2 ?@$ 100

NB. FIXME Y i.!.0 L X
Y i:!.0 L X
NB. X -.!.0 R Y  NB. does not use prehasing as of 2005-11-16
NB. FIXME X e.!.0 R Y

NB. FIXME X (e.!.0 i. 0:   ) R Y
X (e.!.0 i. 1:   ) R Y
X (e.!.0 i: 0:   ) R Y
NB. FIXME X (e.!.0 i: 1:   ) R Y
X ([: + /  e.!.0 ) R Y
NB. FIXME X (   + /@(e.!.0)) R Y
NB. FIXME X ([: +./  e.!.0 ) R Y
NB. FIXME X (   +./@(e.!.0)) R Y
X ([: *./  e.!.0 ) R Y
NB. FIXME X (   *./@(e.!.0)) R Y
X ([: I.   e.!.0 ) R Y
X (   I. @(e.!.0)) R Y


4!:55 ;:'f L R t X Y'



NB. prehashed i. family of functions ------------------------------------

f0=: 4 : 0
 f=: x&i.
 assert. </ (1,threshold) %~ t=: timer 'f y',:'x i. y'
 1
)

X f0 0+X=:      1e4 ?@$ m=: 1e1
X f0 0+X=: m -~ 1e4 ?@$ 2*m
X f0 0+X=:      1e4 ?@$ m=: 1e3
X f0 0+X=: m -~ 1e4 ?@$ 2*m
X f0 0+X=:      1e4 ?@$ m=: 1e5
X f0 0+X=: m -~ 1e4 ?@$ 2*m
X f0 0+X=:      1e4 ?@$ m=: 1e7
X f0 0+X=: m -~ 1e4 ?@$ 2*m
X f0 0+X=:      1e4 ?@$ m=: 1e9
X f0 0+X=: m -~ 1e4 ?@$ 2*m

X f0 1=X=:           1e6   ?@$ 2
X f0 1=X=:           1e4 4 ?@$ 2
X f0 0+X=:           1e4   ?@$ 1e9
X f0 0+X=:           1e4 4 ?@$ 1e9
X f0 0+X=:           1e4   ?@$ 0
X f0 0+X=:           1e4 4 ?@$ 0
X f0 0+X=: j./_1e4+2 1e4   ?@$ 2e4
X f0 0+X=: j./_1e4+2 1e4 4 ?@$ 2e4  
X f0 0+X=:        x: 1e4   ?@$ 3e3
X f0 0+X=:        x: 1e4 4 ?@$ 3e3
X f0 0+X=: %/x:0 1+2 1e4   ?@$ 3e3
X f0 0+X=: %/x:0 1+2 1e4 4 ?@$ 3e3

NB. possible garbage collect can louse up timing
NB. FIXME (x=: a.{~ 1e4   ?@$ #a.  ) f0 :: 1: y=: a.{~ 1e4   ?@$ #a.

NB. FIXME (X=: a.{~ 1e4 4 ?@$ #a.  ) f0 Y=: a.{~ 1e4 4 ?@$ #a.
NB. FIXME (X=: u:   1e4   ?@$ 256  ) f0 Y=: u:   1e4   ?@$ 256
NB. FIXME (X=: u:   1e4 4 ?@$ 256  ) f0 Y=: u:   1e4 4 ?@$ 256
NB. FIXME (X=: u:   1e4   ?@$ 65536) f0 Y=: u:   1e4   ?@$ 65536
NB. FIXME (X=: u:   1e4 4 ?@$ 65536) f0 Y=: u:   1e4 4 ?@$ 65536

mean=: +/ % #

g=: 4 : 0
 xx=: x     ?@$ y
 yy=: 10000 ?@$ y
 f=: xx&i.
 timer '3 : ''for_q. y do. k=. f q end.'' yy'
)

f1=: 3 : 0
 t=: (2e4*>:i.8) g"0 y
 assert. (1-threshold) > >./| t (- % ]) mean t
 1
)


f1"0 ]1e1 1e3 1e5 1e7 1e9


4!:55 ;:'f f0 f1 g m mean t X xx Y yy'

 

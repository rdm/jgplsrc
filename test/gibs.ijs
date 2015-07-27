NB. i.!.0 and associates ------------------------------------------------

NB. i.!.0 using grading and binary search
NB. currently invoked only for boxed arrays where
NB. - each target item has more than one element, or
NB. - some opened target item has more than one numeric element

test=: 4 : 0
 assert.    (~.!.0            -: ~.         ) y
 assert.    (~:!.0            -: ~:         ) y
 assert.    (I.@(~:!.0)       -: I.@~:      ) y
 assert. x  (   (i.!.0)       -:    i.      ) y
 assert.    (x&(i.!.0)        -: x&i.       ) y
 assert. x  (   (i:!.0)       -:    i:      ) y
 assert.    (x&(i:!.0)        -: x&i:       ) y
 assert. x  (   (-.!.0)       -:    -.      ) y
 assert.    (   (-.!.0)&x     -:    -.&x    ) y
 assert. x  (   (e.!.0)       -:    e.      ) y
 assert.    (   (e.!.0)&x     -:    e.&x    ) y
 assert. x  ((e.!.0 i. 0:)    -: (e.i.0:)   ) y
 assert.    ((e.!.0 i. 0:)&x  -: (e.i.0:)&x ) y
 assert. x  ((e.!.0 i. 1:)    -: (e.i.1:)   ) y
 assert.    ((e.!.0 i. 1:)&x  -: (e.i.1:)&x ) y
 assert. x  ((e.!.0 i: 0:)    -: (e.i:0:)   ) y
 assert.    ((e.!.0 i: 0:)&x  -: (e.i:0:)&x ) y
 assert. x  ((e.!.0 i: 1:)    -: (e.i:1:)   ) y
 assert.    ((e.!.0 i: 1:)&x  -: (e.i:1:)&x ) y
 assert. x  (  + /@(e.!.0)    -:   + /@e.   ) y
 assert.    (  + /@(e.!.0)&x  -:   + /@e.&x ) y
 assert. x  (([: +/ e.!.0)    -:   + /@e.   ) y
 assert.    (([: +/ e.!.0)&x  -:   + /@e.&x ) y
 assert. x  (  +./@(e.!.0)    -:   +./@e.   ) y
 assert.    (  +./@(e.!.0)&x  -:   +./@e.&x ) y
 assert. x  (([:+./ e.!.0)    -:   +./@e.   ) y
 assert.    (([:+./ e.!.0)&x  -:   +./@e.&x ) y
 assert. x  (  *./@(e.!.0)    -:   *./@e.   ) y
 assert.    (  *./@(e.!.0)&x  -:   *./@e.&x ) y
 assert. x  (([:*./ e.!.0)    -:   *./@e.   ) y
 assert.    (([:*./ e.!.0)&x  -:   *./@e.&x ) y
 assert. x  (   I.@(e.!.0)    -:    I.@e.   ) y
 assert.    (   I.@(e.!.0)&x  -:    I.@e.&x ) y
 assert. x  (([: I. e.!.0)    -:    I.@e.   ) y
 assert.    (([: I. e.!.0)&x  -:    I.@e.&x ) y
 1
)

X test Y [ X=: <"(1) 1019 2?@$100 [ Y=: <"(1) 877 2?@$100
Y test Y

X test Y [ X=: i.&.> 1000 ?@# 750 [ Y=: i.&.> 1019 ?@# 880
Y test Y

a=: ;:'chthonic kakistocracy kleptocracy eleemosynary amanuensis paronomasiac'
a=: a,;:'onomatopoeia metonymic metronymic paraclete parousia pauline exegesis'
a=: a,(<"0 ] 20 ?@$ 100)
X test Y [ X=: a{~ 811 2?@$ #a [ Y=: a{~ 947 2 ?@$#a
Y test Y

X test Y [ X=: 811 0$a: [ Y=: 947 0$a:
Y test Y

NB. mapped boxed arrays 

0!:0 <testpath,'gmbx.ijs'
q=: X=: (811 2 ?@$ #u){u=: 17 3;(<"0] 30 ?@$ 100), (<5!:2 <'mean'), ;:'Cogito, ergo sum.'
r=: Y=: (547 2 ?@$ #u){u

(mbxcheck_jmf_ q), q test Y
(mbxcheck_jmf_ r), X test r
(mbxcheck_jmf_ q), q test r
(mbxcheck_jmf_ q), q test q


4!:55 ;:'a f f1 g mean test u X Y'



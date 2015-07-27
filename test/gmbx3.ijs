NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. : -------------------------------------------------------------------

q=: X=: <"0 ?100$100

f=: 4 : 0
 y=. (<i.>x{y) x}y
)

(mbxcheck_jmf_ q), X             -: q

j=: ?#X
X=: j f X
q=: j f q
(mbxcheck_jmf_ q), X             -: q

f=: 3 : 0
 y=. (-. (3{.&.>y) e. <'NB.')#y
 y=. y -.&.><;:13 10{a.
 y=. ;: ; y
 y=. (-. ({.&>y) e. '''_0123456789')#y
 y=. ~. /:~ y
)

q=: f q=: <;._2 (1!:1) <testpath,'gmbx3.ijs'
X=: f X=: <;._2 (1!:1) <testpath,'gmbx3.ijs'
(mbxcheck_jmf_ q), X             -: q

q=: X=: 't=.y+y';'*:t'
(3 : q -: 3 : X) 2 3 13
mbxcheck_jmf_ q

q=: X=: 't=.y+y';'*:t';':';'x*y'
7 (3 : q -: 3 : X) 2 3 13
mbxcheck_jmf_ q


NB. , -------------------------------------------------------------------

q=: X=: (?10 2 3$#X){X=: <"0 (<5!:2 <'g') ,;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,X)          -: ,q
(mbxcheck_jmf_ q), (,"0 X)       -: ,"0 q
(mbxcheck_jmf_ q), (,"1 X)       -: ,"1 q
(mbxcheck_jmf_ q), (,"2 X)       -: ,"2 q
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,X)          -: ,q
(mbxcheck_jmf_ q), (,"0 X)       -: ,"0 q
(mbxcheck_jmf_ q), (,"1 X)       -: ,"1 q
(mbxcheck_jmf_ q), (,"2 X)       -: ,"2 q

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X, 0 3 1{X)  -: q, 0 3 1{q
(mbxcheck_jmf_ q), (X,~0 3 1{X)  -: q,~0 3 1{q
(mbxcheck_jmf_ q), (X, 0 1{q)    -: q, 0 1{X
(mbxcheck_jmf_ q), (X,~0 1{q)    -: q,~0 1{X
(mbxcheck_jmf_ q), (X, 1{X)      -: q, 1{q
(mbxcheck_jmf_ q), (X,~1{X)      -: q,~1{q
(mbxcheck_jmf_ q), (X, 1{q)      -: q, 1{X
(mbxcheck_jmf_ q), (X,~1{q)      -: q,~1{X

q=: X=: (?10 2 3$#X){X=: (<5!:2 <'g') ,;:'Cogito, ergo sum.'
r=: Y=: (?10 2 3$#Y){Y=: (<5!:2 <'g') ,;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X,Y)         -: X,r
(mbxcheck_jmf_ q), (X,Y)         -: q,Y
(mbxcheck_jmf_ q), (X,Y)         -: q,r
(mbxcheck_jmf_ q), (X,"0 Y)      -: X,"0 r
(mbxcheck_jmf_ q), (X,"0 Y)      -: q,"0 Y
(mbxcheck_jmf_ q), (X,"0 Y)      -: q,"0 r
(mbxcheck_jmf_ q), (X,"1 Y)      -: X,"1 r
(mbxcheck_jmf_ q), (X,"1 Y)      -: q,"1 Y
(mbxcheck_jmf_ q), (X,"1 Y)      -: q,"1 r
(mbxcheck_jmf_ q), (X,"2 Y)      -: X,"2 r
(mbxcheck_jmf_ q), (X,"2 Y)      -: q,"2 Y
(mbxcheck_jmf_ q), (X,"2 Y)      -: q,"2 r

q=: X=: 2 3$(<5!:2 <'g'), ;:'Cogito, ergo sum.'
r=: Y=: <(1;2);3
t=: <"0 i.1 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X,!.Y t)     -: X,!.r t
(mbxcheck_jmf_ q), (X,!.Y t)     -: q,!.Y t
(mbxcheck_jmf_ q), (X,!.Y t)     -: q,!.r t


NB. ,. ------------------------------------------------------------------

q=: X=:     (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,. X)        -: ,. q
q=: X=: (?10 2 3$#X){X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,.X)         -: ,.q
(mbxcheck_jmf_ q), (,."0 X)      -: ,."0 q
(mbxcheck_jmf_ q), (,."1 X)      -: ,."1 q
(mbxcheck_jmf_ q), (,."2 X)      -: ,."2 q
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,.   X)      -: ,. q
(mbxcheck_jmf_ q), (,."1 X)      -: ,."1 q

q=: X=: (?10 2 3$#X){X=: (<5!:2 <'g') ,;:'Cogito, ergo sum.'
r=: Y=: (?10 2 3$#Y){Y=: (<5!:2 <'g') ,;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X,.Y)        -: X,.r
(mbxcheck_jmf_ q), (X,.Y)        -: q,.Y
(mbxcheck_jmf_ q), (X,.Y)        -: q,.r
(mbxcheck_jmf_ q), (X,."0 Y)     -: X,."0 r
(mbxcheck_jmf_ q), (X,."0 Y)     -: q,."0 Y
(mbxcheck_jmf_ q), (X,."0 Y)     -: q,."0 r
(mbxcheck_jmf_ q), (X,."1 Y)     -: X,."1 r
(mbxcheck_jmf_ q), (X,."1 Y)     -: q,."1 Y
(mbxcheck_jmf_ q), (X,."1 Y)     -: q,."1 r
(mbxcheck_jmf_ q), (X,."2 Y)     -: X,."2 r
(mbxcheck_jmf_ q), (X,."2 Y)     -: q,."2 Y
(mbxcheck_jmf_ q), (X,."2 Y)     -: q,."2 r

q=: X=: 5 2 3$(<5!:2 <'g'), ;:'Cogito, ergo sum.'
r=: Y=: <(1;2);3
t=: <"0 i.5 2 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X,.!.Y t)    -: X,.!.r t
(mbxcheck_jmf_ q), (X,.!.Y t)    -: q,.!.Y t
(mbxcheck_jmf_ q), (X,.!.Y t)    -: q,.!.r t


NB. ,: ------------------------------------------------------------------

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,:X)         -: ,:q
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,:   X)      -: ,:   q
(mbxcheck_jmf_ q), (,:"0 X)      -: ,:"0 q
(mbxcheck_jmf_ q), (,:"1 X)      -: ,:"1 q
(mbxcheck_jmf_ q), (,:"2 X)      -: ,:"2 q

q=: X=:  <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
Y=: j{X [ j=: ?~#X
r=: j{q
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), Y             -: r
(mbxcheck_jmf_ q), (X,:Y)        -: q,:r
(mbxcheck_jmf_ q), (X,:Y)        -: q,:Y
(mbxcheck_jmf_ q), (X,:Y)        -: X,:r

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
r=: Y=: <(1;2);3
t=: 'abc';2
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X,:!.Y t)    -: X,:!.r t
(mbxcheck_jmf_ q), (X,:!.Y t)    -: q,:!.Y t
(mbxcheck_jmf_ q), (X,:!.Y t)    -: q,:!.r t


NB. ; -------------------------------------------------------------------

q=: X=: ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (;X)          -: ;q
q=: X=: (?4$20)#&.> <"0 ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (;X)          -: ;q
q=: X=: <"0@?@(3 4&$)&.>10$100
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (;X)          -: ;q
q=: X=: (i.2 3) ; (i.7) ; i.3 2 1
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (;X)          -: ;q

q=: X=: (?7 2 3$#X){X=: (5!:2 <'mean'),;:'Cogito, ergo sum.'
r=: Y=: (?7 2 3$#Y){Y=: (5!:2 <'mean'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ r), (X;Y)         -: X;r
(mbxcheck_jmf_ r), (X;Y)         -: q;Y
(mbxcheck_jmf_ r), (X;Y)         -: q;r
(mbxcheck_jmf_ r), (X;<Y)        -: X;<r
(mbxcheck_jmf_ r), (X;<Y)        -: q;<Y
(mbxcheck_jmf_ r), (X;<Y)        -: q;<r
(mbxcheck_jmf_ r), (X;"0 Y)      -: X;"0 r
(mbxcheck_jmf_ r), (X;"0 Y)      -: q;"0 Y
(mbxcheck_jmf_ r), (X;"0 Y)      -: q;"0 r
(mbxcheck_jmf_ r), (X;"1 Y)      -: X;"1 r
(mbxcheck_jmf_ r), (X;"1 Y)      -: q;"1 Y
(mbxcheck_jmf_ r), (X;"1 Y)      -: q;"1 r
(mbxcheck_jmf_ r), (X;"2 Y)      -: X;"2 r
(mbxcheck_jmf_ r), (X;"2 Y)      -: q;"2 Y
(mbxcheck_jmf_ r), (X;"2 Y)      -: q;"2 r

q=: ;:'Cogito, ergo sum.'
mbxcheck_jmf_ q
t=: q;1234567
q=: (<5!:2 <'g') 1}q
t -: q;1234567
t=: q;<q
q=: (<,',') 1}q
t -: q;<q       
mbxcheck_jmf_ q


NB. ;. ------------------------------------------------------------------

q=: X=: (?40$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (< ;.1 X)     -: < ;.1 q
(mbxcheck_jmf_ q), ($ ;.1 X)     -: $ ;.1 q
(mbxcheck_jmf_ q), (# ;.1 X)     -: # ;.1 q
(mbxcheck_jmf_ q), (, ;.1 X)     -: , ;.1 q
(mbxcheck_jmf_ q), ([ ;.1 X)     -: [ ;.1 q
(mbxcheck_jmf_ q), (] ;.1 X)     -: ] ;.1 q
(mbxcheck_jmf_ q), ({.;.1 X)     -: {.;.1 q
(mbxcheck_jmf_ q), ({:;.1 X)     -: {:;.1 q
(mbxcheck_jmf_ q), (}.;.1 X)     -: }.;.1 q
(mbxcheck_jmf_ q), (}:;.1 X)     -: }:;.1 q
(mbxcheck_jmf_ q), (|.;.1 X)     -: |.;.1 q
(mbxcheck_jmf_ q), ({.`{:`[;.1 X)-: {.`{:`[;.1 q
(mbxcheck_jmf_ q), (j < ;.1 X)   -: j < ;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j $ ;.1 X)   -: j $ ;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j # ;.1 X)   -: j # ;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j , ;.1 X)   -: j , ;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j [ ;.1 X)   -: j [ ;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j ] ;.1 X)   -: j ] ;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j {.;.1 X)   -: j {.;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j {:;.1 X)   -: j {:;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j }.;.1 X)   -: j }.;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j }:;.1 X)   -: j }:;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j |.;.1 X)   -: j |.;.1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j {.`{:;.1 X)-: j {.`{:;.1 q [ j=: 0=?(#X)$4
q=: X=: (?40$#X){X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (< ;.1 X)     -: < ;.1 q
(mbxcheck_jmf_ q), ($ ;.1 X)     -: $ ;.1 q
(mbxcheck_jmf_ q), (# ;.1 X)     -: # ;.1 q
(mbxcheck_jmf_ q), (, ;.1 X)     -: , ;.1 q
(mbxcheck_jmf_ q), ([ ;.1 X)     -: [ ;.1 q
(mbxcheck_jmf_ q), (] ;.1 X)     -: ] ;.1 q
(mbxcheck_jmf_ q), ({.;.1 X)     -: {.;.1 q
(mbxcheck_jmf_ q), ({:;.1 X)     -: {:;.1 q
(mbxcheck_jmf_ q), (}.;.1 X)     -: }.;.1 q
(mbxcheck_jmf_ q), (}:;.1 X)     -: }:;.1 q
(mbxcheck_jmf_ q), (|.;.1 X)     -: |.;.1 q
(mbxcheck_jmf_ q), ({.`{:`[;.1 X)-: {.`{:`[;.1 q
(mbxcheck_jmf_ q), (j < ;.2 X)   -: j < ;.2 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j $ ;._1 X)  -: j $ ;._1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j # ;._1 X)  -: j # ;._1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j , ;.2 X)   -: j , ;.2 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j [ ;.2 X)   -: j [ ;.2 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j ] ;.2 X)   -: j ] ;.2 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j {.;.2 X)   -: j {.;.2 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j {:;.2 X)   -: j {:;.2 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j }.;._1 X)  -: j }.;._1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j }:;._1 X)  -: j }:;._1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j |.;._1 X)  -: j |.;._1 q [ j=: 0=?(#X)$4
(mbxcheck_jmf_ q), (j {.`{:;.2 X)-: j {.`{:;.2 q [ j=: 0=?(#X)$4

q=: X=: 1;1 0 1 0 0
Y=: 7 5 ?@$ 100
(X <;.1 Y) -: q <;.1 Y
mbxcheck_jmf_ q


NB. ;: ------------------------------------------------------------------

me=: (i.#a.) e. (a.i.''''),,(a.i.'Aa')+/i.26
se=: 2 2 2 $ 0 0 1 1  0 3 1 0
Y=: 'Now is the time all good men'
q=: X=: 0;se;me
(X;:Y) -: q;:Y
mbxcheck_jmf_ q

q=: X=: (a.&-. ; ]) '''',a.{~,(a.i.'Aa')+/i.26
((0;se;<X);:Y) -: (0;se;<q);:Y
mbxcheck_jmf_ q


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j me mean q r se t X Y'



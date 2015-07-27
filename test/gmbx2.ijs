NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. ^: ------------------------------------------------------------------

q=: X=: <13
(>:^:X 1) -: >:^:q 1
mbxcheck_jmf_ q


NB. $ -------------------------------------------------------------------

q=: X=: (?2 3 4$#X){X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ($X)          -: $q
(mbxcheck_jmf_ q), (3$X)         -: 3$q
(mbxcheck_jmf_ q), (7$X)         -: 7$q
(mbxcheck_jmf_ q), (3$"0 X)      -: 3$"0 q
(mbxcheck_jmf_ q), (3$"1 X)      -: 3$"1 q
(mbxcheck_jmf_ q), (3$"2 X)      -: 3$"2 q

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
r=: Y=: <(1;2);3
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (2 5$!.Y X)   -: 2 5$!.Y q
(mbxcheck_jmf_ q), (2 5$!.Y X)   -: 2 5$!.r X
(mbxcheck_jmf_ q), (2 5$!.Y X)   -: 2 5$!.r q


NB. $. ------------------------------------------------------------------

q=: X=: 2 3 4;0
(1$.X) -: 1$.q
mbxcheck_jmf_ q

Y=: $. 2 3 4 5 ?@$ 5
q=: X=: 2;0 1
(X$.Y) -: q$.Y
mbxcheck_jmf_ q


NB. ~. ------------------------------------------------------------------

q=: X=: (?2 3 4$#X){X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (~.   X)      -: ~.   q
(mbxcheck_jmf_ q), (~."0 X)      -: ~."0 q
(mbxcheck_jmf_ q), (~."1 X)      -: ~."1 q
(mbxcheck_jmf_ q), (~."2 X)      -: ~."2 q
q=: X=: <"1 ?20 2 3$5
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (~.X)         -: ~.q
(mbxcheck_jmf_ q), (~.!.0 X)     -: ~.!.0 q


NB. ~: ------------------------------------------------------------------

q=: X=: (?7 2 3$#X){X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (~:j{X)       -: ~: j{q [ j=: ?$~#X
(mbxcheck_jmf_ q), (~:"0 j{X)    -: ~:"0 j{q
(mbxcheck_jmf_ q), (~:"1 j{X)    -: ~:"1 j{q
(mbxcheck_jmf_ q), (~:"2 j{X)    -: ~:"2 j{q
q=: X=: <"0 +&.>?10 2 3$10
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (~:    j{X)   -: ~:    j{q [ j=: ?$~#X
(mbxcheck_jmf_ q), (~:!.0 j{X)   -: ~:!.0 j{q [ j=: ?$~#X

q=: X=: (?7 2 3$#X){X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X~:j{X)      -: q ~: j{q [ j=: ?$~#X
(mbxcheck_jmf_ q), (X~:"0 j{X)   -: q ~:"0 j{q
(mbxcheck_jmf_ q), (X~:"1 j{X)   -: q ~:"1 j{q
(mbxcheck_jmf_ q), (X~:"2 j{X)   -: q ~:"2 j{q
(mbxcheck_jmf_ q), (X~:j{X)      -: q ~: j{X
(mbxcheck_jmf_ q), (X~:j{X)      -: (j{q) ~: X
(mbxcheck_jmf_ q), (X~:j{X)      -: (j{q) ~: q
q=: X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), (X~:j{X)      -: q ~: j{q [ j=: ?$~#X
(mbxcheck_jmf_ q), (X~:j{X)      -: q ~: j{X
(mbxcheck_jmf_ q), (X~:j{X)      -: (j{q) ~: X
(mbxcheck_jmf_ q), (X~:j{X)      -: (j{q) ~: q
(mbxcheck_jmf_ q), (X~:!.0 j{X)  -: (j{q) ~:!.0 q


NB. |. ------------------------------------------------------------------

q=: X=: (?30$#X){X=: <"0 (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (|.X)         -: |. q
(mbxcheck_jmf_ q), (|."1 X)      -: |."1 q
(mbxcheck_jmf_ q), (|."2 X)      -: |."2 q

q=: X=: (?30$#X){X=: <"0 (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 0|.X)       -:  0|. q
(mbxcheck_jmf_ q), ( 1|.X)       -:  1|. q
(mbxcheck_jmf_ q), (_2|.X)       -: _2|. q
(mbxcheck_jmf_ q), ( 0|.!.'' X)  -:  0|.!.'' q
(mbxcheck_jmf_ q), ( 1|.!.'' X)  -:  1|.!.'' q
(mbxcheck_jmf_ q), (_2|.!.'' X)  -: _2|.!.'' q
(mbxcheck_jmf_ q), ( 0|.!.Y X)   -:  0|.!.Y q [ Y=: <?888
(mbxcheck_jmf_ q), ( 1|.!.Y X)   -:  1|.!.Y q
(mbxcheck_jmf_ q), (_2|.!.Y X)   -: _2|.!.Y q
(mbxcheck_jmf_ q), ( 0|.!.Y X)   -:  0|.!.Y q [ Y=: 0{q
(mbxcheck_jmf_ q), ( 1|.!.Y X)   -:  1|.!.Y q
(mbxcheck_jmf_ q), (_2|.!.Y X)   -: _2|.!.Y q
q=: X=: <"0 <"0 ? 20 2 3$4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 0|.X)       -:  0|. q
(mbxcheck_jmf_ q), ( 1|.X)       -:  1|. q
(mbxcheck_jmf_ q), (_2|.X)       -: _2|. q
(mbxcheck_jmf_ q), ( 1|."0 X)    -:  1|."0 q
(mbxcheck_jmf_ q), ( 1|."1 X)    -:  1|."1 q
(mbxcheck_jmf_ q), ( 1|."2 X)    -:  1|."2 q
(mbxcheck_jmf_ q), ( 0 1|.X)     -:  0 1|. q
(mbxcheck_jmf_ q), ( 2 3 1|.X)   -:  2 3 1|. q
(mbxcheck_jmf_ q), (j|."_1 X)    -: j|."_1 q [ j=: ?(#X)$1{$X

q=: X=: <5!:2 <'g'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (|.X)         -: |.q
(mbxcheck_jmf_ q), (2|.X)        -: 2|.q

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
r=: Y=: <(1;2);3
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (10|.!.Y X)   -: 10|.!.Y q
(mbxcheck_jmf_ q), (10|.!.Y X)   -: 10|.!.r X
(mbxcheck_jmf_ q), (10|.!.Y X)   -: 10|.!.r q


NB. |: ------------------------------------------------------------------

q=: X=: 3 7$(<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (|:X)         -: |: q
(mbxcheck_jmf_ q), (0 1|:X)      -: 0 1|: q
(mbxcheck_jmf_ q), ((<0 1)|:X)   -: (<1 0)|: q
q=: X=: 2 3 7$(<"0 ?35$50),(<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (|:X)         -: |: q
(mbxcheck_jmf_ q), (0 1|:X)      -: 0 1|: q
(mbxcheck_jmf_ q), (1 0|:X)      -: 1 0|: q
(mbxcheck_jmf_ q), (1 0|:"2 X)   -: 1 0|:"2 q
(mbxcheck_jmf_ q), (2 0 1|: X)   -: 2 0 1|: q
(mbxcheck_jmf_ q), ((2;0 1)|: X) -: (2;0 1)|: q
(mbxcheck_jmf_ q), ((2 0;1)|: X) -: (2 0;1)|: q

q=: X=: 0 1;2 3
(X|:Y) -: q|:Y=: ?20 3 10 7$100
mbxcheck_jmf_ q

1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t X Y'



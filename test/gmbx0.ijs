NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. = -------------------------------------------------------------------

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (=j{X)        -: = j{q [ j=: ?$~#X
q=: X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (=j{X)        -: = j{q [ j=: ?$~#X
q=: X=: <"0 +&.>?10 2 3$10
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (=j{X)        -: = j{q [ j=: ?$~#X

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X=j{X)       -: q = j{q [ j=: ?$~#X
(mbxcheck_jmf_ q), (X=j{X)       -: q = j{X
(mbxcheck_jmf_ q), (X=j{X)       -: (j{q) = X
(mbxcheck_jmf_ q), (X=j{X)       -: (j{q) = q
q=: X=: (?10 3$#X){X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), (X="1 j{X)    -: q ="1 j{q [ j=: ?#X
(mbxcheck_jmf_ q), (X="1 j{X)    -: q ="1 j{X
(mbxcheck_jmf_ q), (X="1 j{X)    -: (j{q) ="1 X
(mbxcheck_jmf_ q), (X="1 j{X)    -: (j{q) ="1 q


NB. =: ------------------------------------------------------------------

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q

X=: 2 2 2 2 2 2 2$X
q=: 2 2 2 2 2 2 2$q
(mbxcheck_jmf_ q), X             -: q

X=: X;2
q=: q;2
(mbxcheck_jmf_ q), X             -: q

X=: >{.X
q=: >{.q
(mbxcheck_jmf_ q), X             -: q

X=: ,X
q=: ,q
(mbxcheck_jmf_ q), X             -: q

'allocation error' -: ex 'q=: i.&.>10^i.7'


NB. < -------------------------------------------------------------------

q=: X=: (?2 3 4$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (<X)          -: <q
(mbxcheck_jmf_ q), (<"0 X)       -: <"0 q
(mbxcheck_jmf_ q), (<"1 X)       -: <"1 q
(mbxcheck_jmf_ q), (<"2 X)       -: <"2 q


NB. > -------------------------------------------------------------------

q=: X=: ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (>  X)        -: >    q
(mbxcheck_jmf_ q), (>{.X)        -: > {. q
q=: X=: <"0 ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (>X)          -: >   q
(mbxcheck_jmf_ q), (>{.X)        -: > {.q
X=: (<1;2;3;4) 1}X
q=: (<1;2;3;4) 1}q
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q),(>X)           -: >q
q=: X=: ((<4$<'X'),<<"0 ]2 3$'abcdef') ((1;0;2);<0;1;0)} <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (>X)          -: >q


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t X Y'



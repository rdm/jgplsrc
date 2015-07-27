NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. -. ------------------------------------------------------------------

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X -. j{X)    -: q -. j{q [ j=: ?3$#q
(mbxcheck_jmf_ q), (X -. j{X)    -: q -. j{X 
(mbxcheck_jmf_ q), (X -. j{X)    -: X -. j{q 
q=: X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X -. j{X)    -: q -. j{q [ j=: ?3$#q
(mbxcheck_jmf_ q), (X -. j{X)    -: q -. j{X 
(mbxcheck_jmf_ q), (X -. j{X)    -: X -. j{q 
q=: X=: <"0 +&.>?10 2 3$5
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X -. j{X)    -: q -. j{q [ j=: ?3$#q
(mbxcheck_jmf_ q), (X -. j{X)    -: q -. j{X 
(mbxcheck_jmf_ q), (X -. j{X)    -: X -. j{q 


NB. -: ------------------------------------------------------------------

q=: X=: (?5 2 3$#X){X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -:   q
(mbxcheck_jmf_ q), ((0{X)-:"2 X) -: (0{q) -:"2 q
(mbxcheck_jmf_ q), ((1{X)-:"2 X) -: (1{q) -:"2 q
(mbxcheck_jmf_ q), (X -:"0 a:{X) -: X     -:"0 a:{q
(mbxcheck_jmf_ q), (X -:"0 a:{X) -: q     -:"0 a:{X
(mbxcheck_jmf_ q), (X -:"0 a:{X) -: q     -:"0 a:{q
(mbxcheck_jmf_ q), (X -:"1 a:{X) -: X     -:"1 a:{q
(mbxcheck_jmf_ q), (X -:"1 a:{X) -: q     -:"1 a:{X
(mbxcheck_jmf_ q), (X -:"1 a:{X) -: q     -:"1 a:{q
(mbxcheck_jmf_ q), (X -:"2 a:{X) -: X     -:"2 a:{q
(mbxcheck_jmf_ q), (X -:"2 a:{X) -: q     -:"2 a:{X
(mbxcheck_jmf_ q), (X -:"2 a:{X) -: q     -:"2 a:{q
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ((1|.X)-:"1 X)-:"1 (1|.q) -:"1 q
(mbxcheck_jmf_ q), ((1|.X)-:"2 X)-:"1 (1|.q) -:"2 q


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t X Y'



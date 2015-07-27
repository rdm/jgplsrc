NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. A. ------------------------------------------------------------------

q=: X=: <"0 (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (j A. X)      -: j A. q [ j=: ?20$#X


NB. C. ------------------------------------------------------------------

q=: X=: (1,0<?50$4) <;.1]51?100
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (C.X)         -: C.q
(mbxcheck_jmf_ q), (X C.Y)       -: q C.Y=: ?100$1e6
(mbxcheck_jmf_ q), ((<0 _1) C. X)-: (<0 _1) C. q


NB. e. ------------------------------------------------------------------

q=: X=: (?50$#X){X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (e. X)        -: e. q
(mbxcheck_jmf_ q), (e.!.0 X)     -: e.!.0 q
q=: X=: (?50$#X){X=: <"1 ?10 3$5
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (e. X)        -: e. q
(mbxcheck_jmf_ q), (e.!.0 X)     -: e.!.0 q

q=: X=: (?50$#X){X=:     (<5!:2 <'g') 1};:'Cogito, ergo sum.'
r=: (j=: ?30$+:#X){q,t=: <"0 ?(#X)$1e5
Y=: j{X,t
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X e. Y)      -: q e. r
(mbxcheck_jmf_ q), (X e. Y)      -: q e. Y
(mbxcheck_jmf_ q), (X e. Y)      -: X e. r
f=: e.
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q 
(mbxcheck_jmf_ q), (X e.!.0 Y)   -: q e.!.0 r
(mbxcheck_jmf_ q), (X e.!.0 Y)   -: q e.!.0 Y
(mbxcheck_jmf_ q), (X e.!.0 Y)   -: X e.!.0 r
f=: e.!.0
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t X Y'



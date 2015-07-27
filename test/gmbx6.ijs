NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. ". ------------------------------------------------------------------

q=: X=: ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (".'X')       -: ".'q'
(mbxcheck_jmf_ q), (".'|.X')     -: ".'|.q'


NB. ": ------------------------------------------------------------------

q=: X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (":X)         -: ":q
(mbxcheck_jmf_ q), (0 1":X)      -: 0 1":q
(mbxcheck_jmf_ q), (0 1":2 3$X)  -: 0 1":2 3$q


NB. ` -------------------------------------------------------------------

q=: X=: 1: ` (* $:@<:)
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q),(X@.*"0 j)     -: q@.*"0 j=: ?40$30

q=: X=: +`%
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q),(X/j)          -: q/j=: 1+?30$30

q=: X=: ('a'&;)`('b'&;)`('c'&;)
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q),(X;._1 j)      -: q;._1 j=: ' bou stro phe don ic'

q=: X=: ('a'&;)`('b'&;)`('c'&;)
r=: Y=: ('a'&;)`('b'&;)
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ r), (X`Y)         -: X`r
(mbxcheck_jmf_ r), (X`Y)         -: q`Y
(mbxcheck_jmf_ r), (X`Y)         -: q`r


NB. @. ------------------------------------------------------------------

q=: X=: +`-`*
(X@.2 0 1) -: q@.2 0 1
mbxcheck_jmf_ q

q=: X=: 0;2;1
(+`-`*@.X) -: +`-`*@.q
mbxcheck_jmf_ q


NB. &.> -----------------------------------------------------------------

q=: X=: ;:'Cogito, ergo sum. boustrophedonic chthonic'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ($&.> X)      -: $&.> q
(mbxcheck_jmf_ q), (|.&.> X)     -: |.&.> q
(mbxcheck_jmf_ q), (3|.&.> X)    -: 3|.&.> q
(mbxcheck_jmf_ q), (X i.&.>'o')  -: q i.&.>'o'
(mbxcheck_jmf_ q), (({.X),&.>{:X)-: ({.X) ,&.>{:q 
(mbxcheck_jmf_ q), (({.X),&.>{:X)-: ({.q) ,&.>{:X 
(mbxcheck_jmf_ q), (({.X),&.>{:X)-: ({.q) ,&.>{:q 
(mbxcheck_jmf_ q), ((0{X) ,&.>X) -: (0{X) ,&.>q 
(mbxcheck_jmf_ q), ((0{X) ,&.>X) -: (0{q) ,&.>X 
(mbxcheck_jmf_ q), ((0{X) ,&.>X) -: (0{q) ,&.>q 
(mbxcheck_jmf_ q), (X,&.> 0{X)   -: X ,&.>0{q 
(mbxcheck_jmf_ q), (X,&.> 0{X)   -: q ,&.>0{X
(mbxcheck_jmf_ q), (X,&.> 0{X)   -: q ,&.>0{q
(mbxcheck_jmf_ q), (X,&.>X)      -: X ,&.>q
(mbxcheck_jmf_ q), (X,&.>X)      -: q ,&.>X
(mbxcheck_jmf_ q), (X,&.>X)      -: q ,&.>q
(mbxcheck_jmf_ q), (X,&.>|.X)    -: X ,&.>|.q
(mbxcheck_jmf_ q), (X,&.>|.X)    -: q ,&.>|.X
(mbxcheck_jmf_ q), (X,&.>|.X)    -: q ,&.>|.q
 
q=: X=: (<5!:2 <'g'), <"0 ;:'Cogito, ergo sum. boustrophedonic chthonic'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ($&.> X)      -: $&.> q
(mbxcheck_jmf_ q), (|.&.> X)     -: |.&.> q
(mbxcheck_jmf_ q), (3|.&.> X)    -: 3|.&.> q
(mbxcheck_jmf_ q), (X i.&.>'o')  -: q i.&.>'o'
(mbxcheck_jmf_ q), (({.X),&.>{:X)-: ({.X) ,&.>{:q 
(mbxcheck_jmf_ q), (({.X),&.>{:X)-: ({.q) ,&.>{:X 
(mbxcheck_jmf_ q), (({.X),&.>{:X)-: ({.q) ,&.>{:q 
(mbxcheck_jmf_ q), ((0{X),&.>X)  -: (0{X) ,&.>q 
(mbxcheck_jmf_ q), ((0{X),&.>X)  -: (0{q) ,&.>X 
(mbxcheck_jmf_ q), ((0{X),&.>X)  -: (0{q) ,&.>q 
(mbxcheck_jmf_ q), (X,&.> 0{X)   -: X ,&.>0{q 
(mbxcheck_jmf_ q), (X,&.> 0{X)   -: q ,&.>0{X
(mbxcheck_jmf_ q), (X,&.> 0{X)   -: q ,&.>0{q
(mbxcheck_jmf_ q), (X,&.>X)      -: X ,&.>q
(mbxcheck_jmf_ q), (X,&.>X)      -: q ,&.>X
(mbxcheck_jmf_ q), (X,&.>X)      -: q ,&.>q
(mbxcheck_jmf_ q), (X,&.>|.X)    -: X ,&.>|.q
(mbxcheck_jmf_ q), (X,&.>|.X)    -: q ,&.>|.X
(mbxcheck_jmf_ q), (X,&.>|.X)    -: q ,&.>|.q
 

1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t X Y'



NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. s: ------------------------------------------------------------------

q=: X=: ;:'Cogito, ergo sum. ignorance apathy'
(mbxcheck_jmf_ q), X           -: q
(mbxcheck_jmf_ q), (  s: X)    -:     s: q
(mbxcheck_jmf_ q), (< s: X)    -: <   s: q
(mbxcheck_jmf_ q), (X;s: X)    -: X ; s: q
(mbxcheck_jmf_ q), (X;s: X)    -: q ; s: X
(mbxcheck_jmf_ q), (X;s: X)    -: q ; s: q

q=: X=: 0 s: 10
(mbxcheck_jmf_ q), X -: q
(mbxcheck_jmf_ q), 10 s: q
(mbxcheck_jmf_ q), X -: 0 s: 10
(mbxcheck_jmf_ q), q -: 0 s: 10


NB. S: ------------------------------------------------------------------

q=: X=: 5!:2 <'g'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (< S: 0 X)    -: <   S: 0 q
(mbxcheck_jmf_ q), (X;S: 0 X)    -: X ; S: 0 q
(mbxcheck_jmf_ q), (X;S: 0 X)    -: q ; S: 0 X
(mbxcheck_jmf_ q), (X;S: 0 X)    -: q ; S: 0 q

q=: X=: 5!:2 <'g'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X (; <@;) S: 0 1 {:: X) -: (X (; <@;) S: 0 1 {:: q)
(mbxcheck_jmf_ q), (X (; <@;) S: 0 1 {:: X) -: (q (; <@;) S: 0 1 {:: X)
(mbxcheck_jmf_ q), (X (; <@;) S: 0 1 {:: X) -: (q (; <@;) S: 0 1 {:: q)

q=: X=: 5!:2 <'g'
r=: Y=: 5!:2 <'g'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X (; <@;) S: 0 1 {:: Y) -: (X (; <@;) S: 0 1 {:: r)
(mbxcheck_jmf_ q), (X (; <@;) S: 0 1 {:: Y) -: (q (; <@;) S: 0 1 {:: Y)
(mbxcheck_jmf_ q), (X (; <@;) S: 0 1 {:: Y) -: (q (; <@;) S: 0 1 {:: r)


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t X Y'



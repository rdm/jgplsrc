NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. i. ------------------------------------------------------------------

q=: X=: (?50$#X){X=:     (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X i. X)      -: q i. q
(mbxcheck_jmf_ q), (X i. X)      -: q i. X
(mbxcheck_jmf_ q), (X i. X)      -: X i. q
f=: i.
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q  
(mbxcheck_jmf_ q), (X i.!.0 X)   -: q i.!.0 q
(mbxcheck_jmf_ q), (X i.!.0 X)   -: q i.!.0 X
(mbxcheck_jmf_ q), (X i.!.0 X)   -: X i.!.0 q
f=: i.!.0
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q 
q=: X=: (?50$#X){X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X i. X)      -: q i. q
(mbxcheck_jmf_ q), (X i. X)      -: q i. X
(mbxcheck_jmf_ q), (X i. X)      -: X i. q
f=: i.
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q
(mbxcheck_jmf_ q), (X i.!.0 X)   -: q i.!.0 q
(mbxcheck_jmf_ q), (X i.!.0 X)   -: q i.!.0 X
(mbxcheck_jmf_ q), (X i.!.0 X)   -: X i.!.0 q
f=: i.!.0
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q
q=: X=: (?60$#X){X=: <"0 ] 10 3$(<5!:2 <'g'),+&.>?29$1e6
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X i. X)      -: q i. q
(mbxcheck_jmf_ q), (X i. X)      -: q i. X
(mbxcheck_jmf_ q), (X i. X)      -: X i. q
(mbxcheck_jmf_ q), (X i.!.0 X)   -: q i.!.0 q
(mbxcheck_jmf_ q), (X i.!.0 X)   -: q i.!.0 X
(mbxcheck_jmf_ q), (X i.!.0 X)   -: X i.!.0 q

q=: X=: <"1 ] 100 3 ?@$ 5
(i.!.0~ X) -: i.!.0~q
mbxcheck_jmf_ q


NB. i: ------------------------------------------------------------------

q=: X=: (?50$#X){X=:     (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X i: X)      -: q i: q
(mbxcheck_jmf_ q), (X i: X)      -: q i: X
(mbxcheck_jmf_ q), (X i: X)      -: X i: q
f=: i:
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q 
(mbxcheck_jmf_ q), (X i:!.0 X)   -: q i:!.0 q
(mbxcheck_jmf_ q), (X i:!.0 X)   -: q i:!.0 X
(mbxcheck_jmf_ q), (X i:!.0 X)   -: X i:!.0 q
f=: i:!.0
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q
q=: X=: (?50$#X){X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X i: X)      -: q i: q
(mbxcheck_jmf_ q), (X i: X)      -: q i: X
(mbxcheck_jmf_ q), (X i: X)      -: X i: q
f=: i:
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q
(mbxcheck_jmf_ q), (X i:!.0 X)   -: q i:!.0 q
(mbxcheck_jmf_ q), (X i:!.0 X)   -: q i:!.0 X
(mbxcheck_jmf_ q), (X i:!.0 X)   -: X i:!.0 q
f=: i:!.0
(mbxcheck_jmf_ q), (X f"1 0 X)   -: q f"1 0 q
q=: X=: (?60$#X){X=: <"0 ] 10 3$(<5!:2 <'g'),+&.>?29$1e6
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X i: X)      -: q i: q
(mbxcheck_jmf_ q), (X i: X)      -: q i: X
(mbxcheck_jmf_ q), (X i: X)      -: X i: q
(mbxcheck_jmf_ q), (X i:!.0 X)   -: q i:!.0 q
(mbxcheck_jmf_ q), (X i:!.0 X)   -: q i:!.0 X
(mbxcheck_jmf_ q), (X i:!.0 X)   -: X i:!.0 q


NB. I. ------------------------------------------------------------------

q=: X=: /:~ <"0 ]89 ?@$ 79
r=: Y=:     <"0 ]97 ?@$ 89
(X I. Y) -: q I. Y
(X I. Y) -: X I. r
(X I. Y) -: q I. r
mbxcheck_jmf_ q
mbxcheck_jmf_ r

q=: X=: /:~ <"0 ]89 3 ?@$ 5
r=: Y=:     <"0 ]97 3 ?@$ 5
(X I. Y) -: q I. Y
(X I. Y) -: X I. r
(X I. Y) -: q I. r
mbxcheck_jmf_ q
mbxcheck_jmf_ r


NB. L. ------------------------------------------------------------------

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (L. X)        -: L. q
(mbxcheck_jmf_ q), (L.&.>X)      -: L.&.> q


NB. L: ------------------------------------------------------------------

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (#  L: _1 X)  -: #  L: _1 q
(mbxcheck_jmf_ q), (": L:  0 X)  -: ": L:  0 q
(mbxcheck_jmf_ q), (X ,L:  1 X)  -: X ,L: 1 q
(mbxcheck_jmf_ q), (X ,L:  1 X)  -: q ,L: 1 X
(mbxcheck_jmf_ q), (X ,L:  1 X)  -: q ,L: 1 q


NB. p. ------------------------------------------------------------------

Y=: -: _10+?4 5$20
q=: X=: < ?3$10 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (p. X)        -: p. q
(mbxcheck_jmf_ q), (X p. Y)      -: q p. Y
q=: X=: 2; ?3$10 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (p. X)        -: p. q
(mbxcheck_jmf_ q), (X p. Y)      -: q p. Y
q=: X=: < o. _5+?3$10 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (p. X)        -: p. q
(mbxcheck_jmf_ q), (X p. Y)      -: q p. Y
q=: X=: 2;o. _5+?3$10 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (p. X)        -: p. q
(mbxcheck_jmf_ q), (X p. Y)      -: q p. Y
q=: X=: < j./_5+?2 3$10 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (p. X)        -: p. q
(mbxcheck_jmf_ q), (X p. Y)      -: q p. Y
q=: X=: 2;j./_5+?2 3$10 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (p. X)        -: p. q
(mbxcheck_jmf_ q), (X p. Y)      -: q p. Y

q=: Y=: <3.5 11
X=: <11 22 33 ,. 2 3 5 ,. 1 3 7
(X p. Y) -: X p. q
mbxcheck_jmf_ q


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t X Y'



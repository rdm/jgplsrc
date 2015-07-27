NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. [ -------------------------------------------------------------------

q=: X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.'
Y=: j{X [ j=: ?2 3 4$#X
r=: j{q
(mbxcheck_jmf_ q), X                 -: q
(mbxcheck_jmf_ q), ([X)              -: ([q)
(mbxcheck_jmf_ q), (X[Y)             -: (q[r)
(mbxcheck_jmf_ q), (X[Y)             -: (X[r)
(mbxcheck_jmf_ q), (X[Y)             -: (q[Y)


NB. ] -------------------------------------------------------------------

q=: X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.'
Y=: j{X [ j=: ?2 3 4$#X
r=: j{q
(mbxcheck_jmf_ q), X                 -: q
(mbxcheck_jmf_ q), (]X)              -: (]q)
(mbxcheck_jmf_ q), (X]Y)             -: (q]r)
(mbxcheck_jmf_ q), (X]Y)             -: (X]r)
(mbxcheck_jmf_ q), (X]Y)             -: (q]Y)


NB. { -------------------------------------------------------------------

q=: X=: ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ({ X)         -: {q
(mbxcheck_jmf_ q), (j{X)         -: j{q [ j=: i.#q
(mbxcheck_jmf_ q), (j{X)         -: j{q [ j=: ?20##q

q=: X=: <"0 <"0 i.10 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (1 0{"2 X)    -: 1 0{"2 q
(mbxcheck_jmf_ q), (1 0 1{ X)    -: 1 0 1{ q
(mbxcheck_jmf_ q), (j{X)         -: j{q [ j=: <?$q
(mbxcheck_jmf_ q), (j{X)         -: j{q [ j=: <"1 ?12 3$$q

Y=: ?3 5 7 11$1e6
q=: X=: <"1 ?(2 3,$$Y)$$Y
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X{Y)         -: q{Y
q=: X=: <0 1;2 3 4;5;6 7 8
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X{Y)         -: q{Y
q=: X=: (<0 1;2 3 4;5;6 7 8),<1 0;2 4 4;1;8 6 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X{Y)         -: q{Y
q=: X=: <(<0 1);2 3 4;5;6 7 8
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X{Y)         -: q{Y
q=: X=: 2 3 4;5;6 7 8
(mbxcheck_jmf_ q), ((<0 1;X){Y)   -: (<0 1;q){Y

Y=: $. (2 3 4 5 ?@$ 10) * 0=2 3 4 5 ?@$ 6
q=: X=: <0;2 1;3
(X{Y) -: q{Y
mbxcheck_jmf_ q


NB. {. ------------------------------------------------------------------

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 7{.X)       -:  7{.q
(mbxcheck_jmf_ q), (_7{.X)       -: _7{.q
(mbxcheck_jmf_ q), ( 2{.X)       -:  2{.q
(mbxcheck_jmf_ q), (_2{.X)       -: _2{.q
(mbxcheck_jmf_ q), ( 7{.!.Y X)   -:  7{.!.Y q [ Y=: <5!:2 <'mean'
(mbxcheck_jmf_ q), (_7{.!.Y X)   -: _7{.!.Y q
(mbxcheck_jmf_ q), ( 2{.!.Y X)   -:  2{.!.Y q
(mbxcheck_jmf_ q), (_2{.!.Y X)   -: _2{.!.Y q
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 3 7{.X)     -:  3 7{.q
(mbxcheck_jmf_ q), (_3 7{.X)     -: _3 7{.q
(mbxcheck_jmf_ q), ( 3 2{.X)     -:  3 2{.q
(mbxcheck_jmf_ q), (_3 2{.X)     -: _3 2{.q
(mbxcheck_jmf_ q), ( 3 7{.!.Y X) -:  3 7{.!.Y q [ Y=: <5!:2 <'mean'
(mbxcheck_jmf_ q), (_3 7{.!.Y X) -: _3 7{.!.Y q
(mbxcheck_jmf_ q), ( 3 2{.!.Y X) -:  3 2{.!.Y q
(mbxcheck_jmf_ q), (_3 2{.!.Y X) -: _3 2{.!.Y q

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
r=: Y=: <(1;2);3
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (10{.!.Y X)   -: 10{.!.Y q
(mbxcheck_jmf_ q), (10{.!.Y X)   -: 10{.!.r X
(mbxcheck_jmf_ q), (10{.!.Y X)   -: 10{.!.r q


NB. {: ------------------------------------------------------------------

q=: X=: (?10 2 3$#X){X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ({:X)         -: {:q
(mbxcheck_jmf_ q), ({:"1 X)      -: {:"1 q
(mbxcheck_jmf_ q), ({:"2 X)      -: {:"2 q
f=: 3 : '{:y'
(mbxcheck_jmf_ q), (f X)         -: f q
(mbxcheck_jmf_ q), (f"1 X)       -: f"1 q
(mbxcheck_jmf_ q), (f"2 X)       -: f"2 q


NB. {:: -----------------------------------------------------------------

q=: X=: 5!:2 <'g'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ({::X)        -: {::q
(mbxcheck_jmf_ q), (j{::X)       -: j{::q     [ j=: 0;0;1
(mbxcheck_jmf_ q), (j{::&.><X)   -: j{::&.><q [ j=: < S:1{::q
(mbxcheck_jmf_ q), (< S: 0 q)    -: j{::&.><q [ j=: < S:1{::q

q=: X=: 0;0;0;0
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X{::Y)       -: q {:: Y=: 5!:2 <'g'

q=: X=: < S: 1 {:: 5!:2 <'g'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X{::&.><Y)   -: q {::&.> <Y=: 5!:2 <'g'


NB. } -------------------------------------------------------------------

q=: X=: (?20$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum. boustrophedonic jet'
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{X) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{q) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{q) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{q) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
q=: (j{X) (i.#q)}q
X=: (j{X) (i.#X)}X
(mbxcheck_jmf_ q), X             -: q

q=: X=: (?7 2 3$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum. boustrophedonic jet'
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{X) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{q) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{q) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
X=: (j{q) (i.#X)}X
q=: (j{q) (i.#q)}q
(mbxcheck_jmf_ q), X             -: q
j=: ?$~#X
q=: (j{X) (i.#q)}q
X=: (j{X) (i.#X)}X
(mbxcheck_jmf_ q), X             -: q

q=: X=: ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
t=: <"0 i.12
t=: (<q) 1}t
q=: (<'abc') 2}q
t -: (<0),(<q),<"0 ] 2+i.10
mbxcheck_jmf_ q
q=: (<'ergo') 2}q
t -: (<0),(<X),<"0 ] 2+i.10

q=: X=: ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
q=: (<q) 1}q
X=: (<X) 1}X
(mbxcheck_jmf_ q), X             -: q
q=: (<,',') 1}q
X=: (<,',') 1}X
(mbxcheck_jmf_ q), X             -: q

q=: X=: 0;1
(mbxcheck_jmf_ q), X                 -: q
q=: (i.&.>10000 4200) 0 1}q
X=: (i.&.>10000 4200) 0 1}X
(mbxcheck_jmf_ q), X                 -: q

q=: X=: 0;1;(2000$a:);3
(mbxcheck_jmf_ q), X                 -: q

q=: (<2) 2}q
X=: (<2) 2}X
(mbxcheck_jmf_ q), X                 -: q

q=: (<i.30000) 0}q
X=: (<i.30000) 0}X
(mbxcheck_jmf_ q), X                 -: q

q=: <"0 i.5
X=: <"0 i.5
Y=: (<3e6$'boustrophedonic')2}<"0 'abc'
'allocation error' -: ex 'q=: Y 0 1 2}q'
(mbxcheck_jmf_ q), X -: q

Y=: 3 4 5 ?@$ 100
q=: X=: <(<2);1 3
(_5 X}Y) -: _5 q}Y
mbxcheck_jmf_ q

q=: X=: <"1 ]5 3 ?@$ $Y
(_5 X}Y) -: _5 q}Y
mbxcheck_jmf_ q

q=: X=: (<1;2 3),<0;2 1
(_5 X}Y) -: _5 q}Y
mbxcheck_jmf_ q

q=: X=: ;:'one two three four five'
Y=: ;:'eins zwei drei vier funf'
t=: 5 ?@$ 2
(t}q,:Y) -: t}X,:Y
t=: t+2-2
(t}q,:Y) -: t}X,:Y
mbxcheck_jmf_ q
q=: t}q,:Y
mbxcheck_jmf_ q


NB. }. ------------------------------------------------------------------

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 7}.X)       -:  7}.q
(mbxcheck_jmf_ q), (_7}.X)       -: _7}.q
(mbxcheck_jmf_ q), ( 2}.X)       -:  2}.q
(mbxcheck_jmf_ q), (_2}.X)       -: _2}.q
q=: X=: <"0 <"0 i.5 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 3  1}.X)    -:  3  1}.q
(mbxcheck_jmf_ q), (_3  1}.X)    -: _3  1}.q
(mbxcheck_jmf_ q), ( 3 _2}.X)    -:  3 _2}.q
(mbxcheck_jmf_ q), (_3 _2}.X)    -: _3 _2}.q

q=: X=: (<"0 ?5$10) ,. +&.>i.5 10
(mbxcheck_jmf_ q), X                 -: q
(mbxcheck_jmf_ q), (f"1 X)           -: f"1 q                [ ".'f=: >@{. $ }.'
(mbxcheck_jmf_ q), (j f"_1 X)        -: j f"_1 q [ j=: ?5$10 [ ".'f=: [ {. ]   '
(mbxcheck_jmf_ q), (({."1 X) f"_1 X) -: ({."1 q) f"_1 q      [ ".'f=: >@[ {. ] '
q=: X=: (<"0 ?5$10) ,. <"0 +&.>i.5 10
(mbxcheck_jmf_ q), X                 -: q
(mbxcheck_jmf_ q), (f"1 X)           -: f"1 q                [ ".'f=: >@{. $ }.'
(mbxcheck_jmf_ q), (j f"_1 X)        -: j f"_1 q [ j=: ?5$10 [ ".'f=: [ {. ]   '
(mbxcheck_jmf_ q), (({."1 X) f"_1 X) -: ({."1 q) f"_1 q      [ ".'f=: >@[ {. ] '


NB. }: ------------------------------------------------------------------

q=: X=: (?10 2 3$#X){X=: <"0 (<5!:2 <'g') , ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X                 -: q
(mbxcheck_jmf_ q), (}:X)         -: }:q
(mbxcheck_jmf_ q), (}:"0 X)      -: }:"0 q
(mbxcheck_jmf_ q), (}:"1 X)      -: }:"1 q
(mbxcheck_jmf_ q), (}:"2 X)      -: }:"2 q


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'


4!:55 ;:'f f1 g j mean q r t X Y'



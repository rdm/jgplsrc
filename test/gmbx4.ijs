NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. # -------------------------------------------------------------------

q=: X=: (?20$#X){X=: <"0 (<5!:2 <'g'), ;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: ?(#X)$5
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: ?(#X)$2
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: ?5
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: 0
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: 1
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: j./?(2,#X)$10
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: j./?2$10
(mbxcheck_jmf_ q), (j#X)         -: j # q [ j=: 0j2
q=: X=: <"0 <"0 i.5 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (j#   X)      -: j #   q [ j=: 1 2 0 4 3
(mbxcheck_jmf_ q), (j#   X)      -: j #   q [ j=: 1 1 0 1 1
(mbxcheck_jmf_ q), (j#   X)      -: j #   q [ j=: 3 
(mbxcheck_jmf_ q), (j#   X)      -: j #   q [ j=: 1 
(mbxcheck_jmf_ q), (j#   X)      -: j #   q [ j=: j./?2 5$10
(mbxcheck_jmf_ q), (j#   X)      -: j #   q [ j=: j./?2$10 
(mbxcheck_jmf_ q), (j#   X)      -: j #   q [ j=: 0j3 
(mbxcheck_jmf_ q), (j#"1 X)      -: j #"1 q [ j=: 1 2 0 4
(mbxcheck_jmf_ q), (j#"1 X)      -: j #"1 q [ j=: 1 1 0 1
(mbxcheck_jmf_ q), (j#"1 X)      -: j #"1 q [ j=: 3
(mbxcheck_jmf_ q), (j#"1 X)      -: j #"1 q [ j=: 1 
(mbxcheck_jmf_ q), (j#"1 X)      -: j #"1 q [ j=: j./?2 4$10
(mbxcheck_jmf_ q), (j#"1 X)      -: j #"1 q [ j=: j./?2$10

q=: X=: (<5!:2 <'g'), ;:'Cogito, ergo sum.'
r=: Y=: <(1;2);3
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (3j2#!.Y X)   -: 3j2#!.Y q
(mbxcheck_jmf_ q), (3j2#!.Y X)   -: 3j2#!.r X
(mbxcheck_jmf_ q), (3j2#!.Y X)   -: 3j2#!.r q


NB. / -------------------------------------------------------------------

q=: X=: (?2 12$2){(<5!:2 <'g'),< i.2 3 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (= /X)        -: = /q
(mbxcheck_jmf_ q), (~:/X)        -: ~:/q
(mbxcheck_jmf_ q), (, /X)        -: , /q
(mbxcheck_jmf_ q), (; /X)        -: ; /q
(mbxcheck_jmf_ q), (f /X)        -: (f=: =         )/q
(mbxcheck_jmf_ q), (f /X)        -: (f=: ~:        )/q
(mbxcheck_jmf_ q), (f /X)        -: (f=: ,         )/q
(mbxcheck_jmf_ q), (f /X)        -: (f=: ;         )/q
(mbxcheck_jmf_ q), (f /X)        -: (f=: 4 : 'x= y')/q
(mbxcheck_jmf_ q), (f /X)        -: (f=: 4 : 'x~:y')/q
(mbxcheck_jmf_ q), (f /X)        -: (f=: 4 : 'x, y')/q
(mbxcheck_jmf_ q), (f /X)        -: (f=: 4 : 'x; y')/q 
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (= /X)        -: = /q
(mbxcheck_jmf_ q), (~:/X)        -: ~:/q
(mbxcheck_jmf_ q), (, /X)        -: , /q
(mbxcheck_jmf_ q), (; /X)        -: ; /q
f=: =
(mbxcheck_jmf_ q), (f /X)        -: f/q           
f=: ~:
(mbxcheck_jmf_ q), (f /X)        -: f/q        
f=: ,
(mbxcheck_jmf_ q), (f /X)        -: f/q         
f=: ;
(mbxcheck_jmf_ q), (f /X)        -: f/q        
f=: 4 : 'x= y'
(mbxcheck_jmf_ q), (f /X)        -: f/q
f=: 4 : 'x~:y'
(mbxcheck_jmf_ q), (f /X)        -: f/q 
f=: 4 : 'x, y'
(mbxcheck_jmf_ q), (f /X)        -: f/q
f=: 4 : 'x; y' 
(mbxcheck_jmf_ q), (f /X)        -: f/q
q=: X=: +`%
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X/Y)         -: q/Y=: 1+?5$10
(mbxcheck_jmf_ q), (X/Y)         -: q/Y=: 1+?5$10x

q=: X=: <"1 ]11 7 ?@$ 100
(,.&.>/X) -: ,.&.>/q
mbxcheck_jmf_ q

q=: X=: <"1 <"0 ] 11 7 ?@$ 100
(,.&.>/X) -: ,.&.>/q
mbxcheck_jmf_ q


NB. /. ------------------------------------------------------------------

q=: X=:     (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X < /.X)     -: q < /. q
(mbxcheck_jmf_ q), (X < /.X)     -: q < /. X
(mbxcheck_jmf_ q), (X < /.X)     -: X < /. q
(mbxcheck_jmf_ q), (X # /.X)     -: q # /. q
(mbxcheck_jmf_ q), (X [ /.X)     -: q [ /. q
(mbxcheck_jmf_ q), (X ] /.X)     -: q ] /. q
(mbxcheck_jmf_ q), (X {./.X)     -: q {./. q
(mbxcheck_jmf_ q), (X {:/.X)     -: q {:/. q
(mbxcheck_jmf_ q), (X }./.X)     -: q }./. q
(mbxcheck_jmf_ q), (X }:/.X)     -: q }:/. q
(mbxcheck_jmf_ q), (X 3&$/.X)    -: q 3&$/. q
q=: X=: <"0 (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X < /.X)     -: q < /. q
(mbxcheck_jmf_ q), (X < /.X)     -: q < /. X
(mbxcheck_jmf_ q), (X < /.X)     -: X < /. q
(mbxcheck_jmf_ q), (X # /.X)     -: q # /. q
(mbxcheck_jmf_ q), (X [ /.X)     -: q [ /. q
(mbxcheck_jmf_ q), (X ] /.X)     -: q ] /. q
(mbxcheck_jmf_ q), (X {./.X)     -: q {./. q
(mbxcheck_jmf_ q), (X {:/.X)     -: q {:/. q
(mbxcheck_jmf_ q), (X }./.X)     -: q }./. q
(mbxcheck_jmf_ q), (X }:/.X)     -: q }:/. q
(mbxcheck_jmf_ q), (X 3&$/.X)    -: q 3&$/. q

q=: X=: (<@('a'&,)@":)`(<@('b'&,)@":)`(<@('c'&,)@":)
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X/.Y)        -: q/.Y=: i.4 5


NB. /: ------------------------------------------------------------------

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (/: X)        -: /: q 
(mbxcheck_jmf_ q), (/:~X)        -: /:~q 
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (/: X)        -: /: q 
(mbxcheck_jmf_ q), (/:~X)        -: /:~q 
(mbxcheck_jmf_ q), (/:   X)      -: /:   q 
(mbxcheck_jmf_ q), (/:"1 X)      -: /:"1 q 
(mbxcheck_jmf_ q), (/:"2 X)      -: /:"2 q 

q=: X=: (?7 2$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum.'
r=: Y=: (?7 2$#Y){Y=: (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X/:Y)        -: X/:r
(mbxcheck_jmf_ q), (X/:Y)        -: q/:Y
(mbxcheck_jmf_ q), (X/:Y)        -: q/:r


NB. \ -------------------------------------------------------------------

q=: X=: (?5 4 3$2){(<5!:2 <'g'),< i.2 3 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,/\X)        -: ,/\q
f=: ,
(mbxcheck_jmf_ q), (f/\X)        -: f/\q

q=: X=: (?20$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum.' 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 3 <\X)      -:  3 <\q
(mbxcheck_jmf_ q), (_3 <\X)      -: _3 <\q 
(mbxcheck_jmf_ q), ( 30<\X)      -:  30<\q
(mbxcheck_jmf_ q), (_30<\X)      -: _30<\q 
(mbxcheck_jmf_ q), ( 3 [\X)      -:  3 [\q
(mbxcheck_jmf_ q), (_3 [\X)      -: _3 [\q 
(mbxcheck_jmf_ q), ( 30[\X)      -:  30[\q
(mbxcheck_jmf_ q), (_30[\X)      -: _30[\q 
f=: |.
(mbxcheck_jmf_ q), ( 3 f\X)      -:  3 f\q 
(mbxcheck_jmf_ q), (_3 f\X)      -: _3 f\q 
(mbxcheck_jmf_ q), ( 30 f\X)     -:  30 f\q 
(mbxcheck_jmf_ q), (_30 f\X)     -: _30 f\q
q=: X=: (?20$#X){X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.' 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 3 <\X)      -:  3 <\q
(mbxcheck_jmf_ q), (_3 <\X)      -: _3 <\q 
(mbxcheck_jmf_ q), ( 30<\X)      -:  30<\q
(mbxcheck_jmf_ q), (_30<\X)      -: _30<\q 
(mbxcheck_jmf_ q), ( 3 [\X)      -:  3 [\q
(mbxcheck_jmf_ q), (_3 [\X)      -: _3 [\q 
(mbxcheck_jmf_ q), ( 30[\X)      -:  30[\q
(mbxcheck_jmf_ q), (_30[\X)      -: _30[\q 
f=: |.
(mbxcheck_jmf_ q), ( 3 f\X)      -:  3 f\q 
(mbxcheck_jmf_ q), (_3 f\X)      -: _3 f\q 
(mbxcheck_jmf_ q), ( 30 f\X)     -:  30 f\q
(mbxcheck_jmf_ q), (_30 f\X)     -: _30 f\q

q=: X=: (<@('a'&,)@":)`(<@('b'&,)@":)`(<@('c'&,)@":)
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X\Y)         -: q\Y=: i.7
(mbxcheck_jmf_ q), ( 3 X\Y)      -:  3 q\Y=: i.7
(mbxcheck_jmf_ q), (_3 X\Y)      -: _3 q\Y=: i.7


NB. \. ------------------------------------------------------------------

q=: X=: <"0 ?12 3$1e6
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,/\.X)       -: ,/\.q
f=: ,
(mbxcheck_jmf_ q), (f/\.X)       -: f/\.q 
f=: 4 : 'x,y'
(mbxcheck_jmf_ q), (f/\.X)       -: f/\.q 
q=: X=: <"0 <"0 ?12 3$1e6
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (,/\.X)       -: ,/\.q
f=: ,
(mbxcheck_jmf_ q), (f/\.X)       -: f/\.q
f=: 4 : 'x,y'
(mbxcheck_jmf_ q), (f/\.X)       -: f/\.q 

q=: X=: (?20$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum.' 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 3 <\.X)     -:  3 <\.q
(mbxcheck_jmf_ q), (_3 <\.X)     -: _3 <\.q 
(mbxcheck_jmf_ q), ( 30<\.X)     -:  30<\.q
(mbxcheck_jmf_ q), (_30<\.X)     -: _30<\.q 
(mbxcheck_jmf_ q), ( 3 [\.X)     -:  3 [\.q
(mbxcheck_jmf_ q), (_3 [\.X)     -: _3 [\.q 
(mbxcheck_jmf_ q), ( 30[\.X)     -:  30[\.q
(mbxcheck_jmf_ q), (_30[\.X)     -: _30[\.q 
f=: |.
(mbxcheck_jmf_ q), ( 3 f\.X)     -:  3 f\.q 
(mbxcheck_jmf_ q), (_3 f\.X)     -: _3 f\.q
(mbxcheck_jmf_ q), ( 30 f\.X)    -:  30 f\.q 
(mbxcheck_jmf_ q), (_30 f\.X)    -: _30 f\.q
q=: X=: (?20$#X){X=: <"0 (<5!:2 <'g'),;:'Cogito, ergo sum.' 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), ( 3 <\.X)     -:  3 <\.q
(mbxcheck_jmf_ q), (_3 <\.X)     -: _3 <\.q 
(mbxcheck_jmf_ q), ( 30<\.X)     -:  30<\.q
(mbxcheck_jmf_ q), (_30<\.X)     -: _30<\.q 
(mbxcheck_jmf_ q), ( 3 [\.X)     -:  3 [\.q
(mbxcheck_jmf_ q), (_3 [\.X)     -: _3 [\.q 
(mbxcheck_jmf_ q), ( 30[\.X)     -:  30[\.q
(mbxcheck_jmf_ q), (_30[\.X)     -: _30[\.q 
f=: |.
(mbxcheck_jmf_ q), ( 3 f\.X)     -:  3 f\.q 
(mbxcheck_jmf_ q), (_3 f\.X)     -: _3 f\.q 
(mbxcheck_jmf_ q), ( 30 f\.X)    -:  30 f\.q
(mbxcheck_jmf_ q), (_30 f\.X)    -: _30 f\.q

q=: X=: (<@('a'&,)@":)`(<@('b'&,)@":)`(<@('c'&,)@":)
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (X\.Y)        -: q\.Y=: i.7
(mbxcheck_jmf_ q), ( 3 X\.Y)     -:  3 q\.Y=: i.7
(mbxcheck_jmf_ q), (_3 X\.Y)     -: _3 q\.Y=: i.7


NB. \: ------------------------------------------------------------------

q=: X=: (<5!:2 <'g') 1};:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (\: X)        -: \: q 
(mbxcheck_jmf_ q), (\:~X)        -: \:~q 
q=: X=: <"0 <"0 i.2 3 4
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (\: X)        -: \: q 
(mbxcheck_jmf_ q), (\:~X)        -: \:~q 
(mbxcheck_jmf_ q), (\:   X)      -: \:   q 
(mbxcheck_jmf_ q), (\:"1 X)      -: \:"1 q 
(mbxcheck_jmf_ q), (\:"2 X)      -: \:"2 q 

q=: X=: (?7 2$#X){X=: (<5!:2 <'g'),;:'Cogito, ergo sum.'
r=: Y=: (?7 2$#Y){Y=: (<5!:2 <'g'),;:'Cogito, ergo sum.'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ r), Y             -: r
(mbxcheck_jmf_ q), (X\:Y)        -: X\:r
(mbxcheck_jmf_ q), (X\:Y)        -: q\:Y
(mbxcheck_jmf_ q), (X\:Y)        -: q\:r


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j mean q r t x X Y'



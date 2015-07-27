NB. 128!:5 --------------------------------------------------------------

isnan=: 128!:5

(($X)$0) -: isnan X=: 31 17 3 ?@$ 2
(($X)$0) -: isnan X=: 31    3 ?@$ 2e9
(($X)$0) -: isnan X=: 31      ?@$ 0
(($X)$0) -: isnan X=: j./2 31 ?@$ 0
(($X)$0) -: isnan X=: 31 17   ?@$ 200x
(($X)$0) -: isnan X=: % /2 31 ?@$ 20x
(($X)$0) -: isnan X=: 'Barack Obama vs. Hillary Clinton'
(($X)$0) -: isnan X=: ;:'John McCain'

(($X)$0) -: isnan X=: _ __ 567
(($X)$0) -: isnan X=: _ __ 5j7

((i.#X) e. i) -: isnan _.      (i=: 100 ?@$ #X)}X=: 1e4 ?@$ 0
((i.#X) e. i) -: isnan (<_.  ) (i=: 100 ?@$ #X)}X=: 1e4 $ a:
((i.#X) e. i) -: isnan (<<<_.) (i=: 100 ?@$ #X)}X=: 1e4 $ a:

1 = isnan <^:10 ] _.
0 = isnan <20 ?@$ 2
0 = isnan <20 ?@$ 2e9
0 = isnan <'abc'

X=: 1e6 ?@$ 0
b=: (#X) ?@$ 2
X=: (-~0j1)+_. (I.b)}X
b -: isnan X

'domain error' -: 0 (128!:5) etx 3 4 5
'domain error' -: 1 (128!:5) etx 3 4 5


NB. 128!:5 and mapped boxed arrays --------------------------------------

0!:0 <testpath,'gmbx.ijs'

r=: X=: 1 2 3 ; _. ; 3j4 _. ; 'abc'
(isnan X) -: isnan r

r=: X=: (5!:1 <'mean') ; _. ; (<<<3j4 _.) ; 'abc'
(isnan X) -: isnan r

0 = unmap_jmf_ 'q'
0 = unmap_jmf_ 'r'


4!:55 ;:'b f f1 g i isnan mean q r X'

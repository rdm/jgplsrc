NB. ,&.>/"r Y -----------------------------------------------------------

c=: ,

a=: ' 0123456789',(,65 97+/i.26){a.

f=: 3 : 0
 assert. (c&.>/ -: ,&.>/) y
 for_r. i.#$y do.
  assert. (c&.>/"r -: ,&.>/"r) y
 end.
 1
)

f Y=: <"0 ] _5e5+11 19 13 ?@$ 1e6 
f Y=: <"0 ] 11 19 13 ?@$ 0 
f Y=: <"0 a{~11 19 13 ?@$ #a

NB. unit length axis

f Y=: <"0 a{~11 19  1 ?@$ #a
f Y=: <"0 a{~11  1 13 ?@$ #a
f Y=: <"0 a{~ 1 19 13 ?@$ #a

f Y=: <"0 a{~1 1 1 ?@$ #a

NB. 0-length axis

f Y=: <"0 a{~11 19  0 ?@$ #a
f Y=: <"0 a{~11  0 13 ?@$ #a
f Y=: <"0 a{~ 0 19 13 ?@$ #a

f Y=: <"0 a{~0 0 0 ?@$ #a

NB. non-boxed arguments

f Y=: _5e5+11 19 13 ?@$ 1e6 
f Y=: 11 19 13 ?@$ 0 
f Y=: a{~11 19 13 ?@$ #a

NB. scalar arguments

f Y=: <4
f Y=: <4.5
f Y=: <2 3$'abcd'
f Y=: 4
f Y=: 4.5
f Y=: 'a'


4!:55 ;:'a c f r Y'



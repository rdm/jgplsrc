NB. X`:Y ----------------------------------------------------------------

f =: - ` % ` ^ `: 0
Y =: 2 3
X =: 5 7
(( -Y),( %Y),: ^Y) -:   f Y
((5-Y),(5%Y),:5^Y) -: 5 f Y
((X-Y),(X%Y),:X^Y) -: X f Y

(;/ -: ;`;`:3) X=: 10   ?@$ 1e6
(;/ -: ;`;`:3) X=: 10 3 ?@$ 1e6

'domain error' -: ex '-`a`:0 ' [ a=: 5!:1 <'plus' [ plus=: '+'
'domain error' -: ex '-`a/ '
'domain error' -: ex '-`a/.'
'domain error' -: ex '-`a\ '
'domain error' -: ex '-`a\.'
'domain error' -: ex '-`a;. 1'
'domain error' -: ex '-`a;._1'
'domain error' -: ex '-`a;. 2'
'domain error' -: ex '-`a;._2'


4!:55 ;:'a f X Y'



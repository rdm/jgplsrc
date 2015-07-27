NB. ~ -------------------------------------------------------------------

3   -: 2 -~ 5
2.5 -: 2 %~ 5

(X=:?2 3 4$1000) (-~ -: ] - [) Y=:?2 3$1000
(X=:?2 3 4$1000) (%~ -: ] % [) Y=:?2 3$1000

(+:t) -: +~t=:_50+?2 3 4$100
(*:t) -: *~t=:o._50+?2 3 4$100

mean=: +/ % #
(mean X) -: 'mean'~ X=: ?100$1000

'value error'  -: ex '''asdf''~ X'

'domain error' -: ex '0 0 1~ X'
'domain error' -: ex '1 2 3~ X'
'domain error' -: ex '1 2.3~ X'
'domain error' -: ex '1 2j3~ X'
'domain error' -: ex '1 23x~ X'
'domain error' -: ex '1 2r3~ X'
'domain error' -: ex '(<''mean'')~ X'

'ill-formed name' -: ex '      ''a___''~ 12'
'ill-formed name' -: ex '  ''a_gosh!_''~ 12'
'ill-formed name' -: ex '''a_gosh*@!_''~ 12'
'ill-formed name' -: ex ' ''do_gosh!_''~ 12'


4!:55 ;:'mean t X Y'



NB. [: ------------------------------------------------------------------

ss =: [: +/ *:
(+/*:X)  -: ss X=:  _40+?20$1000
(+/*:X)  -: ss X=:o._40+?20$1000
(+/X*:Y) -: X ss Y [ X=:?20$2 [ Y=:?20$2

cc=: [:
f =: cc +/ *:
(+/*:X) -: f X=:_40+?20$1000
cc=: c1
c1=: c2
c2=: [:
(+/*:X) -: f X=:_40+?20$1000
cc =. %:
((%:X)+/*:X) -: f X

'domain error' -: [: etx 1 0 1
'domain error' -: [: etx 3 4$'chthonic'
'domain error' -: [: etx ?2 3 4$100000
'domain error' -: [: etx o.?2 4$100000
'domain error' -: [: etx r.o.?2 4$100000
'domain error' -: [: etx ;:'Cogito, ergo sum.'

'domain error' -: (<'boo hoo')   [: etx 1 0 1
'domain error' -: (?7$10000)     [: etx 'triskaidekaphobia'
'domain error' -: (a.{~?95$256)  [: etx ?2 3 4$100000
'domain error' -: (?17$2)        [: etx o.?2 4$100000
'domain error' -: 'eleemosynary' [: etx r.o.?2 4$100000
'domain error' -: ''             [: etx ;:'Cogito, ergo sum.'


4!:55 ;:'c1 c2 cc f ss t X Y'



NB. ] --------------------------------------------------------------------

xb =: ?2 3 4$2
xa =: 'Fourscore and seven years ago'
xi =: ?9 12$100000
xd =: o.?1 2 3$100000
xj =: j.&?~2 2 3 3$1000

xb -: xb ] xb
xb -: xa ] xb
xb -: xi ] xb
xb -: xd ] xb
xb -: xj ] xb

xa -: xb ] xa
xa -: xa ] xa
xa -: xi ] xa
xa -: xd ] xa
xa -: xj ] xa

xi -: xb ] xi
xi -: xa ] xi
xi -: xi ] xi
xi -: xd ] xi
xi -: xj ] xi

xd -: xb ] xd
xd -: xa ] xd
xd -: xi ] xd
xd -: xd ] xd
xd -: xj ] xd

xj -: xb ] xj
xj -: xa ] xj
xj -: xi ] xj
xj -: xd ] xj
xj -: xj ] xj

X=: i.1e4
Y=: 2e4$'boustrophedonic chuffed'

(IF64{2000 2400) > t=: 7!:2 'X]Y'


NB. ]"r ------------------------------------------------------------------

dex =: 3 : ('y'; ':'; 'y')

'abc' (]" 1 -: dex" 1) ?2 3 4$100
4 5   (]"_1 -: dex"_1) ?2 3 4$100

f=: ]  ^:(2&|)
g=: 0&+^:(2&|)

(f/   -: g/  ) X=:?20$10
(f/\  -: g/\ ) X=:?20$10
(f/\. -: g/\.) X=:?20$10
(f"0  -: g"0 ) X=:?20$10
(f^:3 -: g^:3) X=:? 2$10

'length error' -: 'abc' ]"_1 etx i.2 3


4!:55 ;:'dex f g t X xa xb xd xi xj Y'



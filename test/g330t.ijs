NB. ;Y timing tests -----------------------------------------------------

ss   =: +/ @: *:
rsq  =: [: -. ss@(- +/ % #)@[ %~ ss@:-
ratio=: >./ % <./

a=: ;:'Cogito, ergo sum. boustrophedonic chthonic'
Y=: ". '6!:2 ''; t'' [ t=: a $~ ',"1 ": ,. X=: 1000*1+i.9
threshold < t=: Y rsq Y (] +/ .* %.) X^/0 1

X=:3000$a
Y=:(<$0),X
5>ratio t=:100 timer&>';X';';Y'


4!:55 ;:'a ratio rsq ss t X Y'



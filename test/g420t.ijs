NB. f/ timing tests -----------------------------------------------------

ss =: +/ @: *:
rsq=: [: -. ss@(- +/ % #)@[ %~ ss@:-

f=: 3 : ',/(y,2 3)$''x'''
Y=: timer 'f ',"1 ": ,. X=: 2^8+i.12
threshold < Y rsq Y (] +/ .* %.) X^/0 1

f=: 3 : ',./(y,5 3)$''a'''
Y=: timer 'f ',"1 ":,. X=: 2^8+i.12
threshold < Y rsq Y (] +/ .* %.) X^/0 1

t=: (timer ',./X'),timer '|:X' [ X=: a.{~7001 131?@$#a.
(1-threshold) > s=: (|@-/ % >./) t

f=: 3 : ',.&.>/y$(5 3$''a'');5 2$''b'''
Y=: timer 'f ',"1 ":,. X=: 2^8+i.12
threshold < Y rsq Y (] +/ .* %.) X^/0 1

f=: 3 : ';/(y,4 3)$''a'''
Y=: timer 'f ',"1 ":,. X=: 2^8+i.12
threshold < Y rsq Y (] +/ .* %.) X^/0 1


4!:55 ;:'f rsq s ss t X Y'



NB. f. and performance --------------------------------------------------

tally=: #
plus =: +
sum  =: plus/
mean =: sum % tally
rev  =: |.

X=: 5e5?@$100
Y=: 5e5?@$100

s=: 10 timer 'X #/. Y'
t=: 10 timer 'X tally/.f. Y'
(1-*:threshold) > | (s-t)%s

s=: 10 timer '+/Y'
t=: 10 timer 'sum f. Y'
(1-*:threshold) > | (s-t)%s

s=: 10 timer '(+/ % #) Y'
t=: 10 timer 'mean f. Y'
(1-*:threshold) > | (s-t)%s

Y=: (1e5 7?@$#a.){a.
s=: 10 timer '|."1 Y'
t=: 10 timer 'rev"1 f. Y'
(1-*:threshold) > | (s-t)%s


4!:55 ;:'mean plus rev s sum t tally X Y'



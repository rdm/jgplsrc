NB. mapped boxed arrays -------------------------------------------------

0!:0 <testpath,'gmbx.ijs'


NB. 1!: -----------------------------------------------------------------

q=: X=: <'asdf'
t=: ": ?20$1e6
t 1!:2 X

(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (1!:1 X)      -: 1!:1 q

(mbxcheck_jmf_ q), 1 [ t 1!:2 q

(mbxcheck_jmf_ q), 1 [ t 1!:3 q

(mbxcheck_jmf_ q), (1!:4 X)      -: 1!:4 q

q=: X=: 'asdf';2 13
(mbxcheck_jmf_ q), (1!:11 X)     -: 1!:11 q

q=: X=: 'asdf';3
Y=: 'foo upon thee'
(Y 1!:12 X)   -: Y 1!:12 q
q=: X=: 'asdf';3,#Y
Y             -: 1!:11 q
mbxcheck_jmf_ q

q=: <'asdf'
(mbxcheck_jmf_ q), 1 [ 1!:55 q


NB. 3!: -----------------------------------------------------------------

q=: X=: <"0 (?2 12$2){(<5!:2 <'g'),< i.2 3 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), q             -: 3!:2 (3!:1) q
(mbxcheck_jmf_ q), X             -: 3!:2 (3!:1) q
(mbxcheck_jmf_ q), q             -: 3!:2 (3!:3) q
(mbxcheck_jmf_ q), X             -: 3!:2 (3!:3) q
q=: X=: <"0 <"0 ?2 3 4$1e6 
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), q             -: 3!:2 (3!:1) q
(mbxcheck_jmf_ q), X             -: 3!:2 (3!:1) q
(mbxcheck_jmf_ q), q             -: 3!:2 (3!:3) q
(mbxcheck_jmf_ q), X             -: 3!:2 (3!:3) q


NB. 4!: -----------------------------------------------------------------

q=: X=: ;:'g mean junkfoo'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (4!:0 X)      -: 4!:0 q

q=: X=: ;:'g mean junkfoo'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (4!:4 X)      -: 4!:4 q

q=: X=: t=: ;:'junkfoo t'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), 1 1 -: 4!:55 q


NB. 5!: -----------------------------------------------------------------

q=: X=: <'mean'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (5!:1 X)      -: 5!:1 q
(mbxcheck_jmf_ q), (5!:2 X)      -: 5!:2 q
(mbxcheck_jmf_ q), (5!:4 X)      -: 5!:4 q
(mbxcheck_jmf_ q), (5!:5 X)      -: 5!:5 q
(mbxcheck_jmf_ q), (5!:6 X)      -: 5!:6 q

q=: X=: (5!:2 <'g'); ;:'avuncular kakistocracy hermeneutics'
(mbxcheck_jmf_ q), (5!:1 <'X') -: 5!:1 <'q'
(mbxcheck_jmf_ q), (5!:2 <'X') -: 5!:2 <'q'
(mbxcheck_jmf_ q), (5!:4 <'X') -: 5!:4 <'q'
(mbxcheck_jmf_ q), (5!:5 <'X') -: 5!:5 <'q'
(mbxcheck_jmf_ q), (5!:6 <'X') -: 5!:6 <'q'


NB. 7!: -----------------------------------------------------------------

q=: X=: 5!:1 <'mean'
(mbxcheck_jmf_ q), X             -: q
(7!:5 <'q') >: 7!:5 <'X'

q=: X=: (;:'Cogito, ergo sum.'), {:: 5!:1 <'mean'
(mbxcheck_jmf_ q), X             -: q
(7!:5 <'q') >: 7!:5 <'X'

q=: X=: 5!:1 <'g'
(mbxcheck_jmf_ q), X             -: q
(7!:5 <'q') >: 7!:5 <'X'

q=: X=: (;:'Cogito, ergo sum.'), {:: 5!:1 <'g'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (7!:5 <'q') >: 7!:5 <'X'

q=: X=: ;:'base z'
(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), (7!:6 q) -: 7!:6 X


NB. 8!: -----------------------------------------------------------------

q=: X=: <"0 ]7 ?@$ 0
('' (8!:0) X) -: '' (8!:0) q
('' (8!:1) X) -: '' (8!:1) q
('' (8!:2) X) -: '' (8!:2) q
mbxcheck_jmf_ q

q=: X=: <'c4'
Y=: 3 4 ?@$ 0
(X 8!:0 Y) -: q 8!:0 Y
(X 8!:1 Y) -: q 8!:1 Y
(X 8!:2 Y) -: q 8!:2 Y
mbxcheck_jmf_ q


NB. 9!: -----------------------------------------------------------------

q=: X=: 9!:8 ''
9!:9 q
mbxcheck_jmf_ q

k=: 9!:42 ''

9!:43 ]1
q=: X=: 9!:44 ''
(mbxcheck_jmf_ q), X -: q
(mbxcheck_jmf_ q), 9!:45 q
9!:43 ]2
q=: X=: 9!:44 ''
(mbxcheck_jmf_ q), X -: q
(mbxcheck_jmf_ q), 9!:45 q
9!:43 ]3
q=: X=: 9!:44 ''
(mbxcheck_jmf_ q), X -: q
(mbxcheck_jmf_ q), 9!:45 q
9!:43 ]4
q=: X=: 9!:44 ''
(mbxcheck_jmf_ q), X -: q
(mbxcheck_jmf_ q), 9!:45 q
9!:43 ]0
q=: X=: 9!:44 ''
(mbxcheck_jmf_ q), X -: q
(mbxcheck_jmf_ q), 9!:45 q

9!:43 k


NB. 15!: ----------------------------------------------------------------

NB. see gdll.ijs

load'dll'

3 : 0 ''
if. 0=4!:0<'libtsdll' do. 1[lib=: libtsdll return. end.
t=. >IF64{'32';'64'
s=. >(UNAME-:'Darwin'){'.so';'.dylib'
if. IFUNIX do.
 lib=: jpath '~home/dev/j/tsdll/libtsdll',t,s
else.
 if. IF64 do.
  lib=: '\dev\j\p_tsdll\release64\tsdll.dll'
 else.
  lib=: '\dev\j\p_tsdll\release\tsdll.dll'
 end.
end.
lib=: lib,' '
1
)

dcd=: 4 : '(lib,x) cd y'

q=: X=: 1.1;2.2
('ddd d d d' dcd X) -: 'ddd d d d' dcd q
mbxcheck_jmf_ q

add=: mema 2*IF64{4 8
3 4 memw add,0,2,JINT
q=: X=: (,2);2;<<add
('xbasic x *x x *x' dcd X) -: 'xbasic x *x x *x' dcd q NB. FIXME
mbxcheck_jmf_ q
0=memf add

q=: X=: ;:'q'
(15!:6 X) -: 15!:6 q
mbxcheck_jmf_ q

'domain error' -: 15!:6 etx <'dcd'

4!:55 ;:'add dcd lib'


NB. 18!: ----------------------------------------------------------------

q=: X=: <'xyz'
r=: Y=: ;:'bou stro phedonic'
abc_xyz_ =: ?10$100

(mbxcheck_jmf_ q), X             -: q
(mbxcheck_jmf_ q), Y             -: r
(mbxcheck_jmf_ q), (abc__X)      -: abc__q
(mbxcheck_jmf_ q), (18!:2 X)     -: 18!:2 q
(mbxcheck_jmf_ q), (Y 18!:2 X)   -: r 18!:2 q
(mbxcheck_jmf_ q), (18!:2 X)     -: 18!:2 q
(mbxcheck_jmf_ q), (18!:55 X)    -: 18!:55 q

18!:55 Y


NB. 128!: ---------------------------------------------------------------

q=: X=: _306674912;1234567
Y=: 'assiduously avoid any and all asinine alliterations'
(X 128!:3 Y) -: q 128!:3 Y
mbxcheck_jmf_ q


1 [ unmap_jmf_ 'q'
1 [ unmap_jmf_ 'r'

4!:55 ;:'f f1 g j k mean q r t X Y'



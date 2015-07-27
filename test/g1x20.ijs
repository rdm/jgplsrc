NB. 1!:20 ---------------------------------------------------------------

dir   =. 1!:0
write =. 1!:2
files =. 1!:20
open  =. 1!:21
close =. 1!:22
erase =. 1!:55

X=. 9!:12 ''
win =. X e. 2 6
mac =. X e. 3
unix=. X e. 5 7
pc  =. X e. 0 1 2 6

f =. <'foo.X'
g =. <'g'

(128$'a') write f
h =. open f
h -: open f
h -: open h
h -: open <h
h e. >{."1 files ''
erase h
(214$'triskaidekaphobic') write g
q =. files ''
h =. open <'non1such.X'
erase g,<'non1such.X'
q -: files ''

0~:open g
close g
q -: files ''
erase g

d =. ({. ~ 5: <. #) {."1 dir mac{'../js/*.*';'::js:'
h =. open (<(unix#''),(pc#'../js/'),mac#':temp:'),&.>d
h e. >{."1 files ''
q e. files ''
close h
q -: files ''

X -: open X=.''
X -: open X=.i.0 1 2
X -: open X=.0 1 2$a:

X -: close X=.''
X -: close X=.i.0 1 2
X -: close X=.0 1 2$a:

'domain error'      -: open  etx 'a'
'domain error'      -: open  etx 'abc'
'domain error'      -: open  etx 3.45
'domain error'      -: open  etx <3.45
'domain error'      -: open  etx 3j4
'domain error'      -: open  etx <3j4

'rank error'        -: open  etx <3 4$'a'
'rank error'        -: open  etx <21 31

'length error'      -: open  etx <''
'length error'      -: open  etx <i.0

'file number error' -: open  etx 0
'file number error' -: open  etx 1
'file number error' -: open  etx 2
'file number error' -: open  etx 3 4 5
'file number error' -: open  etx 0;1;0
'file number error' -: open  etx 3;4;5

t=.(pc#'does\not\exist\no.X'),(mac#':does:not:exist:no.X'),unix#'does/not/exist/no.X'
'file name error'   -: open  etx <t

'domain error'      -: close etx 'abc'
'domain error'      -: close etx 3.45
'domain error'      -: close etx <3.45
'domain error'      -: close etx 3j4 
'domain error'      -: close etx <3j4 

'rank error'        -: close etx <1 4$'a'
'rank error'        -: close etx <21 31

'length error'      -: close etx <''
'length error'      -: close etx <i.0

'file number error' -: close etx 0 
'file number error' -: close etx 1
'file number error' -: close etx 2
'file number error' -: close etx 0 1
'file number error' -: close etx i.2 4
'file number error' -: close etx 12345 12346
'file number error' -: close etx 0;1;0
'file number error' -: close etx 4;5;6

4!:55 ;:'close d dir erase f files g h mac open pc q t unix win write X'



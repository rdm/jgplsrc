#!/bin/sh
#0 :0
 exec j/bin/jconsole "$0" "$@"
)
onfail_z_=:3 :0
  1!:2&2 ARGV
  1!:2&2]13!:12'' NB. display error message
  2!:55>:13!:11'' NB. exit with 1 origin error number
)
9!:27 'onfail 1'
9!:29]0

load 'test/test.ijs'
bad=: TEST ddall
echo 70#'-'
echo BAD ddall
echo 70#'-'

TESTX (-.bad)#ddall

exit -.*/bad

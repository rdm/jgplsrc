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
3 :0''
  if. 2=#ARGV do.
    bad=: TEST ddall
    echo 70#'-'
    echo BAD ddall
    echo 70#'-'

    13!:0]1
    TESTX (-.bad)#ddall

    exit -.*/bad
  else.
    13!:0]1
    exit -.*/TESTX SNS ;:inv 2}.ARGV
  end.
)

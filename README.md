obsolete: please use github.com/jsoftware/jsource

jgplsrc
=======

initially derived from http://www.jsoftware.com/download/j701_b_source.tar.gz

PLAN:

* change build procedure. Want:
  ./configure && make && sudo make install
  do not want libtool - keep external dependencies to a minimum
  ./configure should support openbsd, linux, osx, cygwin/mingw
  first need to support native, cross compile support can be later (much harder because of testing issues)

* get build and test to work on openbsd
  deal with all the warnings

  initially:
  * ignore *t.ijt tests and focus on the rest
  * strip out code (such as current 8!:) which needs to be rebuilt
  * also strip out the tests
  * plan to later re-implement as native J

* when making major changes, introduce a new branch and leave comments about parentage and likely current stage of work and eventual merge targets in readme.md

: die type cr 1 sys:exit ;

\ TODO: print line number and source code from parse buffer
: assert 0= if s" assertion failed" die then ;

0 constant cond immediate
: thens begin ?dup while postpone then repeat ; immediate

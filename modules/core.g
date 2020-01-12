: \ $0a parse 2drop ; immediate
: ( ')' parse 2drop ; immediate
: postpone ' compile, ; immediate
: s" '"' parse swap postpone literal postpone literal ; immediate
: bl $20 ;
: cell+ 4 + ;
: cells 4 * ;
: char+ 1+ ;
: chars ;
: char parse-name drop c@ ;
: variable create 1 cells allot ;
: exit $c3 c, ; immediate
: 0= 0 = ;
: 0< 0 < ;
: 0> 0 > ;
: 0<> 0 = invert ;
: dec #10 base ! ;
: hex #16 base ! ;
: 1+ 1 + ;
: 1- 1 - ;
: [ 0 state ! ; immediate
: ] -1 state ! ; immediate
: :noname here postpone ] ; immediate

main :-
   make_module(foo),
   !,
   foo:a(X),
   write(X), nl,
   fail.
main.

make_module(M) :-
   module$(M),
   assert( M:a(1) ),
   assert( M:a(2) ),
   end_module$(M).

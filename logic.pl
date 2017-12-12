:-style_check(-singleton).

%
%  Predicate definitions
%  

nand(X, Y, Z):- and(X, Y, Q), not(Q, Z).

nor(X, Y, Z):- or(X, Y, Q), not(Q, Z).

xor(X, Y, Z):- nand(X, Y, Q), or(X, Y, P), and(Q, P, Z).

%
%  Predicate facts
%

not(1, 0).
not(0, 1).

and(0, 0, 0).
and(0, 1, 0).
and(1, 0, 0).
and(1, 1, 1).

or(0, 0, 0).
or(0, 1, 1).
or(1, 0, 1).
or(1, 1, 1).
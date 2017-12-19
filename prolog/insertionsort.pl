insert(X, [], [X]).
insert(X, [Head|Tail], [Head|Rest]):- X > Head, insert(X, Tail, Rest).
insert(X, [Head|Tail], [X, Head|Tail]):- X =< Head.

insertionsort([], []).
insertionsort(L, L).
insertionsort([X|L1], L2):- insert(X, L, L2), insertionsort(L1, L).